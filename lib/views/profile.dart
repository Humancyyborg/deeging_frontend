import 'package:deeging_frontend/views/home_chat.dart';
import 'package:deeging_frontend/widgets/update_student_profile.dart';
import 'package:deeging_frontend/widgets/upload_photo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../constants/themes.dart';
import '../widgets/settings_icon.dart';
import 'package:get/get.dart';

class StudentProfile extends StatefulWidget {
  const StudentProfile({Key? key}) : super(key: key);

  @override
  _StudentProfileState createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: ListView(
            children: [
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  '@wdlam',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(38, 117, 235, 1),
                      fontFamily: 'SF Pro Text Regular',
                      fontSize: 25,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => uPloadPhoto(context),
                      child: Container(
                        width: 82,
                        height: 82,
                        decoration: const BoxDecoration(
                          borderRadius: Palette.kBorderRadius30,
                          image: DecorationImage(
                              image: AssetImage('assets/images/photo1.jpg'),
                              fit: BoxFit.fitWidth),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      children: const [
                        Text(
                          'Gloria Mckinney',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(19, 19, 19, 1),
                              fontFamily: 'SF Pro Text Regular',
                              fontSize: 23,
                              letterSpacing: -0.2,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          '+375(29)9638433',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(132, 132, 132, 1),
                              fontFamily: 'SF Pro Text Regular',
                              fontSize: 17,
                              letterSpacing: 1.3,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        ),
                      ],
                    ),
                    const SizedBox(width: 10.0,),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(vertical:0.0),
                    //   child: IconButton(
                    //     icon: const Icon(
                    //       CupertinoIcons.settings,
                    //       color: Colors.black,
                    //       size: 50.0,
                    //     ),
                    //     onPressed: () {
                    //       //Get.to( const HomeChats(), transition: Transition.zoom);
                    //     },
                    //   ),
                    // ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Account',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'SF Pro Text Regular',
                      fontSize: 20,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w600,
                      height: 1),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  '+375(29)9638433',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(19, 19, 19, 1),
                      fontFamily: 'SF Pro Text Regular',
                      fontSize: 17,
                      letterSpacing: 1.3,
                      fontWeight: FontWeight.normal,
                      height: 1),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              GestureDetector(
                onTap: () => studentProfileUpdate(context),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Tap to update account info',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(132, 132, 132, 1),
                        fontFamily: 'Gilroy',
                        fontSize: 17,
                        letterSpacing: 1.3,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Divider(),
              const SizedBox(
                height: 15.0,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'School',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Gilroy',
                      fontSize: 17,
                      letterSpacing: 1.3,
                      fontWeight: FontWeight.normal,
                      height: 1),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Minerva University',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(132, 132, 132, 1),
                      fontSize: 17,
                      letterSpacing: 1.3,
                      fontWeight: FontWeight.normal,
                      height: 1),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Divider(),
              const SizedBox(
                height: 15.0,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Major',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Gilroy',
                      fontSize: 17,
                      letterSpacing: 1.3,
                      fontWeight: FontWeight.normal,
                      height: 1),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Computer Science',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(132, 132, 132, 1),
                      fontSize: 17,
                      letterSpacing: 1.3,
                      fontWeight: FontWeight.normal,
                      height: 1),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Divider(),
              const SizedBox(
                height: 15.0,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'I’m Senior Frontend Developer at Microsoft',
                  textAlign: TextAlign.left,
                  style: Palette.bodyTextSyle,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Bio',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(132, 132, 132, 1),
                      fontFamily: 'Gilroy',
                      fontSize: 17,
                      letterSpacing: 1.3,
                      fontWeight: FontWeight.normal,
                      height: 1),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Settings',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Gilroy',
                      fontSize: 20,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w600,
                      height: 1),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const SettingsIcon(
                myicon: Icons.notification_add_outlined,
                nameSettings: 'About',
              ),
              const SizedBox(
                height: 20.0,
              ),
              const SettingsIcon(
                myicon: Icons.people_alt_outlined,
                nameSettings: 'Inivite Friends',
              ),
              const SizedBox(
                height: 20.0,
              ),
              const SettingsIcon(
                myicon: Icons.privacy_tip_outlined,
                nameSettings: 'Privacy',
              ),
              const SizedBox(
                height: 20.0,
              ),
                  GestureDetector(
                onTap: () =>  Get.to( const HomeChats(), transition: Transition.zoom),
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
                        "Message",
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
