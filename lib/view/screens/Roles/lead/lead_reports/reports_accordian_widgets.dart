import 'package:flutter/material.dart';
import '../../../../../Resuable_Widgets/drop_down.dart';
import '../../../../../Resuable_Widgets/common_button.dart';
import 'lead_reports_dropdown.dart';

class RecruiterSubmissionReport extends StatefulWidget {
  const RecruiterSubmissionReport({Key? key}) : super(key: key);

  @override
  State<RecruiterSubmissionReport> createState() => _RecruiterSubmissionReportState();
}

class _RecruiterSubmissionReportState extends State<RecruiterSubmissionReport> {
  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height;
    double mywidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(

         mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ManagerDropdown(),
          SizedBox(height: myheight/50),
          LeadDropdown(),
          SizedBox(height: myheight/50),
          RecruiterDropdown(),
          SizedBox(height: myheight/50),
          SizedBox(
            width: mywidth,
            child: CommonButton(
              onPressed: () {},
              text: "Download",
            ),
          )
        ],
      ),
    );
  }
}

class LeadDemandReport extends StatefulWidget {
  const LeadDemandReport({Key? key}) : super(key: key);

  @override
  State<LeadDemandReport> createState() => _LeadDemandReportState();
}

class _LeadDemandReportState extends State<LeadDemandReport> {
  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height;
    double mywidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ManagerDropdown(),
          SizedBox(height: myheight/50),
          LeadDropdown(),
          SizedBox(height: myheight/50),
          DemandStatusDropdown(),
          SizedBox(height: myheight/50),
          SizedBox(
            width: mywidth,
            child: CommonButton(
              onPressed: () {},
              text: "Download",
            ),
          )
        ],
      ),
    );
  }
}

class AccountManagerReport extends StatefulWidget {
  const AccountManagerReport({Key? key}) : super(key: key);

  @override
  State<AccountManagerReport> createState() => _AccountManagerReportState();
}

class _AccountManagerReportState extends State<AccountManagerReport> {
  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height;
    double mywidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ManagerDropdown(),
          SizedBox(height: myheight/50),
          ClientNameDropdown(),
          SizedBox(height: myheight/50),
          DemandStatusDropdown(),
          SizedBox(height: myheight/50),
          SizedBox(
            width: mywidth,
            child: CommonButton(
              onPressed: () {},
              text: "Download",
            ),
          )
        ],
      ),
    );
  }
}

class ClientReport extends StatefulWidget {
  const ClientReport({Key? key}) : super(key: key);

  @override
  State<ClientReport> createState() => _ClientReportState();
}

class _ClientReportState extends State<ClientReport> {
  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height;
    double mywidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ManagerDropdown(),
          SizedBox(height: myheight/50),
          LeadDropdown(),
          SizedBox(height: myheight/50),
          ClientNameDropdown(),
          SizedBox(height: myheight/50),
          SizedBox(
            width: mywidth,
            child: CommonButton(
              onPressed: () {},
              text: "Download",
            ),
          )
        ],
      ),
    );
  }
}

class SubVendorReport extends StatefulWidget {
  const SubVendorReport({Key? key}) : super(key: key);

  @override
  State<SubVendorReport> createState() => _SubVendorReportState();
}

class _SubVendorReportState extends State<SubVendorReport> {
  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height;
    double mywidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ManagerDropdown(),
          SizedBox(height: myheight/50),
          LeadDropdown(),
          SizedBox(height: myheight/50),
          SubvendorDropdown(),
          SizedBox(height: myheight/50),
          SizedBox(
            width: mywidth,
            child: CommonButton(
              onPressed: () {},
              text: "Download",
            ),
          )
        ],
      ),
    );
  }
}

class ClientReportCount extends StatefulWidget {
  const ClientReportCount({Key? key}) : super(key: key);

  @override
  State<ClientReportCount> createState() => _ClientReportCountState();
}

class _ClientReportCountState extends State<ClientReportCount> {
  @override

  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height;
    double mywidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          LeadDropdown(),
          SizedBox(height: myheight/50),
          ClientNameDropdown(),
          SizedBox(height: myheight/50),
          SizedBox(
            width: mywidth,
            child: CommonButton(
              onPressed: () {},
              text: "Download",
            ),
          )
        ],
      ),
    );
  }
}





