import'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime? _startdate;
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
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Date",
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
    );
  }
}

