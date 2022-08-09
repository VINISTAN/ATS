import 'package:flutter/material.dart';

import '../../../../../Resuable_Widgets/common_textfield.dart';
import '../../../../../Resuable_Widgets/common_button.dart';
import 'client_master_date_picker.dart';
import 'client_master_dropdown.dart';

class CommonFields extends StatefulWidget {
  const CommonFields({Key? key}) : super(key: key);

  @override
  State<CommonFields> createState() => _CommonFieldsState();
}

class _CommonFieldsState extends State<CommonFields> {
  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Column(
          children: [
            MytextField(hint: 'Client Name', label: 'Client Name',),
            SizedBox(height: myheight/50,),
            ClientMasterDropdown(),

          ],
        ),
      ),
    );
  }
}
class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CommonFields(),
            SizedBox(
                width: MediaQuery.of(context).size.width/1.2,
                child: CommonButton(onPressed: (){}, text: "Add"))
          ],
        ),
      ),
    );
  }
}

class Edit extends StatefulWidget {
  const Edit({Key? key}) : super(key: key);

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  TextEditingController connectedby = TextEditingController();
  TextEditingController poc_name = TextEditingController();
  TextEditingController designation = TextEditingController();
  TextEditingController contact_no = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController linkedin_url = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CommonFields(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: MytextField(label: 'Party ID', hint: 'Party ID',),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: DatePicker(),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: MytextField(label: 'Client Name', hint: 'Client Name',),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: MytextField(label: 'POC Name', hint: 'POC Name',textcontroller: poc_name,),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: MytextField(label: 'Connected by', hint: 'Connected by',textcontroller: connectedby,),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: MytextField(label: 'Designation', hint: 'Designation',textcontroller: designation,),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: MytextField(label: 'Contact No', hint: 'Contact No',textcontroller: contact_no,),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: MytextField(label: 'Email', hint: 'Email',textcontroller: email,),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: MytextField(label: 'LinkedIn URL', hint: 'LinkedIn URL',textcontroller: linkedin_url,),
          ),
        ],
      ),
    );
  }
}


