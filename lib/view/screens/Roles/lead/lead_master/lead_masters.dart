import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';
import 'master_accordian_widgets.dart';

class LeadMaster extends StatefulWidget {
  const LeadMaster({Key? key}) : super(key: key);

  @override
  State<LeadMaster> createState() => _LeadMasterState();
}

class _LeadMasterState extends State<LeadMaster> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            GFAccordion(
              title: "Add Skills",
              contentChild: AddskillContainer(),
            ),
            GFAccordion(
              title: "Add Location",
              contentChild: AddLocation(),
            ),
            GFAccordion(
              title: "Add Client",
              contentChild: AddClient(),
            ),
            GFAccordion(
              title: "Add Submission Status",
              contentChild: AddSubmission(),
            ),
            GFAccordion(
              title: "Add Sub vendor",
              contentChild: AddSubvendor(),
            ),
          ],
        ),
      ),
    );
  }
}
