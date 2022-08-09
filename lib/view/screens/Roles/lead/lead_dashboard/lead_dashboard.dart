/*
This is Leader Dashboard (Home Page)
 */



import 'package:flutter/material.dart';

import 'lead_models/my_rows.dart';
import 'attendance.dart';
import 'lead_models/my_containers.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with TickerProviderStateMixin {
  DateTime? _startdate;
  DateTime? _enddate;



  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height;
    double mywidth = MediaQuery.of(context).size.width;
    TabController _tabcontroller = TabController(length: 2, vsync: this);
    _displayStartText() {
      if (_startdate == null) {
        return "dd/mm/yy";
      } else
        return '${_startdate?.day}/${_startdate?.month}/${_startdate?.year}';
    }

    _displayEndText() {
      if (_enddate == null) {
        return "dd/mm/yy";
      } else
        return '${_enddate?.day}/${_enddate?.month}/${_enddate?.year}';
    }

    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){return MyAttendance();}));
                print("Inside attendance");
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  primary: Colors.blue),
              child: Text(
                "Attendance",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          SizedBox(height: myheight / 50),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("From"),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  )
                ),
                onPressed: () async {
                  final startdate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2022),
                      lastDate: DateTime(2200));
                  if (startdate != null) {
                    _startdate = startdate;
                  }
                  setState(() {
                    print((_startdate).toString());
                  });
                },
                icon: Icon(Icons.calendar_today),
                label: Text(_displayStartText()),
              ),
              Text("To"),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  )
                ),
                onPressed: () async {
                  final endDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2022),
                      lastDate: DateTime(2200));
                  if (endDate != null) {
                    _enddate = endDate;
                  }
                  setState(() {
                    print((_enddate).toString());
                  });
                },
                icon: Icon(Icons.calendar_today),
                label: Text(_displayEndText()),
                //child: Text("${end.day}/${end.month}/${end.year}")),
              ),
            ],
          ),
          Container(
            height: myheight/7,
            width: mywidth/1.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  children: [
                    MyContainer(text: "Demand", subtext: "0"),
                    SizedBox(
                      width: mywidth / 25,
                    ),
                    MyContainer(text: "Submission", subtext: "0"),
                    SizedBox(
                      width: mywidth / 25,
                    ),
                    MyContainer(text: "L1 Selected", subtext: "0"),
                    SizedBox(
                      width: mywidth / 25,
                    ),
                    MyContainer(text: "L2 Selected", subtext: "0"),
                    SizedBox(
                      width: mywidth / 25,
                    ),
                    MyContainer(text: "Offered", subtext: "0"),
                    SizedBox(
                      width: mywidth / 25,
                    ),
                    MyContainer(text: "Joined", subtext: "0"),
                    SizedBox(
                      width: mywidth / 25,
                    ),
                  ],
                ),
              ),
            ),
          ),

          Container(
            height: myheight / 9,
            width: mywidth / 1.1,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MyRows(
                      row_name: 'Demand',
                      value: '0',
                    )),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MyRows(
                      row_name: 'Submission',
                      value: '0',
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: myheight / 5,
              width: mywidth / 1.1,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(20)),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: myheight/25,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Demands Count",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "No Records found",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w300),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          DefaultTabController(
            length: 2,
            child: Container(
              height: myheight / 15,
              width: mywidth / 1.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue,
              ),
              child: TabBar(
                controller: _tabcontroller,
                indicatorColor: Colors.white,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(
                    text: "Submissions",
                  ),
                  Tab(
                    text: "Open demand",
                  )
                ],
              ),
            ),
          ),
          Container(
            height: myheight / 2.3,
            width: mywidth / 1.1,
            child: TabBarView(
              controller: _tabcontroller,
              children: [
                submission(),
                OpenDemands()
                //FaqBar()
              ],
            ),
          ),
        ],
      ),
    ));
  }

  submission() {
    double myheight = MediaQuery.of(context).size.height;
    double mywidth = MediaQuery.of(context).size.width;
    return Container(
      height: myheight / 2.5,
      width: mywidth / 1.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.blue),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: myheight / 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Submissions",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyRows(
                  row_name: 'Gowrisankar',
                  value: '0',
                )),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyRows(
                  row_name: 'Bhavanitha',
                  value: '0',
                )),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyRows(
                  row_name: 'Mohamad Kasim M',
                  value: '0',
                )),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyRows(
                  row_name: 'Gopinathan A',
                  value: '0',
                )),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyRows(
                  row_name: 'Radha',
                  value: '0',
                )),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyRows(
                  row_name: 'Ishwarya',
                  value: '0',
                )),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyRows(
                  row_name: 'Rafiha',
                  value: '0',
                )),
          ],
        ),
      ),
    );
  }

  OpenDemands() {
    double myheight = MediaQuery.of(context).size.height;
    double mywidth = MediaQuery.of(context).size.width;
    return Container(
      height: myheight / 2.5,
      width: mywidth / 1.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(),
      ),
      child: Center(
        child: Text("No Records Found"),
      ),
    );
  }
}
