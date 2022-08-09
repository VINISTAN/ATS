import'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';


class SubmissionReportDropdown extends StatefulWidget {
  const SubmissionReportDropdown({Key? key}) : super(key: key);

  @override
  State<SubmissionReportDropdown> createState() => _SubmissionReportDropdownState();
}

class _SubmissionReportDropdownState extends State<SubmissionReportDropdown> {
  final List<String> recruiters_list = [
    'Bhavanitha','Gopinathan','Gowrisankar','Ishwarya','Mohamad Kasim','Radha','Rafiha'
  ];
  String ? recruiters_name;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          isExpanded: true,
          hint: Row(
            children: const [
              SizedBox(
                width: 4,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Recruiter Name',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
          items: recruiters_list
              .map((item) =>
              DropdownMenuItem<String>(
                value: item,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ))
              .toList(),
          value: recruiters_name,
          onChanged: (value) {
            setState(() {
              recruiters_name = value as String;
            });
          },
          icon: const Icon(
            Icons.arrow_drop_down,
          ),
          iconSize: 20,
          iconEnabledColor: Colors.black,
          iconDisabledColor: Colors.grey,
          buttonDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),

            color: Colors.white,
          ),
          buttonElevation: 2,
          dropdownDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.white,
          ),
          dropdownElevation: 8,
          scrollbarRadius: const Radius.circular(40),
          scrollbarThickness: 6,
          scrollbarAlwaysShow: true,
          offset: const Offset(-20, 0),
        ),
      ),
    );
  }
}
