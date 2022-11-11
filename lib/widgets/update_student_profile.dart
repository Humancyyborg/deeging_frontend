import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Future<void> studentProfileUpdate(BuildContext context) {
  return showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 100.0),
            child: Container(
                padding: Vx.m32,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "Update Profile".text.xl4.semiBold.color(Colors.black).make(),
                    const SizedBox(height: 20.0,),
                    "Account details".text.xl2.make(),
                    CupertinoFormSection(
                        header: "Personal Details".text.make(),
                        children: [
                          CupertinoFormRow(
                            child: CupertinoTextFormFieldRow(
                              placeholder: "Enter name",
                            ),
                            prefix: "Name".text.make(),
                          ),
                          CupertinoFormRow(
                            child: CupertinoTextFormFieldRow(
                              placeholder: "Enter phone",
                            ),
                            prefix: "Phone".text.make(),
                          ),
                           CupertinoFormRow(
                            child: CupertinoTextFormFieldRow(
                               keyboardType: TextInputType.multiline,
  maxLines: null,
  minLines: 3,
                              placeholder: "Enter possible interet or people you would like to meet",
                            ),
                            prefix: "Looking For".text.make(),
                          ),
                           CupertinoFormRow(
                            child: CupertinoTextFormFieldRow(
                              placeholder: "Enter current school",
                            ),
                            prefix: "School".text.make(),
                          ),
                             CupertinoFormRow(
                            child: CupertinoTextFormFieldRow(
                              placeholder: "Enter current or intended major",
                            ),
                            prefix: "Major or Interest".text.make(),
                          ),
                          CupertinoFormRow(
                            child: CupertinoTextFormFieldRow(
                              placeholder: "Enter current or intended major",
                            ),
                            prefix: "Major or Interest".text.make(),
                          ),
                         
                        
                        ]),
                      
                    20.heightBox,
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Material(
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
          ),
        ),
      );
    },
  );
}