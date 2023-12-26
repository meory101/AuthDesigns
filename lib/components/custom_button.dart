import 'package:flutter/cupertino.dart';

class CustomButton extends StatefulWidget {
  double width;
  double height;
  Color color;
  double radius;
  Widget label;
  CustomButton(
      {required this.width,
      required this.height,
      required this.color,
      required this.radius,
      required this.label});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(widget.radius),
      ),
      child: widget.label,
    );
  }
}
