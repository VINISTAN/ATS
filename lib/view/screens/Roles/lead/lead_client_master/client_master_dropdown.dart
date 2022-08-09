import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class ClientMasterDropdown extends StatefulWidget {
  const ClientMasterDropdown({Key? key}) : super(key: key);

  @override
  State<ClientMasterDropdown> createState() => _ClientMasterDropdownState();
}

class _ClientMasterDropdownState extends State<ClientMasterDropdown> {
  final List<String> client_type_list = [
    'Client','Subvendor'
  ];
  String ? client_type;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          isExpanded: true,
          barrierColor: Colors.black,
          hint: Row(
            children: const [
              SizedBox(
                width: 4,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Client Name',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
          items: client_type_list
              .map((item) =>
              DropdownMenuItem<String>(
                value: item,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ))
              .toList(),
          value: client_type,
          onChanged: (value) {
            setState(() {
              client_type = value as String;
            });
          },
          icon: const Icon(
            Icons.arrow_drop_down,
          ),
          iconSize: 20,
          iconEnabledColor: Colors.black,
          iconDisabledColor: Colors.grey,
          buttonDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),

            color: Colors.white,
          ),
          buttonElevation: 2,
          dropdownDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.white,
          ),
          dropdownElevation: 8,
          scrollbarRadius: const Radius.circular(40),
          scrollbarThickness: 6,
          scrollbarAlwaysShow: true,
          offset: const Offset(-20, 0),
        ),
      ),
    );
  }
}
