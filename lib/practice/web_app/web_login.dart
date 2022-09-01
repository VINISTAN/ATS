import 'package:flutter/material.dart';
// import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:email_validator/email_validator.dart';

import '../collapsiblesidebar.dart';
// import 'package:get/get.dart';

class WebLoginPage extends StatefulWidget {
  const WebLoginPage({Key? key}) : super(key: key);

  @override
  State<WebLoginPage> createState() => _WebLoginPageState();
}

class _WebLoginPageState extends State<WebLoginPage> {
  bool _obscureText = true;
  late String _password;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController email_controller = new TextEditingController();


  @override
  void dispose() {
    email_controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                flex: 5,
                child: Container(
                  height: height,
                  width: width / 1.5,
                  child: FittedBox(
                    child: Image.asset('assets/images/web_login_img.png'),
                    fit: BoxFit.fill,
                  ),
                )),
            Expanded(
                flex: 4,
                child: Center(
                  child: Form(
                    key: formkey,
                    child: Container(
                      height: height,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 60, right: 60),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: height / 10,
                            ),
                            Container(
                              height: height / 10,
                              width: width / 5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(45),
                                child: Image.asset('assets/images/user.png'),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Center(
                              child: Text("Login",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                children: [
                                  TextFormField(
                                    controller : email_controller,
                                    keyboardType: TextInputType.emailAddress,
                                    autofillHints: [AutofillHints.email],
                                    validator: (email) => email!=null && !EmailValidator.validate(email)?'Enter valid email' : null,
                                    decoration: InputDecoration(
                                        hintText: 'E-mail',
                                        labelText: 'E-mail',
                                        border: OutlineInputBorder(),
                                        suffixIcon: Icon(Icons.email)),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextFormField(
                                    obscureText: _obscureText,
                                    onSaved: (val) =>
                                        _password = val.toString(),
                                    validator: (password) => password!=null && password.isEmpty ? 'Password should not be empty' : null,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: 'Password',
                                        labelText: 'Password',
                                        suffixIcon: IconButton(
                                          icon: Icon(_obscureText
                                              ? Icons.visibility
                                              : Icons.visibility_off),
                                          onPressed: () {
                                            setState(() {
                                              _obscureText = !_obscureText;
                                            });
                                            print("Inside onpressed");
                                          },
                                        )),
                                  ),
                                  SizedBox(
                                    height: height / 40,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Recovery Password",
                                            style:
                                                TextStyle(color: Colors.blue),
                                          ))
                                    ],
                                  ),
                                  SizedBox(
                                    height: height / 40,
                                  ),
                                  Container(
                                      height: height / 15,
                                      width: width,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          final form = formkey.currentState!;
                                          if(form.validate()){
                                            final email = email_controller.text;
                                            print(email);
                                            var route = new MaterialPageRoute(builder: (BuildContext context) => new datagrid(value : email_controller.text));
                                            Navigator.of(context).push(route);
                                            // Navigator.push(
                                            //     context,
                                            //     MaterialPageRoute(builder: (context) => const datagrid(value: email_controller.text,)));
                                          }
                                          // var route = new MaterialPageRoute(builder: (BuildContext context) => new datagrid(value : email_controller.text));
                                          // Navigator.of(context).push(route);
                                        },
                                        child: Text(
                                          "Login",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
