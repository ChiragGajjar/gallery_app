import 'package:flutter/material.dart';

class ButtonClose extends StatelessWidget {
  const ButtonClose({
    super.key,
    required bool visible,
  })  : _visible = visible;

  final bool _visible;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _visible ? 1.0 : 0.0,
      duration: const Duration(milliseconds: 500),
      child: Align(
        alignment: Alignment.topRight,
        child: Padding(
          padding: const EdgeInsets.only(top: 32, right: 16),
          child: ClipOval(
            child: Material(
              color: const Color.fromRGBO(255, 255, 240, 0.5), // button color
              child: InkWell(
                splashColor: Colors.grey[200], // inkwell color
                child: const SizedBox(
                  width: 36,
                  height: 36,
                  child: Icon(Icons.close),
                ),
                onTap: () => Navigator.of(context).pop(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
