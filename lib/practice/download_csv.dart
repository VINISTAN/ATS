import 'dart:html';

import'package:flutter/material.dart';
import'package:csv/csv.dart';
import'package:path_provider/path_provider.dart';
import'package:file_picker/file_picker.dart';
import 'package:random_string/random_string.dart';
import 'dart:convert';

class GetCsv extends StatefulWidget {
  const GetCsv({Key? key}) : super(key: key);

  @override
  State<GetCsv> createState() => _GetCsvState();
}

class _GetCsvState extends State<GetCsv> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Text("Thirumoorthi"),
    );
  }
}
