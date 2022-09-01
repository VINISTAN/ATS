import 'dart:math' as math show pi;

import 'package:collapsible_sidebar/collapsible_sidebar.dart';

// import 'package:crt_project/practice/profile.dart';
import 'package:crt_project/practice/web_app/add_employee.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:hexcolor/hexcolor.dart';

// import 'package:custom_pop_up_menu/custom_pop_up_menu.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sidebar ui',
      home: Scaffold(
        appBar: AppBar(
          title: Text("ATS"),
        ),
        body: SidebarPage(),
      ),
    );
  }
}

class SidebarPage extends StatefulWidget {
  @override
  _SidebarPageState createState() => _SidebarPageState();
}

class _SidebarPageState extends State<SidebarPage> {
  late List<CollapsibleItem> _items;
  // late String _headline;
  AssetImage _avatarImg = AssetImage('assets/images/dashboardIcon.png');
  //AssetImage _avatarImg = Container(color: HexColor("#ebf7f3"),) as AssetImage;


  @override
  void initState() {
    super.initState();
    _items = _generateItems;
    //_headline = _items.firstWhere((item) => item.isSelected).text;
  }

  List<CollapsibleItem> get _generateItems {
    return [
      CollapsibleItem(
        text: 'Dashboard',
        icon: Icons.assessment,
        onPressed: (){},
        isSelected: true,
      ),
      CollapsibleItem(
        text: 'Candidate',
        icon: Icons.icecream,
        onPressed: (){},
      ),
      CollapsibleItem(
        text: 'Demand Report',
        icon: Icons.search,
        onPressed: (){},
      ),
      CollapsibleItem(
        text: 'Masters Page',
        icon: Icons.notifications,
        onPressed: (){},
      ),
      CollapsibleItem(
        text: 'Report',
        icon: Icons.settings,
        onPressed: (){},
      ),
      CollapsibleItem(
        text: 'Submission Report',
        icon: Icons.home,
        onPressed: (){},
      ),
      CollapsibleItem(
        text: 'Team Management',
        icon: Icons.access_alarm,
        onPressed: (){},
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: CollapsibleSidebar(
        isCollapsed: MediaQuery.of(context).size.width <= 800,
         items: _items,
         avatarImg: _avatarImg,
         iconSize: 20,
         title: '',
        onTitleTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Yay! Flutter Collapsible Sidebar!')));
        },
        //body: girdview(title: '',),
        body: _body(size, context),
        backgroundColor: HexColor("#dce0e6"),
        selectedTextColor: Colors.black,
        selectedIconBox: HexColor("#e3e5e6"),
        textStyle: TextStyle(fontSize: 15, fontStyle: FontStyle.normal),
        titleStyle: TextStyle(
            fontSize: 15,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold),
        toggleTitle: '     ',
        toggleTitleStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        sidebarBoxShadow: [
          BoxShadow(
            color: Colors.lightBlueAccent,
            blurRadius: 20,
            spreadRadius: 0.01,
            offset: Offset(3, 3),
          ),
          BoxShadow(
            color: Colors.white,
            blurRadius: 50,
            spreadRadius: 0.01,
            offset: Offset(3, 3),
          ),
        ],
      ),
    );
  }

  Widget _body(Size size, BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.blueGrey[50],
      child: Center(
        child: Transform.rotate(
          angle: math.pi / 2,
          child: Transform.translate(
            offset: Offset(-size.height * 0.3, -size.width * 0.23),
            // child: Text(
            //   _headline,
            //   style: Theme.of(context).textTheme.headline1,
            //   overflow: TextOverflow.visible,
            //   softWrap: true,
            // ),
          ),
        ),
      ),
    );
  }
}

class girdview extends StatefulWidget {
  const girdview({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<girdview> createState() => _girdviewState();
}

class _girdviewState extends State<girdview> {
  late List<Employee> _employees;
  late EmployeeDataSource _employeeDataSource;

  @override
  void initState() {
    super.initState();
    _employees = getEmployeeData();
    _employeeDataSource = EmployeeDataSource(_employees);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SfDataGrid(
        allowSorting: true,
        columnWidthMode: ColumnWidthMode.fill,
        allowMultiColumnSorting: true,
        selectionMode: SelectionMode.multiple,
        source: _employeeDataSource,
        columns: [
          GridColumn(
              columnName: 'Employeeid',
              autoFitPadding: EdgeInsets.all(8.0),
              label: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                alignment: Alignment.centerRight,
                child: const Text(
                  'EmployeeID',
                  overflow: TextOverflow.ellipsis,
                ),
              )),
          GridColumn(
              columnName: 'name',
              autoFitPadding: EdgeInsets.all(10.0),
              label: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'FullName',
                    overflow: TextOverflow.ellipsis,
                  ))),
          GridColumn(
              columnName: 'Designation',
              autoFitPadding: EdgeInsets.all(10.0),
              //   visible: false,
              label: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Designation',
                    overflow: TextOverflow.ellipsis,
                  ))),
          GridColumn(
              columnName: 'Lead',
              autoFitPadding: EdgeInsets.all(10.0),
              label: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Lead',
                    overflow: TextOverflow.ellipsis,
                  ))),
          GridColumn(
              columnName: 'Manager',
              autoFitPadding: EdgeInsets.all(10.0),
              label: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Manager',
                    overflow: TextOverflow.ellipsis,
                  ))),
          GridColumn(
              columnName: 'salary',
              autoFitPadding: EdgeInsets.all(10.0),
              label: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Salary',
                    overflow: TextOverflow.ellipsis,
                  ))),
          GridColumn(
              columnName: 'Email',
              autoFitPadding: EdgeInsets.all(10.0),
              label: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  alignment: Alignment.center,
                  child: const Text(
                    'Email',
                    // overflow: TextOverflow.ellipsis,
                  ))),
          GridColumn(
              columnName: 'Mobile',
              autoFitPadding: EdgeInsets.all(10.0),
              label: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  alignment: Alignment.center,
                  child: const Text(
                    'Mobile',
                  ))),
          GridColumn(
              columnName: 'JoiningDate',
              autoFitPadding: EdgeInsets.all(10.0),
              label: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.center,
                  child: const Text(
                    'JoinDate',
                    overflow: TextOverflow.ellipsis,
                  ))),
        ],
      ),
    ));
  }

  List<Employee> getEmployeeData() {
    return [
      Employee(10001, 'devi', 'Associate', 'Project Lead', 'kunal', 20000,
          'vinis@gmail.com', 1234454544, '20-08-2021',),
      Employee(10002, 'Karthi', 'Associate', 'Manager', 'kunal', 30000,
          'thiru@gmail.com', 8945545444, '20-08-2021',),
      Employee(10003, 'priya', 'Associate', 'Developer', 'kunal', 15000,
          'devi@gmail.com', 9876543221, '20-08-2021',),
      Employee(10004, 'suba', 'Associate', 'Designer', 'kunal', 12000,
          'aravind@gmail.com', 1234454544, '20-08-2021',),
      Employee(10005, 'Martin', 'Associate', 'Developer', 'kunal', 15000,
          'venkat@gmail.com', 8945545444, '20-08-2021',),
      Employee(10006, 'sathiya', 'Associate', 'Developer', 'kunal', 15000,
          'subashree@gmail.com', 8945545444, '20-08-2021',),
      Employee(10007, 'Anand', 'Associate', 'Developer', 'kunal', 15000,
          'sadhu@gmail.com', 9876543221, '20-08-2022',),
      Employee(10008, 'thiru', 'Associate', 'Tech.Writer', 'kunal', 10000,
          'pradeep@gmail.com', 1234454544, '20-08-2021',),
      Employee(10009, 'Gable', 'Associate', 'Developer', 'kunal', 15000,
          'ram@gmail.com', 8945545444, '20-08-2021'),
      Employee(10010, 'Aravind', 'Associate', 'Sr.Developer', 'kunal', 18000,
          'ameer@gmail.com', 8945545444, '20-08-2021')
    ];
  }
}

class EmployeeDataSource extends DataGridSource {
  EmployeeDataSource(List<Employee> employees) {
    dataGridRows = employees
        .map<DataGridRow>((dataGridRow) => DataGridRow(cells: [
              DataGridCell<int>(
                  columnName: 'Employeeid', value: dataGridRow.Employeeid),
              DataGridCell<String>(
                  columnName: 'Fullname', value: dataGridRow.name),
              DataGridCell<String>(
                  columnName: 'designation', value: dataGridRow.designation),
              DataGridCell<String>(columnName: 'Lead', value: dataGridRow.Lead),
              DataGridCell<String>(
                  columnName: 'Manager', value: dataGridRow.Manager),
              DataGridCell<int>(
                  columnName: 'salary', value: dataGridRow.salary),
              DataGridCell<String>(
                  columnName: 'E-mail', value: dataGridRow.email),
              DataGridCell<int>(
                  columnName: 'Mobile', value: dataGridRow.Mobile),
              DataGridCell<String>(
                  columnName: 'JoiningDate', value: dataGridRow.JoiningDate),

            ]))
        .toList();
  }

  late List<DataGridRow> dataGridRows;

  @override
  List<DataGridRow> get rows => dataGridRows;

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((dataGridCell) {
      return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          alignment: (dataGridCell.columnName == 'Employeeid' ||
                  dataGridCell.columnName == 'JoiningDate')
              ? Alignment.centerRight
              : Alignment.centerLeft,
          child: Text(
            dataGridCell.value.toString(),
            overflow: TextOverflow.ellipsis,
          ));
    }).toList());
  }
}

class Employee {
  Employee(this.Employeeid, this.name, this.designation, this.Lead,
      this.Manager, this.salary, this.email, this.Mobile, this.JoiningDate);

  final int Employeeid;
  final String name;
  final String designation;
  final String Lead;
  final String Manager;
  final int salary;
  final String email;
  final int Mobile;
  final String JoiningDate;
}

class datagrid extends StatefulWidget {
  final String value;
  const datagrid({Key? key, required this.value}) : super(key: key);

  @override
  State<datagrid> createState() => _datagridState();
}

class _datagridState extends State<datagrid> {

  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery
        .of(context)
        .size
        .height;
    double mywidth = MediaQuery
        .of(context)
        .size
        .width;

    return Scaffold(
      appBar: AppBar(title: Text("ATS"), actions: [
        SizedBox(width: mywidth/60,),
        InkWell(
            onTap: () {
              showGeneralDialog(
                context: context,
                barrierDismissible: true,
                barrierLabel: " ",
                pageBuilder: (_, __, ___) {
                  return Align(
                    alignment: Alignment(1, -0.7),
                    child: Container(
                        height: myheight / 3.5,
                        width: mywidth / 3.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                      onPressed: () {},
                                      child: Text("Sign Out", style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.black),))
                                ],
                              ),
                              SizedBox(height: myheight / 80,),
                              Row(children: [
                                Expanded(flex: 3,
                                  child: SizedBox(
                                    height: myheight / 8,
                                    width: mywidth / 6,
                                    child: CircleAvatar(
                                      radius: 20.0,
                                      backgroundImage: AssetImage(
                                          "assets/images/profile.png"),
                                    ),
                                  ),
                                ),
                                Expanded(flex: 7,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: [
                                      SizedBox(height: myheight / 90),
                                      TextButton(onPressed: () {},
                                          child: Text("Vinistan",
                                              style: TextStyle(fontSize: 20,
                                                  fontWeight: FontWeight.w300,
                                                  color: Colors.black))),
                                      SizedBox(height: myheight / 80),
                                      TextButton(onPressed: () {},
                                          child: Text(widget.value,
                                              style: TextStyle(fontSize: 15,
                                                  fontWeight: FontWeight.w300,
                                                  color: Colors.black))),
                                      //Expanded(child: TextButton(onPressed: () {},child: Text("vinistanvini464vinistan@gmail.com",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300,color: Colors.black)))),
                                      SizedBox(height: myheight / 80),
                                      //InkWell(onTap : () {},child: Text("vinistan@gmail.com",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300,color: Colors.black))),
                                      TextButton(onPressed: () {},
                                          child: Text("Account Setting",
                                            style: TextStyle(
                                                color: Colors.blueAccent),))
                                    ],
                                  ),)
                              ],)
                              //Text("Vinistan",style:  TextStyle(fontSize: 20,fontWeight: FontWeight.w300,color: Colors.black),)
                            ],
                          ),
                        )
                    ),
                  );
                },
              );
            },
            child: CircleAvatar(
              radius: 20.0,
              backgroundImage: AssetImage("assets/images/profile.png"),
            )),
        SizedBox(width: mywidth/60,),

      ]),

      // PopupMenuButton(
      //     onSelected: (value) {},
      //     itemBuilder: (context){
      //       return [
      //         PopupMenuItem(
      //             child: Container(
      //               height: myheight/3,
      //               width: mywidth,
      //               child: Column(
      //                 children: [
      //                   Expanded(
      //                     child: Row(
      //                       mainAxisAlignment: MainAxisAlignment.end,
      //                       children: [Text("Sign Out")],
      //                     ),
      //                   ),
      //                   Expanded(
      //                     child: Row(
      //                       crossAxisAlignment: CrossAxisAlignment.start,
      //                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //                       children: [
      //                       Expanded(
      //                         flex : 3,
      //                         child: CircleAvatar(
      //                             radius: 20.0,
      //                             backgroundImage: AssetImage("assets/images/profile.png"),
      //                           ),
      //                       ),
      //                         Expanded(
      //                           flex : 7,
      //                           child : Column(
      //                             mainAxisAlignment: MainAxisAlignment.center,
      //                             children: [
      //                               Text("Aravind"),
      //                               SizedBox(height: myheight/80,),
      //                               Text("aravindramaswamykumar@gmail.com"),
      //                               SizedBox(height: myheight/80,),
      //                               TextButton(
      //                                   onPressed: () {},
      //                                   child: Text("Account Setting",style: TextStyle(color: Colors.blueAccent),))
      //                             ],
      //                           )
      //                         ),
      //                       ],
      //                     ),
      //                   )
      //                 ],
      //               ),
      //             )
      //         )
      //       ];
      //     })
      // FocusedMenuHolder(
      //   onPressed: (){},
      //   openWithTap: true,
      //   animateMenuItems: true,
      //   menuWidth: MediaQuery.of(context).size.width/4,
      //   menuItems: [
      //     FocusedMenuItem(
      //       title:
      //       Column(
      //         mainAxisAlignment : MainAxisAlignment.end,
      //         children: [
      //           Expanded(child: Text("SignOut")),
      //           Expanded(child: Text("SignOut")),
      //           Expanded(child: Text("SignOut")),
      //           Expanded(child: Text("SignOut")),
      //           Expanded(child: Text("SignOut")),
      //         ],
      //       ),
      //       onPressed : () {},
      //     ),
      //
      //   ],
      //   child: CircleAvatar(
      //     radius: 20.0,
      //     backgroundImage: AssetImage("assets/images/profile.png"),
      //   ),
      // ),
      body: Row(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.white30,
                child: SidebarPage(),
              )),
          Expanded(
              flex: 8,
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: mywidth / 90),
                          Text(
                            "Employee Details",
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            width: mywidth / 4,
                          ),
                          SizedBox(
                            width: mywidth / 5,
                            height: myheight / 16,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  suffixIcon: IconButton(
                                    icon: Icon(Icons.search),
                                    onPressed: () {},
                                  ),
                                  hintText: "Search"),
                            ),
                          ),
                          SizedBox(width: mywidth / 40),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.filter_alt)),
                          SizedBox(width: mywidth / 40),
                          ElevatedButton(
                              onPressed: () {
                                print(widget.value);
                                showDialog(
                                    context: context,
                                    builder: (context) =>
                                        AddEmployee(email: widget.value,));


                                //AddEmployee());
                              },
                              child: Text("Add Employee")),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Expanded(child: girdview(title: " "))
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
