import 'package:flutter/material.dart';

class PopupModels extends StatefulWidget {
final Widget child;
  const PopupModels({Key? key, required this.child}) : super(key: key);

  @override
  State<PopupModels> createState() => _PopupModelsState();
}

class _PopupModelsState extends State<PopupModels> {
  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height;
    double mywidth = MediaQuery.of(context).size.width;
    return Container(
      height: myheight/4,
      width: mywidth/6,
      child: widget.child
    );
  }
}
