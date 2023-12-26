import 'package:auth_design/auth1_theme/colors.dart';
import 'package:flutter/material.dart';

class CustomFormField extends StatefulWidget {
  TextStyle style;
  Color cursor_color;
  TextStyle hintStyle;
  Text label;
  Icon prefix_icon;
  String hint;
  int index;
  CustomFormField(
      {required this.style,
      required this.cursor_color,
      required this.label,
      required this.hintStyle,
      required this.prefix_icon,
      required this.hint,
      required this.index});
  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  int selectedindex = -1;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: selectedindex == widget.index
              ? Colors.grey.withOpacity(0.4)
              : auth1_bac),
      child: TextFormField(
        onTap: () {
          setState(() {
            selectedindex = widget.index;
          });
        },
     
        style: widget.style,
        cursorColor: widget.cursor_color,
        decoration: InputDecoration(
          hintText: widget.hint,
          hintStyle: widget.hintStyle,
          label: widget.label,
          prefixIcon: widget.prefix_icon,
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          disabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
        ),
      ),
    );
  }
}
