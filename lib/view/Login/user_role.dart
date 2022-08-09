import 'package:flutter/material.dart';

class UserRole extends StatefulWidget {
  const UserRole({Key? key}) : super(key: key);

  @override
  State<UserRole> createState() => _UserRoleState();
}

class _UserRoleState extends State<UserRole> {

  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height;
    double mywidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children:[
          SizedBox(
            height: myheight/10,
          ),
          Center(
            child: Container(
              height: myheight / 6,
              width: mywidth / 1.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/crt_logo.JPG"),
                      fit: BoxFit.fill)),
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
            height: myheight/35,
          ),
           const Text("Welcome ",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),
          ),

          Padding(padding: EdgeInsets.only(left: 20,right: 20,top: 20),
          child: Column(
            children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: myheight/18,
              width: mywidth/1.5,
              child: ElevatedButton(

              child:  Text(
              "  Lead  ",
                style: TextStyle(fontSize: 20),
              ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
          ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: myheight/18,
          width: mywidth/1.5,
          child: ElevatedButton(

            child:  Text(
              "  Recruiter  ",
              style: TextStyle(fontSize: 20),
            ),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: myheight/18,
          width: mywidth/1.5,
          child: ElevatedButton(

            child:  Text(
              "  Admin  ",
              style: TextStyle(fontSize: 20),
            ),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: myheight/18,
          width: mywidth/1.5,
          child: ElevatedButton(

            child:  Text(
              "  BD  ",
              style: TextStyle(fontSize: 20),
            ),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ),
      ),




            ],
          ),
          )

        ],
      )
    );
  }
}
