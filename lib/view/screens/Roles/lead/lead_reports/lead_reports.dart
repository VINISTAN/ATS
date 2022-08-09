//import 'package:crt_project/view/screens/Roles/lead/lead_reports/common_button.dart';
import 'package:crt_project/view/screens/Roles/lead/lead_reports/reports_accordian_widgets.dart';
import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';


class LeadReport extends StatefulWidget {
  const LeadReport({Key? key}) : super(key: key);

  @override
  State<LeadReport> createState() => _LeadReportState();
}

class _LeadReportState extends State<LeadReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            GFAccordion(
              title: "Recruiter Submission Report",
              contentChild: RecruiterSubmissionReport()
            ),
            GFAccordion(
              title: "Lead Demand Report",
              contentChild: LeadDemandReport()
            ),
            GFAccordion(
              title: "Account Manager Report",
              contentChild: AccountManagerReport()
            ),
            GFAccordion(
              title: "Client Report",
              contentChild: ClientReport()
            ),
            GFAccordion(
              title: "Sub Vendor Submission Report",
              contentChild: SubVendorReport()
            ),
            GFAccordion(
              title: "Client Report Count",
              contentChild: ClientReportCount()
            ),
          ],
        ),
      ),
    );
  }
}
