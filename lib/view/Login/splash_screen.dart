
import 'dart:async';

//import 'package:crt_project/view/Login/user_role.dart';

import 'package:flutter/material.dart';

//import '../screens/Roles/lead/lead_homepage.dart';
//import 'forgot_password.dart';
//import '../screens/Roles/lead/lead_reports/lead_reports.dart';
import '../../practice/Login2.dart';
import '../../practice/demo_login.dart';
import '../../practice/sql_Dropdown.dart';
import 'login.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home : login(),
      //home: DemoAppBar(),
      //home: LeadPage(),
      //home:  SplashScreen(),
      //home : LeadReport()
      //home : LoginScreen(),
    );
  }
}


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=> const LoginScreen()));
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: screenHeight/6,
            width: screenWidth/2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.white),
                image: const DecorationImage(
                    image: AssetImage("assets/images/crt_logo.JPG"),fit: BoxFit.fill
                )
            ),

          ),
          SizedBox(
            height: screenHeight/10,
          ),
          const CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.pinkAccent),
          )
        ],
      ),
    );
  }
}
