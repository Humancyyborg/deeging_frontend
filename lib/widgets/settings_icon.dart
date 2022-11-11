import 'package:flutter/material.dart';

class SettingsIcon extends StatelessWidget {
  // final  IconData icons;
  final IconData myicon;
  final String nameSettings;
  const SettingsIcon(
      {Key? key, required this.myicon, required this.nameSettings})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Icon(
            myicon, //Icons.notification_add,
            size: 30.0,
            color: Colors.black,
          ),
          const SizedBox(
            width: 15.0,
          ),
          Text(
            nameSettings,
            textAlign: TextAlign.left,
            style: const TextStyle(
              color: Colors.black,
              fontFamily: 'SF pro Regular',
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}