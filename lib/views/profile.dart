import 'package:deeging_frontend/views/connections.dart';
import 'package:deeging_frontend/widgets/update_student_profile.dart';
import 'package:deeging_frontend/widgets/upload_photo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/themes.dart';
import '../widgets/confirm_message.dart';
import '../widgets/send_message.dart';
import '../widgets/settings_icon.dart';
import 'package:get/get.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                        width: 15.0,
                      ),
                      Column(
                        children: const [
                          Text(
                            'Gloria Mckinney',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
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
                                fontSize: 16,
                                letterSpacing: 1.3,
                                fontWeight: FontWeight.normal,
                                height: 1),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'San Francisco, CA',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(132, 132, 132, 1),
                                fontFamily: 'SF Pro Text Regular',
                                fontSize: 16,
                                letterSpacing: 1.3,
                                fontWeight: FontWeight.normal,
                                height: 1),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30.0),
                        child: IconButton(
                          icon: const Icon(
                            Icons.message,
                            color: Color.fromARGB(255, 28, 23, 23),
                            size: 50.0,
                            fill: 0.0,
                          ),
                          onPressed: () {
                            sendMessageRequest(context);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
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
                  height: 10.0,
                ),
                // const Padding(
                //   padding: EdgeInsets.symmetric(horizontal: 20.0),
                //   child: Text(
                //     '+375(29)9638433',
                //     textAlign: TextAlign.left,
                //     style: TextStyle(
                //         color: Color.fromRGBO(19, 19, 19, 1),
                //         fontFamily: 'SF Pro Text Regular',
                //         fontSize: 17,
                //         letterSpacing: 1.3,
                //         fontWeight: FontWeight.normal,
                //         height: 1),
                //   ),
                // ),
                const SizedBox(
                  height: 10.0,
                ),
                GestureDetector(
                  onTap: () => studentProfileUpdate(context),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'Update',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Gilroy',
                        fontSize: 17,
                        letterSpacing: 1.3,
                        fontWeight: FontWeight.normal,
                        height: 1,
                      ),
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
                    'SCHOOL',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.grey,
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
                        color: Colors.black,
                        fontSize: 17,
                        letterSpacing: 1.3,
                        fontWeight: FontWeight.w400,
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
                    'MAJOR OR INTEREST',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.grey,
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
                        color: Colors.black,
                        fontSize: 17,
                        letterSpacing: 1.3,
                        fontWeight: FontWeight.w400,
                        height: 1),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'GRADUTATING 2025',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.grey,
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
                const Divider(),
                const SizedBox(
                  height: 15.0,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'LOOKING FOR',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 17,
                        letterSpacing: 1.3,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'I’m looking for a hiking partner in the mountains',
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
                GestureDetector(
                  onTap: () => Get.to(const Connections()),
                  child: const SettingsIcon(
                    myicon: CupertinoIcons.chat_bubble_2,
                    nameSettings: 'See connections',
                  ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
