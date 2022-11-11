import 'package:flutter/material.dart';

 showAlertDialog(BuildContext context) {


  // set up the buttons
  Widget cancelButton = TextButton(
    child: const Text("Accept"),
    onPressed:  () {},
  );
  Widget continueButton = TextButton(
    child: const Text("Reject"),
    onPressed:  () {},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Text("Comfirm Message"),
    content: const Text("Would you like to accept message from Daniel?"),
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