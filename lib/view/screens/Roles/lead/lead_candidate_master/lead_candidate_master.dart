import 'package:flutter/material.dart';

import '../../../../../Resuable_Widgets/common_textfield.dart';

class LeadCandidateMaster extends StatefulWidget {
  const LeadCandidateMaster({Key? key}) : super(key: key);

  @override
  State<LeadCandidateMaster> createState() => _LeadCandidateMasterState();
}

class _LeadCandidateMasterState extends State<LeadCandidateMaster> {
  DateTime? _startdate;
  DateTime? _enddate;
  _displayStartDate() {
    if (_startdate == null) {
      print("inside function start date ${_startdate}");
      return "dd/mm/yy";
    } else
      return '${_startdate?.day}/${_startdate?.month}/${_startdate?.year}';
  }

  _displayEndDate() {
    print("inside function End date  ${_enddate}");
    if (_enddate == null) {
      return "dd/mm/yy";
    } else
      return '${_enddate?.day}/${_enddate?.month}/${_enddate?.year}';
  }
  @override
  Widget build(BuildContext context) {
    final TextEditingController candidateNameController = TextEditingController();
    final TextEditingController mobileNoController = TextEditingController();
    final TextEditingController emailController = TextEditingController();

        return SingleChildScrollView(
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(left: 20,right: 20,top: 20),
            child: MytextField(hint: 'Name', label: 'CandidateName',
            textcontroller: candidateNameController,
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 20,right: 20,top: 20),
            child: MytextField(hint: 'Mobile', label: 'Mobile no',
            textcontroller: mobileNoController,),
          ),
          Padding(padding: EdgeInsets.only(left: 20,right: 20,top: 20),
            child: MytextField(hint: 'Email', label: 'Email id',
            textcontroller: emailController,),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Row(
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
                      print("Inside set state : startdate ${_startdate}");
                      print((_startdate).toString());
                    });
                  },
                  icon: Icon(Icons.calendar_today),
                  label: Text(_displayStartDate()),
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
                      print("Inside set state : enddate ${_enddate}");
                      print((_enddate).toString());
                    });
                  },
                  icon: Icon(Icons.calendar_today),
                  label: Text(_displayEndDate()),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 20,right: 20,top: 20),
            child: SizedBox(
              height: MediaQuery.of(context).size.height/18,
              width: MediaQuery.of(context).size.width/1.1,
              child: ElevatedButton(
                onPressed: () {

                  print((candidateNameController).text);
                  print((mobileNoController).text);
                  print((emailController).text);
                },
                child: Text("Submit ",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
              ),
            )
          ),


        ],
      ),
    );
  }
}
