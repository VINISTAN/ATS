import 'package:flutter/material.dart';

import '../../../../Resuable_Widgets/drop_down.dart';

class LeadDemand extends StatefulWidget {
  const LeadDemand({Key? key}) : super(key: key);


  @override
  State<LeadDemand> createState() => _LeadDemandState();
}

class _LeadDemandState extends State<LeadDemand> {
  String ? gender;
  String ? selected_fruit;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 200,
          child: AppDropdownInput<String?>(
            hintText: "Gender",
            options: ["Male", "Female"],
            value: gender,
            onChanged: (String value) {
              setState(() {
                gender = value;
                print("gender : ${gender}");
                // state.didChange(newValue);
              });
            },

            getLabel: (String? value) => value.toString(),
          )

        ),
        SizedBox(height: 50,),
        Container(
            height: 50,
            width: 200,
            child: AppDropdownInput<String?>(
              hintText: "Fruits",
              options: ["Apple", "Orange","Banana"],
              value: selected_fruit,
              onChanged: (String value) {
                setState(() {
                  selected_fruit = value;
                  print("fruit : ${selected_fruit}");
                  // state.didChange(newValue);
                });
              },

              getLabel: (String? value) => value.toString(),
            )

        ),
      ],
    );
  }
}
