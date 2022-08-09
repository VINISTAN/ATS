import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final String text;
  final String subtext;
  static const titlestyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static const subtitlestyle = TextStyle(fontSize: 20);

  const MyContainer({Key? key, required this.text, required this.subtext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myheight = MediaQuery.of(context).size.height;
    final mywidth = MediaQuery.of(context).size.width;
    return Container(
      height: myheight / 8,
      width: mywidth / 3,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text, style: titlestyle),
          SizedBox(
            height: myheight / 90,
          ),
          Text(
            subtext,
            style: subtitlestyle,
          ),
        ],
      ),
    );
  }
}

class AttendanceContainer extends StatelessWidget {
  final String title;
  final String subtitle;
  final String? content;

  AttendanceContainer(
      {Key? key, required this.title, required this.subtitle, this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height;
    double mywidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: myheight / 8,
            width: mywidth / 1.1,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.blue)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(title,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Text(subtitle,
                      style:
                      TextStyle(fontSize: 20)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
