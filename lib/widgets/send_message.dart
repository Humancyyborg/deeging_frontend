 import 'package:flutter/material.dart';

sendMessageRequest(BuildContext context) {


  // set up the buttons
  Widget cancelButton = TextButton(
    child: const Text("Send"),
    onPressed:  () {},
  );
  Widget continueButton = TextButton(
    child: const Text("Cancel"),
    onPressed:  () {},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Text("Send Message"),
    content: const Text("Would you like to send message request to Daniel?"),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}