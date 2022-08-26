import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({Key? key, required String title}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Center(
            child: Stack(
              children: const <Widget>[
                CircleAvatar(
                  radius: 20.0,
                  backgroundImage: AssetImage("assets/images/profile.png"),
                )

              ],
            ),),
        ],
      ),
    );
  }
}