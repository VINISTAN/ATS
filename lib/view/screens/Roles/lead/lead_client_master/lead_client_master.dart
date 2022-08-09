import 'package:crt_project/view/screens/Roles/lead/lead_client_master/tab_controller.dart';
import 'package:flutter/material.dart';

class LeadClientMaster extends StatefulWidget {
  const LeadClientMaster({Key? key}) : super(key: key);

  @override
  State<LeadClientMaster> createState() => _LeadClientMasterState();
}

class _LeadClientMasterState extends State<LeadClientMaster>with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height;
    double mywidth = MediaQuery.of(context).size.width;
    TabController _tabcontroller = TabController(length: 2, vsync: this);
    return SingleChildScrollView(
      child: Column(
        children: [
          DefaultTabController(
              length: 2,
              child: Container(
                height: myheight/15,
                width: mywidth,
                child: TabBar(
                  controller: _tabcontroller,
                  indicatorColor: Colors.blue,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(
                      text: "Add",
                    ),
                    Tab(text: "Edit",)
                  ],

                ),
              )
          ),
          Container(
            height: myheight,
            child: TabBarView(
                controller: _tabcontroller,
                children: [
              Add(),
              Edit()
            ]),
          )
        ],
      ),
    );
  }
}
