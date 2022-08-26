import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

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
            //showCheckboxColumn: true,
            gridLinesVisibility: GridLinesVisibility.both,
            headerGridLinesVisibility: GridLinesVisibility.both,
            columnWidthMode: ColumnWidthMode.fill,
            frozenColumnsCount: 1,
            //columnWidthCalculationRange: ColumnWidthCalculationRange.allRows,
            //columnSizer: _customColumnSizer,
            //columnWidthMode: ColumnWidthMode.fitByCellValue,
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
                    child: const Text('EmployeeID',
                      overflow: TextOverflow.ellipsis,

                    ),
                  )),
              GridColumn(
                  columnName: 'name',
                  autoFitPadding: EdgeInsets.all(10.0),
                  label: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      alignment: Alignment.centerLeft,
                      child: const Text('FullName',
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
                        //overflow: TextOverflow.ellipsis,
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
      Employee(10001, 'devi','Associate' ,'Project Lead','kunal', 20000,'vinis@gmail.com',1234454544,'20-08-2021'),
      Employee(10002, 'Karthi', 'Associate', 'Manager','kunal', 30000,'thiru@gmail.com',8945545444,'20-08-2021'),
      Employee(10003, 'priya', 'Associate' ,'Developer','kunal', 15000,'devi@gmail.com',9876543221,'20-08-2021'),
      Employee(10004, 'suba','Associate', 'Designer','kunal', 12000,'aravind@gmail.com',1234454544 ,'20-08-2021' ),
      Employee(10005, 'Martin','Associate', 'Developer','kunal', 15000,'venkat@gmail.com',8945545444,'20-08-2021'),
      Employee(10006, 'sathiya', 'Associate', 'Developer','kunal', 15000,'subashree@gmail.com',8945545444,'20-08-2021'),
      Employee(10007, 'Anand', 'Associate','Developer','kunal', 15000,'sadhu@gmail.com',9876543221,'20-08-2022'),
      Employee(10008, 'thiru', 'Associate','Tech.Writer','kunal', 10000,'pradeep@gmail.com',1234454544,'20-08-2021'),
      Employee(10009, 'Gable', 'Associate','Developer','kunal', 15000,'ram@gmail.com',8945545444,'20-08-2021'),
      Employee(10010, 'Aravind','Associate', 'Sr.Developer','kunal', 18000,'ameer@gmail.com',8945545444,'20-08-2021')
    ];
  }
}

class EmployeeDataSource extends DataGridSource {
  EmployeeDataSource(List<Employee> employees) {
    dataGridRows = employees.map<DataGridRow>((dataGridRow) => DataGridRow(
        cells: [
          DataGridCell<int>(columnName: 'Employeeid', value: dataGridRow.Employeeid),
          DataGridCell<String>(columnName: 'Fullname', value: dataGridRow.name),
          DataGridCell<String>(columnName: 'designation', value: dataGridRow.designation),
          DataGridCell<String>(columnName: 'Lead', value: dataGridRow.Lead),
          DataGridCell<String>(columnName: 'Manager', value: dataGridRow.Manager),
          DataGridCell<int>(columnName: 'salary', value: dataGridRow.salary),
          DataGridCell<String>(columnName: 'E-mail', value: dataGridRow.email),
          DataGridCell<int>(columnName: 'Mobile', value: dataGridRow.Mobile),
          DataGridCell<String>(columnName: 'JoiningDate', value: dataGridRow.JoiningDate),

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
              alignment: (dataGridCell.columnName == 'Employeeid' || dataGridCell.columnName == 'JoiningDate') ? Alignment.centerRight : Alignment.centerLeft,
              child: Text(
                dataGridCell.value.toString(),
                overflow: TextOverflow.ellipsis,
              ));
        }).toList());
  }
}

class Employee {


  Employee(this.Employeeid, this.name, this.designation,this.Lead,this.Manager ,this.salary, this.email , this.Mobile, this.JoiningDate);
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







