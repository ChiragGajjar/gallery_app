
import 'package:flutter/material.dart';

class CustomActionButton extends StatelessWidget {
  final void Function() onPressed;
  final String buttonText;

  const CustomActionButton({super.key, required this.onPressed, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed:onPressed,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<
            RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            side: const BorderSide(color: Colors.black26),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        foregroundColor: MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 5.0, right: 5.0, top: 5.0, bottom: 5.0),
        child: Text(
          buttonText,
          style: TextStyle(color:Colors.grey.shade700),
        ),
      ),
    );
  }
}
