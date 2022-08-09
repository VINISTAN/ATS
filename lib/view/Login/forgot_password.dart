import 'package:crt_project/view/Login/login.dart';
import 'package:crt_project/view/screens/Roles/lead/lead_homepage.dart';
import'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

import '../../Resuable_Widgets/common_textfield.dart';

class ForgotPassward extends StatefulWidget {
  const ForgotPassward({Key? key}) : super(key: key);

  @override
  State<ForgotPassward> createState() => _ForgotPasswardState();
}

class _ForgotPasswardState extends State<ForgotPassward> {
  TextEditingController empid_controller = TextEditingController();
  TextEditingController current_password_controller = TextEditingController();
  TextEditingController new_paddword_controller = TextEditingController();
  TextEditingController confirm_password_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height;
    double mywidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: myheight/25,
            ),
            Container(
              height: myheight/8,
              width: mywidth/1.2,
              child: const Image(
                image: AssetImage("assets/images/crt_logo.JPG"),
              ),
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
            SizedBox(
              height: myheight/40,
            ),
            const Text("FORGOT PASSWARD?",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Container(
                height: myheight/12,
                width: mywidth/1.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Marquee(
                  text: "Here you can change your password! ",
                  style: const TextStyle(
                      fontSize: 20,
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold
                  ),
                ),
          ),
              ),
            ),
             Padding(
              padding:
               EdgeInsets.only(top: 30, left: 30, right: 30),
              child:
              MytextField(label: 'Your Emp ID', hint: 'Emp ID',obscureText: true,textcontroller: empid_controller,)

            ),
             Padding(
              padding:
               EdgeInsets.only(top: 30, left: 30, right: 30),
              child:
              MytextField(label: 'Current Password', hint: 'Current Password',obscureText: true,textcontroller: current_password_controller,)

             ),
             Padding(
              padding:
               EdgeInsets.only(top: 30, left: 30, right: 30),
              child:
              MytextField(label: 'New Password', hint: 'New Password',obscureText: true,textcontroller: new_paddword_controller,)

             ),
             Padding(
              padding:
               EdgeInsets.only(top: 30, left: 30, right: 30),
              child:
              MytextField(label: 'Confirm Password', hint: 'Confirm Password',obscureText: true,textcontroller: confirm_password_controller,)

             ),
            Padding(
                padding:
                 const EdgeInsets.only(top: 30, left: 30, right: 30),
                child: SizedBox(
                  height: myheight / 20,
                  width: mywidth / 1.2,
                  child: ElevatedButton(

                    child:  Text(
                      "  Submit  ",
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
                )
            ),
            Padding(
                padding:
                const EdgeInsets.only(top: 10, left: 30, right: 30),
                child: TextButton(
                  child: const Text("Go to Login"),
                  onPressed: () {
                    print("inside Go to Login");
                    Navigator.push(context, MaterialPageRoute (builder: (context)=>LoginScreen()));
                  },
                )),
        ]
        ),
      )
    );
  }
}
