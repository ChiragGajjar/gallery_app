
// ignore: must_be_immutable
import 'package:flutter/material.dart';

class TextFieldBordered extends StatelessWidget {
  TextEditingController controller;
  TextInputType inputType;
  TextInputAction action;
  int? maxLine = 1;
  double fontSize;
  String? fontFamily;
  String hintText;
  bool obscureTextField;

  TextFieldBordered(
      {required this.controller,
      required this.inputType,
      required this.action,
      this.maxLine,
      this.fontSize = 12,
      this.fontFamily,
      this.hintText = '',
      this.obscureTextField = false,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      margin: const EdgeInsets.symmetric(vertical: 3),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black38),
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
      ),
      child: SizedBox(
        height: 40,
        child: TextField(
          keyboardType: inputType,
          textInputAction: action,
          controller: controller,
          obscureText: obscureTextField,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(
              bottom: 20 / 2, // HERE THE IMPORTANT PART
            ),
            border: InputBorder.none,
            hintText: hintText,
          ),
          style: TextStyle(
            fontFamily: fontFamily,
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
