import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:meditation_app/consts/consts.dart';
import 'package:meditation_app/controllers/home_controller.dart';
import 'package:meditation_app/views/Home%20screen/home_screen.dart';
import 'package:meditation_app/views/Lessons%20screen/lesson_screen.dart';
import 'package:meditation_app/views/Profile%20screen/profile_screen.dart';
import 'package:meditation_app/views/meditation%20screen/meditation_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    var navbarItem = [
      BottomNavigationBarItem(
          icon: Icon(Icons.home,size: 30,),
          label: ""),
      BottomNavigationBarItem(
          icon: Icon(Iconsax.book_1,size: 30),
          label: ""),
      BottomNavigationBarItem(
          icon: Icon(Icons.ac_unit_outlined,size: 30),
          label: ""),
      BottomNavigationBarItem(
          icon: Icon(Icons.person,size: 30),
          label: ""),
    ];

    var navBody = [
      HomeScreen(),
      LessonScreen(),
      MeditationScreen(),
      ProfileScreen(),
    ];
    return Scaffold(
      body: Column(
        children: [
          Obx(() => Expanded(
              child: navBody.elementAt(controller.currentNavIndex.value))),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          backgroundColor: whiteColor,
          type: BottomNavigationBarType.fixed,
          items: navbarItem,
          onTap: (value) {
            controller.currentNavIndex.value = value;
          },
        ),
      ),
    );
  }
}
