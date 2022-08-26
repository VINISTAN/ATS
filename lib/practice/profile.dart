import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({Key? key,}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {


            },
            child: Center(
              child: CircleAvatar(
                radius: 20.0,
                backgroundImage: AssetImage("assets/images/profile.png"),
              ),),
          ),
        ],
      ),
    );
  }
}
class ProfileBox extends StatefulWidget {
  const ProfileBox({Key? key}) : super(key: key);

  @override
  State<ProfileBox> createState() => _ProfileBoxState();
}

class _ProfileBoxState extends State<ProfileBox> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height/40,
      width: width/10,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Sign Out")
              ],
            ),
            Row(
              children: [
                Expanded(flex: 3,child: Text("Vinistan"),),
                Expanded(flex: 3,child: Text("Thiru"),)
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PopUpMen extends StatelessWidget {
  final List<PopupMenuEntry> menuList;
  final Widget? icon;
  const PopUpMen({Key? key, required this.menuList, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      itemBuilder: ((context) => menuList),
      icon: icon,
    );
  }
}

