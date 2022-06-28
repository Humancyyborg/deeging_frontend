import 'package:deeging_frontend/views/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              "Sign Up".text.xl5.bold.color(Colors.black).make(),
              SizedBox(height: 20.0,),
              "Create your account".text.xl2.make(),
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
                    )
                  ]),
              CupertinoFormSection(header: "User".text.make(), children: [
                CupertinoFormRow(
                  child: CupertinoTextFormFieldRow(
                    placeholder: "Enter email",
                  ),
                  prefix: "Email".text.make(),
                ),
                CupertinoFormRow(
                  child: CupertinoTextFormFieldRow(
                    obscureText: true,
                  ),
                  prefix: "Password".text.make(),
                ),
                // CupertinoFormRow(
                //   child: CupertinoTextFormFieldRow(
                //     obscureText: true,
                //   ),
                //   prefix: "Confirm Password".text.make(),
                // )
              ]),
              CupertinoFormSection(
                  header: "Terms & Conditions".text.make(),
                  children: [
                    CupertinoFormRow(
                      child: CupertinoSwitch(
                        value: true,
                        onChanged: (value) {},
                      ),
                      prefix: "I Agree".text.make(),
                    ),
                  ]),
              20.heightBox,
              GestureDetector(
                onTap: () =>  Get.to( LogIn(), transition: Transition.zoom),
                child: Material(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8),
                  child: InkWell(
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: const Text(
                        "SignUp",
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
    );
  }
}