import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../constants/themes.dart';

Future<void> uPloadPhoto(BuildContext context) {
  return showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return Container(
        height: 1500,
        decoration:const  BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft:  Radius.circular(30.0),
                topRight:  Radius.circular(30.0))),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Text(
                'Change your photo avatar',
                style: Palette.kSubtitleStyle,
              ),
              200.heightBox,
             const CircleAvatar(
                radius: 85.0,
                backgroundImage: AssetImage('assets/images/photo1.jpg'),
              ),
                200.heightBox,
            
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child:  Material(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8),
                child: InkWell(
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    width: 150,
                    height: 50,
                    alignment: Alignment.center,
                    child: const Text(
                      "Save",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ).centered(),
              ),
            ],
          ),
        ),
      );
    },
  );
}