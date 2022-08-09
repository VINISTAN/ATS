import 'package:flutter/material.dart';

import 'lead_models/my_containers.dart';

class MyAttendance extends StatelessWidget {
  const MyAttendance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Column(
    children: [
    AttendanceContainer(title: "Attendance Regularization",subtitle: "0",),
    Container(
      height: MediaQuery.of(context).size.height/5,
      width: MediaQuery.of(context).size.width/1.1,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height/60,),

          Text("Attendance Info",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          SizedBox(height: MediaQuery.of(context).size.height/40,),
          Text("Wednesday July 13-2022   06.35 PM",style: TextStyle(fontSize: 15)),
          SizedBox(height: MediaQuery.of(context).size.height/40,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  onPressed: (){
                    print("Inside View swipe");
                  },
                  child: Text("View Swipes",style: TextStyle(fontSize: 15,color: Colors.blue,decoration: TextDecoration.underline),)),
              ElevatedButton(onPressed: (){},
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              side: BorderSide(color: Colors.blue)
                          )
                      )
                  ),
                  child: Text("Attendance")
              )
            ],
          )
        ],
      ),
    ),
    AttendanceContainer(title: "Leave Info",subtitle: "0",),


    ],
    )
    );
    // return Column(
    //   children: [
    //     AttendanceContainer(title: "Attendance Regularization",subtitle: "0",),
    //     AttendanceContainer(title: "Attendance Info",subtitle: "0",content: "Date",),
    //     AttendanceContainer(title: "Leave Info",subtitle: "0",),
    //
    //
    //   ],
    // );
  }
}
