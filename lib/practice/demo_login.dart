import'package:flutter/material.dart';

class MyLogin extends StatelessWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height;
    double mywidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child : Container(
          height: myheight,
          width: mywidth,
          color: Colors.green,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                       crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text("Login",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 35
                        ),
                        ),
                        SizedBox(height: myheight/70,),
                        Text("Welcome back",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 15
                          ),
                        )
                      ],
                    ),
                  )
              ),
              Expanded(
                  flex: 5,
                  child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(45),
                      topLeft: Radius.circular(45)
                    )
                  ),
                    child: Column(
                      children: [
                        SizedBox(height: myheight/30,),
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Container(
                            height: myheight/6.2,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.4),
                                      blurRadius: 20,
                                      spreadRadius: 10,
                                      offset: const Offset(0, 10)
                                  ),
                                ]
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                        hintText: "User Name"
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border : InputBorder.none,
                                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                      hintText: "Password"
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: myheight/60,),
                        Container(
                          height: myheight/20,
                          width: mywidth/1.5,

                          child:
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.green,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                            onPressed: (){},
                            child: Text("Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15
                              ) ,
                            ),
                          ),
                        ),
                        SizedBox(height: myheight/80,),
                        TextButton(
                            onPressed: (){},
                            child: Text("Login in SNS",
                              style: TextStyle(
                                color: Colors.green
                              ),
                            )
                        ),
                        SizedBox(height: myheight/80,),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: myheight/20,
                                width: mywidth/3,

                                child:
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blue,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                  ),
                                  onPressed: (){},
                                  child: Text("Facebook",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15
                                    ) ,
                                  ),
                                ),
                              ),
                              Container(
                                height: myheight/20,
                                width: mywidth/3,

                                child:
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                  ),
                                  onPressed: (){},
                                  child: Text("GitHub",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15
                                    ) ,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        )
      )
    );
  }
}
