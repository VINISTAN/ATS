import 'package:flutter/material.dart';

import '../../Resuable_Widgets/drop_down.dart';

class DepartmentDropdown extends StatefulWidget {
  const DepartmentDropdown({Key? key}) : super(key: key);

  @override
  State<DepartmentDropdown> createState() => _DepartmentDropdownState();
}

class _DepartmentDropdownState extends State<DepartmentDropdown> {
  String ? selected_department;
  @override
  Widget build(BuildContext context) {
    return AppDropdownInput<String?>(
      hintText: "Department",
      options: ["Lead","Manager","Recruiter",],
      value: selected_department,
      onChanged: (String value) {
        setState(() {
          selected_department = value;
          print("selected Status : ${selected_department}");
          // state.didChange(newValue);
        });
      },

      getLabel: (String? value) => value.toString(),
    );
  }
}

class DesignationDropdown extends StatefulWidget {
  const DesignationDropdown({Key? key}) : super(key: key);

  @override
  State<DesignationDropdown> createState() => _DesignationDropdownState();
}

class _DesignationDropdownState extends State<DesignationDropdown> {
  String ? select_designation;
  @override
  Widget build(BuildContext context) {
    return AppDropdownInput<String?>(
      hintText: "Designation",
      options: ["HR","Finance","Development",],
      value: select_designation,
      onChanged: (String value) {
        setState(() {
          select_designation = value;
          print("selected Status : ${select_designation}");
          // state.didChange(newValue);
        });
      },

      getLabel: (String? value) => value.toString(),
    );
  }
}

class LocationDropdown extends StatefulWidget {
  const LocationDropdown({Key? key}) : super(key: key);

  @override
  State<LocationDropdown> createState() => _LocationDropdownState();
}

class _LocationDropdownState extends State<LocationDropdown> {
  String ? select_location;
  @override
  Widget build(BuildContext context) {
    return AppDropdownInput<String?>(
      hintText: "Location",
      options: ["Chennai","Banglore","Hydrabad",],
      value: select_location,
      onChanged: (String value) {
        setState(() {
          select_location = value;
          print("selected Status : ${select_location}");
          // state.didChange(newValue);
        });
      },

      getLabel: (String? value) => value.toString(),
    );
  }
}

class EmptypeDropdown extends StatefulWidget {
  const EmptypeDropdown({Key? key}) : super(key: key);

  @override
  State<EmptypeDropdown> createState() => _EmptypeDropdownState();
}

class _EmptypeDropdownState extends State<EmptypeDropdown> {
  String ? select_emp_type;
  @override
  Widget build(BuildContext context) {
    return AppDropdownInput<String?>(
      hintText: "Type",
      options: ["Permanent","Temporary","Freelancer",],
      value: select_emp_type,
      onChanged: (String value) {
        setState(() {
          select_emp_type = value;
          print("selected Status : ${select_emp_type}");
          // state.didChange(newValue);
        });
      },

      getLabel: (String? value) => value.toString(),
    );
  }
}

class EmpStatusDropdown extends StatefulWidget {
  const EmpStatusDropdown({Key? key}) : super(key: key);

  @override
  State<EmpStatusDropdown> createState() => _EmpStatusDropdownState();
}

class _EmpStatusDropdownState extends State<EmpStatusDropdown> {
  String ? select_emp_status;
  @override
  Widget build(BuildContext context) {
    return AppDropdownInput<String?>(
      hintText: "Status",
      options: ["Active","Inactive"],
      value: select_emp_status,
      onChanged: (String value) {
        setState(() {
          select_emp_status = value;
          print("selected Status : ${select_emp_status}");
          // state.didChange(newValue);
        });
      },

      getLabel: (String? value) => value.toString(),
    );
  }
}

class ReportingManagerDropdown extends StatefulWidget {
  const ReportingManagerDropdown({Key? key}) : super(key: key);

  @override
  State<ReportingManagerDropdown> createState() => _ReportingManagerDropdownState();
}

class _ReportingManagerDropdownState extends State<ReportingManagerDropdown> {
  String ? select_rep_manager;
  @override
  Widget build(BuildContext context) {
    return AppDropdownInput<String?>(
      hintText: "Manager",
      options: ["Person A","Person B"],
      value: select_rep_manager,
      onChanged: (String value) {
        setState(() {
          select_rep_manager = value;
          print("selected Status : ${select_rep_manager}");
          // state.didChange(newValue);
        });
      },

      getLabel: (String? value) => value.toString(),
    );
  }
}

class LeadDropdown extends StatefulWidget {
  const LeadDropdown({Key? key}) : super(key: key);

  @override
  State<LeadDropdown> createState() => _LeadDropdownState();
}

class _LeadDropdownState extends State<LeadDropdown> {
  String ? select_lead;
  @override
  Widget build(BuildContext context) {

    return AppDropdownInput<String?>(
      hintText: "Lead",
      options: ["Person A","Person B"],
      value: select_lead,
      onChanged: (String value) {
        setState(() {
          select_lead = value;
          print("selected Status : ${select_lead}");
          // state.didChange(newValue);
        });
      },

      getLabel: (String? value) => value.toString(),
    );
  }
}

class RecruiterDropdown extends StatefulWidget {
  const RecruiterDropdown({Key? key}) : super(key: key);

  @override
  State<RecruiterDropdown> createState() => _RecruiterDropdownState();
}

class _RecruiterDropdownState extends State<RecruiterDropdown> {
  String ? select_recruiter;
  @override
  Widget build(BuildContext context) {
    return AppDropdownInput<String?>(
      hintText: "Recruiter",
      options: ["Person A","Person B"],
      value: select_recruiter,
      onChanged: (String value) {
        setState(() {
          select_recruiter = value;
          print("selected Status : ${select_recruiter}");
          // state.didChange(newValue);
        });
      },

      getLabel: (String? value) => value.toString(),
    );
  }
}







