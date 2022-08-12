import'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  bool _obscureText = true;

  late String _password;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
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
                            height: myheight/5.5,
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
                                        hintText: "User Name",
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.green),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.green),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    //obscureText: true,
                                    //validator: (val) => val.length < 6 ? 'Password too short.' : null,
                                    onSaved: (val) => _password = val.toString(),
                                    obscureText: _obscureText,
                                    decoration:  InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.green),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.green),
                                        ),
                                        labelText: 'Password',
                                        suffixIcon: IconButton(
                                          icon: Icon(
                                              //Icons.visibility,color:Colors.green
                                              _obscureText ? Icons.visibility : Icons.visibility_off
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              _obscureText = !_obscureText;
                                            });
                                            print("Inside onpressed");
                                          },
                                        )

                                        // icon: const Padding(
                                        //     padding: const EdgeInsets.only(top: 15.0),
                                        //     child: const Icon(Icons.lock))
                                    ),
                                    // decoration: InputDecoration(
                                    //   border : InputBorder.none,
                                    //   contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                    //   hintText: "Password",
                                    //
                                    // ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // SizedBox(height: myheight/60,),
                        // new TextButton(
                        //     onPressed: _toggle,
                        //     child: new Text(_obscureText ? "Show" : "Hide")),
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
