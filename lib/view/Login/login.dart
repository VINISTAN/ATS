import 'package:crt_project/view/Login/forgot_password.dart';
import 'package:crt_project/view/screens/Roles/lead/lead_homepage.dart';
import 'package:flutter/material.dart';

import '../../Resuable_Widgets/common_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
    TextEditingController password_controller = TextEditingController();
    TextEditingController username_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height;
    double mywidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: myheight/30,
          ),
          Container(
            height: myheight / 6,
            width: mywidth / 1.5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white),
                image: const DecorationImage(
                    image: AssetImage("assets/images/crt_logo.JPG"),
                    fit: BoxFit.fill)),
          ),
          Container(
            height: myheight / 15,
            width: mywidth / 6,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("assets/images/user.png"),
                    fit: BoxFit.fill)),
          ),
          SizedBox(height: myheight / 40),
          const Text(
            "Login",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: myheight / 2.5,
                width: mywidth,
                decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(2, 2),
                        blurRadius: 30,
                        color: Color.fromRGBO(1, 1, 1, 0.16),
                      )
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Padding(
                      padding:
                          EdgeInsets.only(top: 30, left: 30, right: 30),
                      child: MytextField(label: 'User Name', hint: 'User Name',textcontroller: username_controller,)

                    ),
                     Padding(
                      padding:
                          EdgeInsets.only(top: 20, left: 30, right: 30),
                      child:
                      MytextField(label: 'Password', hint: 'Password',obscureText: true,textcontroller: password_controller,)
                    ),
                    Flexible(
                      child: Padding(
                          padding:
                              const EdgeInsets.only(top: 10, left: 30, right: 30),
                          child: TextButton(
                            child: const Text("Forgot Password?"),
                            onPressed: () {
                              print("inside forgot passward");
                              Navigator.push(context, MaterialPageRoute (builder: (context)=>const ForgotPassward()));
                            },
                          )),
                    ),
                    Flexible(
                      child: Padding(
                          padding:
                              const EdgeInsets.only(top: 10, left: 30, right: 30),
                          child: SizedBox(
                            height: myheight / 20,
                            width: mywidth / 1.5,
                            child: ElevatedButton(
                              child: const Text(
                                "  Login  ",
                                style: TextStyle(fontSize: 20),
                              ),
                              onPressed: () {
                                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=> const LeadPage()));

                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blue,
                                onPrimary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32.0),
                                ),
                              ),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// Container(
// height: myheight/3,
// width: mywidth,
// decoration:  BoxDecoration(
// borderRadius: BorderRadius.circular(50),
// border: Border.all(color: Colors.white),
// image: const DecorationImage(
// image: AssetImage("assets/images/crt_logo.png"),fit: BoxFit.fill
// )
// ),
//
// ),
