import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation_app/views/Home%20screen/Home.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyCk_V-wh74YfWsg9ui3k5SfLMngJwfrzMA",
        appId: "1:796576658978:android:0be26ebd4022137fba3c7b",
        messagingSenderId: "796576658978",
        projectId: "meditation-app-22821"
    )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
      ),
      home: const Home()
    );
  }
}

