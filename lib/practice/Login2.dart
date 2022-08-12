import'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: Height,
          width: Width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.purpleAccent,
                    Colors.yellowAccent,
                    Colors.blueAccent
                  ]
              )
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: Height/50,),
                  SizedBox(
                    height: Height /5,
                    width: Width/1.7 ,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/login.jpg'),
                        ),
                        //shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Container(
                    height: Height/1.8,
                    width: Width/1.2,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Column (
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 30,),
                        Text("Hello",
                        style: TextStyle(fontWeight:FontWeight.bold,
                        fontSize: 28, color: Colors.black),),
                        SizedBox(height: 10,),
                        Text("Please Login to Your Account",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),),
                        SizedBox(height: 30,),
                        Container(
                          width: 260,
                          height: 60,
                          child: const TextField(
                            decoration: InputDecoration(
                               suffixIcon: Icon(Icons.email_outlined, color: Colors.red,),
                                // suffix: Icon(FontAwesomeIcons.envelope,color: Colors.red,),
                                labelText: "Email Address",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                )
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: 260,
                          height: 60,
                          child: const TextField(
                            decoration: InputDecoration(
                                suffixIcon: Icon(FontAwesomeIcons.eyeSlash, color: Colors.red,),
                                labelText: "Pass Word",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                )
                            ),
                          ),
                        ),
                        Padding(
                         padding:const EdgeInsets.fromLTRB(20, 0, 45, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: (){},
                                child:const Text("Forget Password",
                                  style: TextStyle( fontSize: 15,
                                      color: Colors.redAccent
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                     Container(
                     height: 50,
                       width: 260,
                       child: ElevatedButton(
                         style: ElevatedButton.styleFrom(
                        primary: Colors.purple,
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(20), // <-- Radius
                           ),
                         ),
                       onPressed:() {},
                           child: Text("Login"),
                     ),
                     ),
                        SizedBox(height: 10,),
                        Container(
                          child: Text("Or Login Using Social Media Account",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 40,right: 40),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              IconButton(onPressed: (){}, icon:Icon( FontAwesomeIcons.facebook, color: Colors.blue,)),
                              IconButton(onPressed: (){}, icon:Icon( FontAwesomeIcons.google, color: Colors.redAccent,)),
                              IconButton(onPressed: (){}, icon:Icon( FontAwesomeIcons.twitter, color: Colors.yellow,)),
                              IconButton(onPressed: (){}, icon:Icon( FontAwesomeIcons.linkedin, color: Colors.green,))
                             ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
            ),
          ),
        ),
      ),
    );
  }
}


