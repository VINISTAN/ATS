import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import '../collapsiblesidebar.dart';
import 'dropdown_list.dart';

class AddEmployee extends StatefulWidget {
  const AddEmployee({Key? key}) : super(key: key);

  @override
  State<AddEmployee> createState() => _AddEmployeeState();
}

class _AddEmployeeState extends State<AddEmployee> {
  DateTime? _startdate;
  DateTime? _dateofjoin;
  String? selectedValue;
  String? radioButtonItem;
  int? id;

  final List<String> items = [
    'Married',
    'Single',
  ];

  _displayStartText() {
    if (_startdate == null) {
      return "dd/mm/yy";
    } else
      return '${_startdate?.day}/${_startdate?.month}/${_startdate?.year}';
  }
  _dateofJoiningText() {
    if (_dateofjoin == null) {
      return "dd/mm/yy";
    } else
      return '${_dateofjoin?.day}/${_dateofjoin?.month}/${_dateofjoin?.year}';
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: AlertDialog(
        title: Container(
          height: height / 1.2,
          width: width,
          child: Column(
            children: [
              Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  icon: Icon(Icons.arrow_back),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const datagrid()));
                                  },
                                ),
                                SizedBox(
                                  width: width / 30,
                                ),
                                Text(
                                  'ADD EMPLOYEE',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                    height: height / 20,
                                    width: width / 10,
                                    color: Colors.white54,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white54
                                      ),
                                        onPressed: () {
                                          showDialog(context: context, builder: (context) =>
                                          ConfirmationDialogBox()
                                          );
                                        },
                                        child: Text('CANCEL',style: TextStyle(color: Colors.black),))),
                                SizedBox(
                                  width: width / 50,
                                ),
                                Container(
                                    height: height / 20,
                                    width: width / 10,
                                    child: ElevatedButton(
                                        onPressed: () {
                                          print("Inside Snackbar");
                                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                            content: Container(
                                              height: height/30,
                                                child: Text("Details saved successfully",style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold),)),
                                            duration: Duration(milliseconds: 900),
                                          ));
                                          // SnackBar(
                                          //   content: Text("Details Saved Successfully"),
                                          // );
                                        }, child: Text('SAVE'))),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: height / 2.4,
                        width: width,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: height / 2.3,
                              width: width / 3.3,
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 5, right: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Basic Information",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: width / 3.5,
                                        child: Divider(),
                                      ),
                                      Text(
                                        "Employee Id",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(
                                        height: height / 90,
                                      ),
                                      Container(
                                        height: height / 20,
                                        width: width / 10,
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Center(
                                            child: Text(
                                          "123456",
                                          style: TextStyle(fontSize: 15),
                                        )),
                                      ),
                                      SizedBox(
                                        height: height / 60,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: height / 15,
                                            width: width / 7,
                                            child: TextFormField(
                                                decoration: InputDecoration(
                                                    border:
                                                        OutlineInputBorder(),
                                                    hintText: 'First Name',
                                                    labelText: 'First Name')),
                                          ),
                                          Container(
                                            height: height / 15,
                                            width: width / 7,
                                            child: TextFormField(
                                                decoration: InputDecoration(
                                                    border:
                                                        OutlineInputBorder(),
                                                    hintText: 'Last Name',
                                                    labelText: 'Last Name')),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: height / 60,
                                      ),
                                      Container(
                                        height: height / 15,
                                        width: width,
                                        child: TextFormField(
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                hintText: 'Email',
                                                labelText: 'Email')),
                                      ),
                                      SizedBox(
                                        height: height / 60,
                                      ),
                                      Container(
                                        height: height / 15,
                                        width: width,
                                        child: TextFormField(
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                hintText: 'Phone no',
                                                labelText: 'Phone no')),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(right: 15),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Personal Details",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: width / 3.5,
                                      child: Divider(),
                                    ),
                                    Container(
                                      height: height/2.9,
                                      width: width/3.2,
                                      child: SingleChildScrollView(
                                        child: Padding(
                                          padding: const EdgeInsets.only(right : 12),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children : [
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                                children: [
                                                  Text("Date of Birth",
                                                      style: TextStyle(
                                                        fontSize: 15,
                                                      )),
                                                  Text("Maritial Status",
                                                      style: TextStyle(
                                                        fontSize: 15,
                                                      ))
                                                ],
                                              ),
                                              SizedBox(
                                                height: height / 60,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Container(
                                                    height: height / 15,
                                                    width: width / 8,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.grey),
                                                        borderRadius:
                                                        BorderRadius.circular(5)),
                                                    child: ElevatedButton.icon(
                                                      style: ElevatedButton.styleFrom(
                                                          primary: Colors.white,
                                                          shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                  5))),
                                                      onPressed: () async {
                                                        final startdate =
                                                        await showDatePicker(
                                                            context: context,
                                                            initialDate:
                                                            DateTime.now(),
                                                            firstDate:
                                                            DateTime(1950),
                                                            lastDate:
                                                            DateTime(2200));
                                                        if (startdate != null) {
                                                          _startdate = startdate;
                                                        }
                                                        setState(() {
                                                          print((_startdate)
                                                              .toString());
                                                        });
                                                      },
                                                      icon: Icon(
                                                        Icons.calendar_today,
                                                        color: Colors.black,
                                                      ),
                                                      label: Text(
                                                        _displayStartText(),
                                                        style: TextStyle(
                                                            color: Colors.black),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                      height: height / 15,
                                                      width: width / 8,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.grey),
                                                          borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                      child: Padding(
                                                        padding:
                                                        const EdgeInsets.all(8.0),
                                                        child:
                                                        DropdownButtonHideUnderline(
                                                          child: DropdownButton2(
                                                            hint: Text(
                                                              "Maritial Status",
                                                              style: TextStyle(
                                                                  fontSize: 12),
                                                            ),
                                                            items: items
                                                                .map((item) =>
                                                                DropdownMenuItem<
                                                                    String>(
                                                                  value: item,
                                                                  child: Text(
                                                                    item,
                                                                    style:
                                                                    const TextStyle(
                                                                      fontSize:
                                                                      14,
                                                                    ),
                                                                  ),
                                                                ))
                                                                .toList(),
                                                            value: selectedValue,
                                                            onChanged: (value) {
                                                              setState(() {
                                                                selectedValue =
                                                                value as String;
                                                              });
                                                            },
                                                            buttonHeight: height / 10,
                                                            buttonWidth: width / 5,
                                                            itemHeight: height / 10,
                                                          ),
                                                        ),
                                                      ))
                                                ],
                                              ),
                                              SizedBox(
                                                height: height / 60,
                                              ),
                                              Text(
                                                'Gender',
                                                style: TextStyle(fontSize: 15),
                                              ),
                                              SizedBox(
                                                height: height / 80,
                                              ),
                                              Row(
                                                children: [
                                                  Transform.scale(
                                                    scale: 0.5,
                                                    child: Radio(
                                                      value: 1,
                                                      groupValue: id,
                                                      onChanged: (val) {
                                                        setState(() {
                                                          radioButtonItem = 'Male';
                                                          id = 1;
                                                        });
                                                      },
                                                    ),
                                                  ),
                                                  Text(
                                                    'Male',
                                                    style:
                                                    new TextStyle(fontSize: 15.0),
                                                  ),
                                                  Transform.scale(
                                                    scale: 0.5,
                                                    child: Radio(
                                                      value: 2,
                                                      groupValue: id,
                                                      onChanged: (val) {
                                                        setState(() {
                                                          radioButtonItem = 'Female';
                                                          id = 2;
                                                        });
                                                      },
                                                    ),
                                                  ),
                                                  Text(
                                                    'Female',
                                                    style:
                                                    new TextStyle(fontSize: 15.0),
                                                  ),
                                                  Transform.scale(
                                                    scale: 0.5,
                                                    child: Radio(
                                                      value: 3,
                                                      groupValue: id,
                                                      onChanged: (val) {
                                                        setState(() {
                                                          radioButtonItem = 'Other';
                                                          id = 3;
                                                        });
                                                      },
                                                    ),
                                                  ),
                                                  Text(
                                                    'Other',
                                                    style:
                                                    new TextStyle(fontSize: 15.0),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: height / 80),
                                              Text(
                                                "Address",
                                                style: TextStyle(fontSize: 15),
                                              ),
                                              SizedBox(height: height / 80),
                                              Container(
                                                height: height / 15,
                                                width: width,
                                                child: TextFormField(
                                                    decoration: InputDecoration(
                                                        border: OutlineInputBorder(),
                                                        labelText: 'Address 1')),
                                              ),
                                              SizedBox(height: height / 80),
                                              Container(
                                                height: height / 15,
                                                width: width,
                                                child: TextFormField(
                                                    decoration: InputDecoration(
                                                        border: OutlineInputBorder(),
                                                        labelText: 'Address 2')),
                                              ),
                                              SizedBox(height: height / 80),
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Container(
                                                    height: height / 15,
                                                    width: width / 8,
                                                    child: TextFormField(
                                                        decoration: InputDecoration(
                                                            border:
                                                            OutlineInputBorder(),
                                                            labelText: 'City')),
                                                  ),
                                                  Container(
                                                    height: height / 15,
                                                    width: width / 8,
                                                    child: TextFormField(
                                                        decoration: InputDecoration(
                                                            border:
                                                            OutlineInputBorder(),
                                                            labelText: 'Pincode')),
                                                  ),
                                                ],
                                              )
                                            ]
                                          ),
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 2.7,
                                width: width / 3.5,
                                child: Padding(
                                  padding: EdgeInsets.all(0.5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Identity Information",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: width / 3.5,
                                        child: Divider(),
                                      ),
                                      Text(
                                        "PAN Card Number",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      SizedBox(
                                        height: height / 80,
                                      ),
                                      Container(
                                        height: height / 15,
                                        width: width,
                                        child: TextFormField(
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'PAN Number')),
                                      ),
                                      SizedBox(
                                        height: height / 60,
                                      ),
                                      Text(
                                        "Aadhar Card Number",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      SizedBox(
                                        height: height / 60,
                                      ),
                                      Container(
                                        height: height / 15,
                                        width: width,
                                        child: TextFormField(
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'Aadhar Number')),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
              Expanded(
                  flex: 4,
                  child: Container(
                    height: height,
                    width: width,

                    child: Row(
                      children: [
                        Expanded(
                          flex: 8,
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Work experience",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                SizedBox(width: width/1.6,child: Divider(),),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                        child: Container(
                                      height: height / 4,
                                      width: width / 3,
                                      child: SingleChildScrollView(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Department",
                                                style: TextStyle(fontSize: 15),
                                              ),
                                              SizedBox(
                                                height: height / 90,
                                              ),
                                              Container(
                                                  width: width / 6,
                                                  height: height / 15,
                                                  child: DepartmentDropdown()),
                                              SizedBox(
                                                height: height / 90,
                                              ),
                                              Text(
                                                "Designation",
                                                style: TextStyle(fontSize: 15),
                                              ),
                                              SizedBox(
                                                height: height / 90,
                                              ),
                                              Container(
                                                  width: width / 6,
                                                  height: height / 15,
                                                  child: DesignationDropdown()),
                                              SizedBox(
                                                height: height / 90,
                                              ),
                                              Text(
                                                "Location",
                                                style: TextStyle(fontSize: 15),
                                              ),
                                              SizedBox(
                                                height: height / 90,
                                              ),
                                              Container(
                                                  width: width / 6,
                                                  height: height / 15,
                                                  child: LocationDropdown()),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )),
                                    Expanded(
                                        child: Container(
                                      height: height / 4,
                                      width: width / 3,
                                      child: SingleChildScrollView(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Employment Type",
                                                style: TextStyle(fontSize: 15),
                                              ),
                                              SizedBox(
                                                height: height / 90,
                                              ),
                                              Container(
                                                  width: width / 6,
                                                  height: height / 15,
                                                  child: EmptypeDropdown()),
                                              SizedBox(
                                                height: height / 90,
                                              ),
                                              Text(
                                                "Employment Status",
                                                style: TextStyle(fontSize: 15),
                                              ),
                                              SizedBox(
                                                height: height / 90,
                                              ),
                                              Container(
                                                  width: width / 6,
                                                  height: height / 15,
                                                  child: EmpStatusDropdown()),
                                              SizedBox(
                                                height: height / 90,
                                              ),
                                              Text(
                                                "Current Experience",
                                                style: TextStyle(fontSize: 15),
                                              ),
                                              SizedBox(
                                                height: height / 90,
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Container(
                                                    height : height/15,
                                                    width : width/11,
                                                    child: TextField(
                                                      decoration: InputDecoration(
                                                        border: OutlineInputBorder(),
                                                        hintText: "Year",
                                                        labelText: "Year(s)"
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height : height/15,
                                                    width : width/11,
                                                    child: TextField(
                                                      decoration: InputDecoration(
                                                          border: OutlineInputBorder(),
                                                        hintText: "Month",
                                                        labelText: "Month(s)"
                                                    ),),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    )),
                                    Expanded(
                                        child: Container(
                                      height: height / 4,
                                      width: width / 3,
                                      child: SingleChildScrollView(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Date of Joining",style: TextStyle(fontSize: 15),),
                                              SizedBox(height: height/60,),
                                              Container(
                                                height: height / 15,
                                                width: width / 6,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.grey),
                                                    borderRadius:
                                                    BorderRadius.circular(5)),
                                                child: ElevatedButton.icon(
                                                  style: ElevatedButton.styleFrom(
                                                      primary: Colors.white,
                                                      shape:
                                                      RoundedRectangleBorder(
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(
                                                              5))),
                                                  onPressed: () async {
                                                    final joindate =
                                                    await showDatePicker(
                                                        context: context,
                                                        initialDate:
                                                        DateTime.now(),
                                                        firstDate:
                                                        DateTime(1950),
                                                        lastDate:
                                                        DateTime(2200));
                                                    if (joindate != null) {
                                                      _dateofjoin = joindate;
                                                    }
                                                    setState(() {
                                                      print((_dateofjoin)
                                                          .toString());
                                                    });
                                                  },
                                                  icon: Icon(
                                                    Icons.calendar_today,
                                                    color: Colors.black,
                                                  ),
                                                  label: Text(
                                                    _dateofJoiningText(),
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child:
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Hierarchy Information",style : TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                              Divider(),
                              Container(
                                height: height/4,
                                width: width/3,
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Reporting Manager",style: TextStyle(fontSize: 15),),
                                      SizedBox(
                                        height: height / 90,
                                      ),
                                      Container(
                                          width: width / 6,
                                          height: height / 15,
                                          child: ReportingManagerDropdown()),
                                      SizedBox(
                                        height: height / 90,
                                      ),
                                      Text("Lead",style: TextStyle(fontSize: 15),),
                                      SizedBox(
                                        height: height / 90,
                                      ),
                                      Container(
                                          width: width / 6,
                                          height: height / 15,
                                          child: LeadDropdown()),
                                      SizedBox(
                                        height: height / 90,
                                      ),
                                      Text("Recruiter",style: TextStyle(fontSize: 15),),
                                      SizedBox(
                                        height: height / 90,
                                      ),
                                      Container(
                                          width: width / 6,
                                          height: height / 15,
                                          child: RecruiterDropdown()),
                                    ],
                                  ),
                                ),
                              ),
                            ],

                          ),
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class ConfirmationDialogBox extends StatefulWidget {
  const ConfirmationDialogBox({Key? key}) : super(key: key);

  @override
  State<ConfirmationDialogBox> createState() => _ConfirmationDialogBoxState();
}

class _ConfirmationDialogBoxState extends State<ConfirmationDialogBox> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return AlertDialog(
      title: Container(
        height: height/5,
        width: width/4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white60
        ),
        child: Column(
          children: [
            Text("Do you want to exit.??"),
            SizedBox(
              height: height/60,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                  primary: Colors.grey
              ),
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const datagrid()));
                  }, child: Text("Exit")),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.blue),
                      onPressed: (){
                        Navigator.pop(context,'');
                      }, child: Text("Cancel")),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

