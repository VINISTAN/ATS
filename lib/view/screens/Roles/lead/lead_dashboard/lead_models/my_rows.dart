import 'package:flutter/material.dart';

class MyRows extends StatelessWidget {
  final String row_name;
  final String value;
  const MyRows({Key? key, required this.row_name, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(row_name,
    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(value,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
