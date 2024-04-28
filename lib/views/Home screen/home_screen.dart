import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation_app/consts/colors.dart';
import 'package:meditation_app/consts/consts.dart';
import 'package:meditation_app/consts/lists.dart';
import 'package:meditation_app/views/Home%20screen/see_all.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imgbackground,fit: BoxFit.cover,width: double.infinity,),
            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "Popular".text.bold.size(20).make().px12(),
                TextButton(onPressed: (){
                  Get.to(()=>SeeAll());
                }, child: "See All".text.color(Colors.blue).make())
              ],
            ),
           
            //Swipper
            VxSwiper.builder(
                aspectRatio: 16/9,
                enlargeCenterPage: true,
                height: 180,
                itemCount: sliderList.length,
                viewportFraction: 0.8,
                itemBuilder: (context,index){
                  return Image.asset(sliderList[index],
                    fit: BoxFit.fill,
                  ).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make();
                }),
            15.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "New".text.bold.size(20).make().px12(),
                TextButton(onPressed: (){
                  Get.to(()=>SeeAll());
                }, child: "See All".text.color(Colors.blue).make())
              ],
            ),
            VxSwiper.builder(
                aspectRatio: 16/9,
                enlargeCenterPage: true,
                height: 180,
                itemCount: sliderList1.length,
                viewportFraction: 0.8,
                itemBuilder: (context,index){
                  return Image.asset(sliderList1[index],
                    fit: BoxFit.fill,
                  ).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make();
                })
          ],

        ),
      )
    );
  }
}
