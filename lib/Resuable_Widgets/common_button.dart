import 'package:flutter/material.dart';

class CommonButton extends StatefulWidget {
  final GestureTapCallback onPressed;
  final String text;
  const CommonButton({Key? key, required this.onPressed, required this.text}) : super(key: key);

  @override
  State<CommonButton> createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {
  @override
  void initState() {
    super.initState();
  }
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(widget.text),
      onPressed: widget.onPressed,
    );
  }
}
