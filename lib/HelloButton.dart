import 'package:flutter/material.dart';

class HelloButton extends StatelessWidget {
  const HelloButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('Hello'),
      onPressed: () {
        action(context);
      },
    );
  }

  void action(BuildContext buildContext) {
    var alertDialog = const AlertDialog(
      title: Text('Event-Handling'),
      content: Text('Hello World!'),
    );

    showDialog(
      context: buildContext,
      builder: (BuildContext context) {
        return alertDialog;
      },
    );
  }
}
