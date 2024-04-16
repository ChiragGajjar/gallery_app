
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldWithBorder extends StatelessWidget {
  TextEditingController controller;
  TextInputType inputType;
  TextInputAction action;
  int? maxLine = 1;
  double fontSize;
  String? fontFamily;
  String hintText;
  bool obscureTextField;
  bool withIcon;
  bool isRequired;
  FocusNode myFocusNode;
  bool isNumeric;
  bool isDouble;
  bool isAllowSpace;
  bool isDigitWithHighphen;
  bool isLimitCharacter;
  int characterLimit;
  bool alphaWithSpace;
  bool alphaWithoutSpace;
  bool prventLength;
  bool enabled;
  bool readOnly;
  bool isExpiryDate;
  ValueChanged<String>? onTextChange;

  TextFieldWithBorder({
    required this.controller,
    required this.inputType,
    required this.action,
    this.maxLine,
    this.fontSize = 12,
    this.fontFamily,
    this.hintText = '',
    this.obscureTextField = false,
    this.withIcon = false,
    required this.myFocusNode,
    this.isRequired = false,
    this.isNumeric = false,
    this.isDouble = false,
    this.isAllowSpace = false,
    this.isLimitCharacter = false,
    this.alphaWithSpace = false,
    this.alphaWithoutSpace = false,
    this.prventLength = false,
    this.isDigitWithHighphen = false,
    this.characterLimit = 0,
    this.onTextChange,
    this.enabled = true,
    this.readOnly = false,
    this.isExpiryDate = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextField(
        onChanged: (text) {
          if (onTextChange != null) {
            onTextChange!(text);
          }
        },
        inputFormatters: isAllowSpace
            ? [FilteringTextInputFormatter.allow(RegExp("[a-z]"))]
            : isNumeric
                ? [FilteringTextInputFormatter.allow(RegExp("[0-9]"))]
                : isExpiryDate
                    ? [
                        FilteringTextInputFormatter.allow(RegExp("(?:0[1-9]|1[0-2])/[0-9]{2}"))
                      ]
                    : prventLength
                        ? [LengthLimitingTextInputFormatter(5)]
                        : isDigitWithHighphen
                            ? [
                                FilteringTextInputFormatter.allow(RegExp("[0-9-]"))
                              ]
                            : isLimitCharacter
                                ? [
                                    LengthLimitingTextInputFormatter(characterLimit)
                                  ]
                                : alphaWithSpace
                                    ? [
                                        FilteringTextInputFormatter.allow(RegExp("[A-Za-z ]"))
                                      ]
                                    : alphaWithoutSpace
                                        ? [
                                            FilteringTextInputFormatter.allow(RegExp("[A-Za-z0-9]"))
                                          ]
                                        : isDouble
                                            ? [
                                                FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}',),)
                                              ]
                                            : [],
        maxLength: isLimitCharacter ? characterLimit : 200,
        keyboardType: inputType,
        textInputAction: action,
        controller: controller,
        enabled: enabled,
        readOnly: readOnly,
        obscureText: obscureTextField,
        focusNode: myFocusNode,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          counterText: "",
          labelText: isRequired ? '$hintText *' : hintText,
          hintStyle: const TextStyle(color: Colors.black),
          labelStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        style: TextStyle(
            fontFamily: fontFamily,
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
            color: Colors.black54,
        ),
      ),
    );
  }
}
