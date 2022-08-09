/*
Drop down contains
1.Manager
2.lead
3.Recruiter
4.Demand Status
5.Subvendor
*/

import 'package:flutter/material.dart';

import '../../../../../Resuable_Widgets/drop_down.dart';

class ManagerDropdown extends StatefulWidget {
  const ManagerDropdown({Key? key}) : super(key: key);

  @override
  State<ManagerDropdown> createState() => _ManagerDropdownState();
}

class _ManagerDropdownState extends State<ManagerDropdown> {
  String? selected_manager;

  @override
  Widget build(BuildContext context) {
    return AppDropdownInput<String?>(
      hintText: "Manager Name",
      options: [
        'Blesso',
        'Dharshana',
        'Ram Mohan',
        'Ranjitha Kalaiselvan',
        'Vishnu Hasan',
      ],
      value: selected_manager,
      onChanged: (String value) {
        setState(() {
          selected_manager = value;
          print("selected Manager : ${selected_manager}");
          // state.didChange(newValue);
        }
        );
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
  String? selected_lead_name;

  @override
  Widget build(BuildContext context) {
    return AppDropdownInput<String?>(
      hintText: "Lead Name",
      options: [
        'Abinaya',
        'Abinaya T',
        'Asenath',
        'Diana Moses',
        'Divya Priya K',
        'Jyothsna',
        'Kishore',
        'Lediya P',
        'Nesha Tamil Muthu',
        'Nirmala Anjel',
        'Nishanth'
      ],
      value: selected_lead_name,
      onChanged: (String value) {
        setState(() {
          selected_lead_name = value;
          print("selected Lead : ${selected_lead_name}");
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
  String? selected_recruiter_name;

  @override
  Widget build(BuildContext context) {
    return AppDropdownInput<String?>(
      hintText: "Recruiter Name",
      options: [
        'Arulmozhi',
        'Femina',
        'Sakthi Priya',
        'Shalini',
        'Vishali',
      ],
      value: selected_recruiter_name,
      onChanged: (String value) {
        setState(() {
          selected_recruiter_name = value;
          print("selected Recruiter : ${selected_recruiter_name}");
        });
      },
      getLabel: (String? value) => value.toString(),
    );
  }
}

class DemandStatusDropdown extends StatefulWidget {
  const DemandStatusDropdown({Key? key}) : super(key: key);

  @override
  State<DemandStatusDropdown> createState() => _DemandStatusDropdownState();
}

class _DemandStatusDropdownState extends State<DemandStatusDropdown> {
  String? selected_demandstatus;

  @override
  Widget build(BuildContext context) {
    return AppDropdownInput<String?>(
      hintText: "Demand Status",
      options: ['Closed', 'Open', 'Onprogress', 'Hold'],
      value: selected_demandstatus,
      onChanged: (String value) {
        setState(() {
          selected_demandstatus = value;
          print("selected Demand : ${selected_demandstatus}");
        });
      },
      getLabel: (String? value) => value.toString(),
    );
  }
}

class SubvendorDropdown extends StatefulWidget {
  const SubvendorDropdown({Key? key}) : super(key: key);

  @override
  State<SubvendorDropdown> createState() => _SubvendorDropdownState();
}

class _SubvendorDropdownState extends State<SubvendorDropdown> {
  String? selected_subvendor;
  @override
  Widget build(BuildContext context) {
    return AppDropdownInput<String?>(
      hintText: "Subvendor",
      options: [
        'Harika',
        'Mohammed Shuaib',
        'Mohan',
        'Rajesh Daniel',
        'Saranya Baskaran',
        'Abilash',
        'Abiraj',
        'Adarsh',
        'Aishwarya Kamalan',
        'Ajeesh',
        'Akanksha Singh',
        'Amit',
        'Amit Devan',
        'Amreen',
        'Ankit'
      ],
      value: selected_subvendor,
      onChanged: (String value) {
        setState(() {
          selected_subvendor = value;
          print("selected Subvendor : ${selected_subvendor}");
        });
      },
      getLabel: (String? value) => value.toString(),
    );
  }
}
