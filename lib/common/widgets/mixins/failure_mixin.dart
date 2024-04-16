import 'package:flutter/material.dart';

import '../../core/failure/failure.dart';

mixin FailureMixin on Widget {
  void showFailureMessage(Failure f, BuildContext context) {

    if(f.failureMessage() == "Offline"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.orange,
          content: Row(
            children: [
              Expanded(child: Text("${f.failureMessage()}, Connection error to Gallery App")),
              TextButton(
                onPressed: (){
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.orange.shade700,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Restart App'),
                ),
              ),
            ],
          ),
          duration:const Duration(seconds: 3),
        ),
      );
    }else{
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.orange,
          content: Text(
            f.failureMessage(),
          ),
        ),
      );
    }
  }

  Widget failureWidget(
    Failure f,
    BuildContext context, {
    Function? onTap,
    Color? color,
  }) =>
      Text(f.failureMessage());
}
