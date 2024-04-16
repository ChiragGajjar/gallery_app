import 'package:flutter/material.dart';

class CenteredSpinner extends StatelessWidget {
  final Color? color;
  const CenteredSpinner({Key? key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: color,
      ),
    );
  }
}
