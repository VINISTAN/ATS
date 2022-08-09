import 'package:flutter/material.dart';

import '../../../../../Resuable_Widgets/common_button.dart';
import '../lead_reports/lead_reports_dropdown.dart';

class LeadDemandReport extends StatefulWidget {
  const LeadDemandReport({Key? key}) : super(key: key);

  @override
  State<LeadDemandReport> createState() => _LeadDemandReportState();
}

class _LeadDemandReportState extends State<LeadDemandReport> {
  DateTime? _startdate;
  DateTime? _enddate;
  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height;
    double mywidth = MediaQuery.of(context).size.width;
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
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          LeadDropdown(),
          SizedBox(height: myheight / 50,),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "From",
                  style: TextStyle(fontSize: 16),
                ),
                Container(
                  width: mywidth / 1.3,
                  height: myheight / 18,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        )),
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
                    icon: Icon(
                      Icons.calendar_today,
                      color: Colors.black,
                    ),
                    label: Text(
                      _displayStartText(),
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: myheight / 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "To",
                  style: TextStyle(fontSize: 16),
                ),
                Container(
                  width: mywidth / 1.3,
                  height: myheight / 18,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3))),
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
                    icon: Icon(
                      Icons.calendar_today,
                      color: Colors.black,
                    ),
                    label: Text(
                      _displayEndText(),
                      style: TextStyle(color: Colors.black),
                    ),
                    //child: Text("${end.day}/${end.month}/${end.year}")),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: myheight / 90,
          ),
          SizedBox(
              width: mywidth,
              child: CommonButton(
                onPressed: () {},
                text: "Download as Excel",
              )),
        ],
      ),
    );
  }
}
