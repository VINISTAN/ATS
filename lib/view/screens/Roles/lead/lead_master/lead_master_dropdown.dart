import 'package:flutter/material.dart';

import '../../../../../Resuable_Widgets/drop_down.dart';
class SearchListDropdown extends StatefulWidget {
  const SearchListDropdown({Key? key}) : super(key: key);

  @override
  State<SearchListDropdown> createState() => _SearchListDropdownState();
}

class _SearchListDropdownState extends State<SearchListDropdown> {
  String ? selected_skill;
  @override
  Widget build(BuildContext context) {
    return AppDropdownInput<String?>(
      hintText: "Search List",
      options: ["Admin", "Administrator","Alaram Monitoring","Actimize","Account Manager"],
      value: selected_skill,
      onChanged: (String value) {
        setState(() {
          selected_skill = value;
          print("selected skill : ${selected_skill}");
          // state.didChange(newValue);
        });
      },

      getLabel: (String? value) => value.toString(),
    );
  }
}

class AddLocationDropdown extends StatefulWidget {
  const AddLocationDropdown({Key? key}) : super(key: key);

  @override
  State<AddLocationDropdown> createState() => _AddLocationDropdownState();
}

class _AddLocationDropdownState extends State<AddLocationDropdown> {
  String ? selected_location;
  @override
  Widget build(BuildContext context) {
    return AppDropdownInput<String?>(
      hintText: "Search Location",
      options: ["Delhi","Chennai","Coimbatore","Banglore"],
      value: selected_location,
      onChanged: (String value) {
        setState(() {
          selected_location = value;
          print("selected Location : ${selected_location}");
          // state.didChange(newValue);
        });
      },

      getLabel: (String? value) => value.toString(),
    );
  }
}

class SubmissionStatusDropdown extends StatefulWidget {
  const SubmissionStatusDropdown({Key? key}) : super(key: key);

  @override
  State<SubmissionStatusDropdown> createState() => _SubmissionStatusDropdownState();
}

class _SubmissionStatusDropdownState extends State<SubmissionStatusDropdown> {
  String ? selected_status;
  @override
  Widget build(BuildContext context) {
    return AppDropdownInput<String?>(
      hintText: "Select status",
      options: ["Hold","High Budget","Final Selected","Joined"],
      value: selected_status,
      onChanged: (String value) {
        setState(() {
          selected_status = value;
          print("selected Status : ${selected_status}");
          // state.didChange(newValue);
        });
      },

      getLabel: (String? value) => value.toString(),
    );
  }
}


