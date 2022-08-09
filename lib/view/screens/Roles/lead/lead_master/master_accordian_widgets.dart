import 'package:flutter/material.dart';

import '../../../../../Resuable_Widgets/drop_down.dart';
import '../../../../../Resuable_Widgets/common_textfield.dart';
import 'lead_master_dropdown.dart';

class AddskillContainer extends StatefulWidget {
  const AddskillContainer({Key? key}) : super(key: key);

  @override
  State<AddskillContainer> createState() => _AddskillContainerState();
}

class _AddskillContainerState extends State<AddskillContainer> {
  TextEditingController new_skills = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height;
    double mywidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SearchListDropdown(),
          SizedBox(height: myheight / 40),
          MytextField(
              label: "New Skills", hint: "Skills", textcontroller: new_skills),
          SizedBox(height: myheight / 50),
          SizedBox(
              width: mywidth / 1.2,
              height: myheight / 18,
              child: ElevatedButton(
                  onPressed: () {
                    print((new_skills).text);
                  },
                  child: Text("Add Skills")))
        ],
      ),
    );
  }
}

class AddLocation extends StatefulWidget {
  const AddLocation({Key? key}) : super(key: key);

  @override
  State<AddLocation> createState() => _AddLocationState();
}

class _AddLocationState extends State<AddLocation> {
  TextEditingController new_location = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height;
    double mywidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AddLocationDropdown(),
          SizedBox(height: myheight / 50),
          MytextField(
            label: "New Location",
            hint: "Location",
            textcontroller: new_location,
          ),
          SizedBox(height: myheight / 50),
          SizedBox(
              height: myheight / 18,
              width: mywidth / 1.2,
              child: ElevatedButton(
                  onPressed: () {
                    print((new_location).text);
                  },
                  child: Text("Add Location")))
        ],
      ),
    );
  }
}

class AddClient extends StatefulWidget {
  const AddClient({Key? key}) : super(key: key);

  @override
  State<AddClient> createState() => _AddClientState();
}

class _AddClientState extends State<AddClient> {
  TextEditingController new_client = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height;
    double mywidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClientNameDropdown(),
          SizedBox(height: myheight / 50),
          MytextField(
            label: "New Client",
            hint: "Type New Client",
            textcontroller: new_client,
          ),
          SizedBox(height: myheight / 50),
          SizedBox(
              height: myheight / 18,
              width: mywidth / 1.2,
              child: ElevatedButton(
                  onPressed: () {
                    print("new client :${(new_client).text}");
                  },
                  child: Text("Add Client")))
        ],
      ),
    );
  }
}

class AddSubmission extends StatefulWidget {
  const AddSubmission({Key? key}) : super(key: key);

  @override
  State<AddSubmission> createState() => _AddSubmissionState();
}

class _AddSubmissionState extends State<AddSubmission> {
  TextEditingController status = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height;
    double mywidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SubmissionStatusDropdown(),
          SizedBox(height: myheight / 50),
          MytextField(
            label: "Status",
            hint: "New Status",
            textcontroller: status,
          ),
          SizedBox(height: myheight / 50),
          SizedBox(
              height: myheight / 18,
              width: mywidth / 1.2,
              child: ElevatedButton(
                  onPressed: () {
                    print("status :${(status).text}");
                  },
                  child: Text("Add Submission")))
        ],
      ),
    );
  }
}

class AddSubvendor extends StatefulWidget {
  const AddSubvendor({Key? key}) : super(key: key);

  @override
  State<AddSubvendor> createState() => _AddSubvendorState();
}

class _AddSubvendorState extends State<AddSubvendor> {
  TextEditingController newsub_vendor = TextEditingController();
  TextEditingController subvendor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height;
    double mywidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MytextField(
            label: "New Subvendors",
            hint: "Search Subvendors",
            textcontroller: newsub_vendor,
          ),
          SizedBox(
            height: myheight / 50,
          ),
          MytextField(
            label: "Subvendor",
            hint: "New Subvendor",
            textcontroller: subvendor,
          ),
          SizedBox(
            height: myheight / 50,
          ),
          SizedBox(
              height: myheight / 18,
              width: mywidth / 1.2,
              child: ElevatedButton(
                  onPressed: () {
                    print("new subvendor : ${(newsub_vendor).text}");
                    print("subvendor : ${(subvendor).text}");
                  },
                  child: Text("Add Sub vendor")))
        ],
      ),
    );
  }
}
