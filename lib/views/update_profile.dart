import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class UpdateProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "Update Profile".text.xl4.semiBold.color(Colors.black).make(),
                const SizedBox(height: 20.0,),
                "Account details".text.xl2.make(),
                Expanded(
                  child: CupertinoFormSection(
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
                            placeholder: "Enter Address",
                          ),
                          prefix: "Address".text.make(),
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
                          prefix: "Major".text.make(),
                        ),
                        //  CupertinoFormRow(
                        //   child: CupertinoSwitch(
                        //     value: true,
                        //     onChanged: (value) {},
                        //   ),
                        //   prefix: "I have graduated".text.make(),
                        // ),
                      ]),
                ),
                  
                20.heightBox,
                Material(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}