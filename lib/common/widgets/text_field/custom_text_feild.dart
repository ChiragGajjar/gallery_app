import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class CustomTxtFieldWithBtn extends StatelessWidget {
  TextEditingController controller;
  TextInputType inputType;
  TextInputAction action;
  int? maxLine = 1;
  double fontSize;
  String? fontFamily;
  String hintText;
  bool isRequired;
  bool isEditing;
  FocusNode? myFocusNode;
  VoidCallback onPress;

  CustomTxtFieldWithBtn({
    required this.controller,
    required this.inputType,
    required this.action,
    this.maxLine,
    this.fontSize = 12,
    this.fontFamily,
    this.hintText = '',
    this.myFocusNode,
    this.isRequired = false,
    this.isEditing = false,
    required this.onPress,
  }) {
    fontFamily = fontFamily;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextField(
        keyboardType: inputType,
        textInputAction: action,
        controller: controller,
        maxLength: 55,
        maxLengthEnforcement: MaxLengthEnforcement.enforced,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          counterText: "",
          labelText: isRequired ? '$hintText *' : hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          labelStyle: const TextStyle(
            color: Colors.black,
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        style: TextStyle(
          fontFamily: fontFamily,
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
