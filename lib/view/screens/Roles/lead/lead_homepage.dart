/*
This is lead dashboard page.
This is the root page of all the navigations.

*/
import 'package:flutter/material.dart';

import 'lead_candidate_master/lead_candidate_master.dart';
import 'lead_client_master/lead_client_master.dart';
import 'lead_dashboard/lead_dashboard.dart';
import 'lead_demand.dart';
import 'lead_demand_report/lead_demand_report.dart';
import 'lead_master/lead_masters.dart';
import 'lead_reports/lead_reports.dart';
import 'lead_submission_Report/lead_submission_report.dart';
import 'lead_team_master.dart';

class LeadPage extends StatefulWidget {
  const LeadPage({Key? key}) : super(key: key);

  @override
  State<LeadPage> createState() => _LeadPageState();
}

class _LeadPageState extends State<LeadPage> {
  var CurrentPage = DrawerSections.Dashboard;
  var container;

  @override
  Widget build(BuildContext context) {
    if (CurrentPage == DrawerSections.Dashboard) {
      print("Inside Dashboard Container");
      container = Dashboard();
    } else if (CurrentPage == DrawerSections.Demand) {
      print("Inside Demand Container");
      container = LeadDemand();
    } else if (CurrentPage == DrawerSections.TeamMaster) {
      print("Inside TeamMaster Container");
      container = LeadTeamMaster();
    } else if (CurrentPage == DrawerSections.CandidateMaster) {
      print("Inside Candidate Master Container");
      container = LeadCandidateMaster();
    } else if (CurrentPage == DrawerSections.Masters) {
      print("Inside Masters Container");
      container = LeadMaster();
    } else if (CurrentPage == DrawerSections.Reports) {
      print("Inside Reports Container");
      container = LeadReport();
    } else if (CurrentPage == DrawerSections.SubmissionReport) {
      print("Inside Submission Report Container");
      container = LeadSubmissionReport();
    } else if (CurrentPage == DrawerSections.DemandReport) {
      print("Inside Demand Report Container");
      container = LeadDemandReport();
    } else if (CurrentPage == DrawerSections.ClientMaster) {
      print("Inside Client Master Container");
      container = LeadClientMaster();
    }

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text("Hi! saranya Imran"),
        ),
        centerTitle: true,
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: TextButton.icon(
                  onPressed: () {
                    print("Logout");
                  },
                  icon: Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  label: Text(
                    "Logout",
                    style: TextStyle(color: Colors.white),
                  ))),
        ],
      ),
      body: container,

      //BodyContent(),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                LeadHeaderDrawer(),
                LeadDrawerList(),
              ],
            ),
          ),
        ),
      ),

      //Text("welcome"),
    );
  }

  Widget LeadDrawerList() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 15),
        child: Column(
          children: [
            MenuItem(
              1,
              "Dashboard",
              Icons.dashboard,
              CurrentPage == DrawerSections.Dashboard ? true : false,
            ),
            MenuItem(
              2,
              "Demand",
              Icons.density_medium,
              CurrentPage == DrawerSections.Demand ? true : false,
            ),
            MenuItem(
              3,
              "TeamMaster",
              Icons.group,
              CurrentPage == DrawerSections.TeamMaster ? true : false,
            ),
            MenuItem(
              4,
              "CandidateMaster",
              Icons.account_balance_wallet,
              CurrentPage == DrawerSections.CandidateMaster ? true : false,
            ),
            MenuItem(
              5,
              "Master",
              Icons.account_circle_sharp,
              CurrentPage == DrawerSections.Masters ? true : false,
            ),
            MenuItem(
              6,
              "Reports",
              Icons.document_scanner_sharp,
              CurrentPage == DrawerSections.Reports ? true : false,
            ),
            MenuItem(
              7,
              "SubmissionReport",
              Icons.document_scanner,
              CurrentPage == DrawerSections.SubmissionReport ? true : false,
            ),
            MenuItem(
              8,
              "DemandReport",
              Icons.receipt,
              CurrentPage == DrawerSections.DemandReport ? true : false,
            ),
            MenuItem(
              9,
              "ClientMaster",
              Icons.ad_units,
              CurrentPage == DrawerSections.ClientMaster ? true : false,
            ),
          ],
        ),
      ),
    );
  }

  Widget MenuItem(
    int id,
    String title,
    IconData icon,
    bool selected,
  ) {
    return Material(
      color: selected ? Colors.grey : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              CurrentPage = DrawerSections.Dashboard;
            } else if (id == 2) {
              CurrentPage = DrawerSections.Demand;
            } else if (id == 3) {
              CurrentPage = DrawerSections.TeamMaster;
            } else if (id == 4) {
              CurrentPage = DrawerSections.CandidateMaster;
            } else if (id == 5) {
              CurrentPage = DrawerSections.Masters;
            } else if (id == 6) {
              CurrentPage = DrawerSections.Reports;
            } else if (id == 7) {
              CurrentPage = DrawerSections.SubmissionReport;
            } else if (id == 8) {
              CurrentPage = DrawerSections.DemandReport;
            } else if (id == 9) {
              CurrentPage = DrawerSections.ClientMaster;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(child: Icon(icon)
                  //Icon(Icons.dashboard,size: 20,color: Colors.black,)
                  ),
              Expanded(
                flex: 3,
                child: Text(title),
              )
              //Text("Dashboard",style: TextStyle(fontSize: 20,color: Colors.black)))
            ],
          ),
        ),
      ),
    );
  }
}

class LeadHeaderDrawer extends StatefulWidget {
  const LeadHeaderDrawer({Key? key}) : super(key: key);

  @override
  State<LeadHeaderDrawer> createState() => _LeadHeaderDrawerState();
}

class _LeadHeaderDrawerState extends State<LeadHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 5,
      width: double.infinity,
      color: Colors.blue,
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 10,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage("assets/images/crt_logo.JPG"))),
            ),
            Text(
              "Welcome Dear User",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

enum DrawerSections {
  Dashboard,
  CandidateMaster,
  ClientMaster,
  Demand,
  DemandReport,
  Masters,
  Reports,
  SubmissionReport,
  TeamMaster
}
