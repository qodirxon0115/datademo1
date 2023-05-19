import 'package:datademo2/pages/home_page.dart';
import 'package:datademo2/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

void main() async{

  await GetStorage.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        SignUpPage.id: (context) => const SignUpPage(),
        HomePage.id: (context) => const HomePage(),
      },
    );
  }
}
