//import 'dart:html';

//import 'package:crt_project/view/Login/splash_screen.dart';
import'package:flutter/material.dart';
import'package:sql_conn/sql_conn.dart';
import 'dart:async';
import 'dart:convert';

class DemoAppBar extends StatefulWidget {
  const DemoAppBar({Key? key}) : super(key: key);

  @override
  State<DemoAppBar> createState() => _DemoAppBarState();
}

class _DemoAppBarState extends State<DemoAppBar> {
   String ? selected_value;
  List DropdownList = [];
  Future<void> read(String query) async {
    var res = await SqlConn.readData(query);
    var jsondata = json.decode(res);
    print(jsondata);
    print(res);
    print(DropdownList);
    setState((){
      DropdownList = jsondata;
      print(DropdownList);
    });
  }
  Future<void> connect(BuildContext ctx) async {
    debugPrint("Connecting...");
    try {
      showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            title: Text("LOADING"),
            content: CircularProgressIndicator(),
          );
        },
      );
      await SqlConn.connect(
          ip: "192.168.0.195",
          port: "1433",
          databaseName: "myproject",
          username: "vinistan",
          password: "AmmaAppaAkka@464");
      debugPrint("Connected!");
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      Navigator.pop(context);
    }
  }
  @override
  void initState() {
    super.initState();
    //connect(context);
    //read('Select name from users');
    //selected_value = '';
  }


  @override
  Widget build(BuildContext context) {

    // Future<void> read(String query) async {
    //   var res = await SqlConn.readData(query);
    //   var jsondata = json.decode(res);
    //    // print(jsondata);
    //    // print(res);
    //    print(DropdownList);
    //    setState((){
    //      DropdownList = jsondata;
    //    });
    //   //res.toString() = new Map();
    //   //print(res);
    //
    //  // List <res> names = res.tolist();
    //   //var result = res;
    //   // setState((){
    //   //   DropdownList = res.toString() as List;
    //      //print("Available names = ${DropdownList.map((users) => users['name'])}");
    //   // });
    //
    // }


    Future<void> write(String query) async {
      var res = await SqlConn.writeData(query);
      debugPrint(res.toString());
    }


    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text("Welcome"),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () => connect(context),
                child: const Text("Connect")),
            ElevatedButton(
                onPressed: () {
                  read("SELECT name from user");
                } ,
                child: const Text("Read")),
            ElevatedButton(
                onPressed: () => read("select name from users"),
                child: const Text("Write")),
            ElevatedButton(
                onPressed: () => write(
                    "CREATE TABLE Persons (PersonID int, LastName varchar(255), FirstName varchar(255), Address varchar(255),City varchar(255))"),
                child: const Text("Create Table")),
            ElevatedButton(
                onPressed: () => write(
                    "DROP TABLE Persons"),
                child: const Text("Delete Table")),
            ElevatedButton(
                onPressed: () => SqlConn.disconnect(),
                child: const Text("Disconnect")),
            DropdownButton(
              hint: Text("--Select Value--"),
              value: selected_value,
                items: DropdownList.map((users){
                  return DropdownMenuItem(
                    value: users['name'],
                      child:
                      //Text("vini")
                      Text(users['name'])
                  );
                }).toList(),
                onChanged: (value){
                setState((){
                  print("before selected : $selected_value");
                  selected_value = value.toString();
                  print("after selected : $selected_value");
                });
                })
          ],
        ),
      ),
    );
  }
}
