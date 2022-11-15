import 'package:deeging_frontend/views/connections.dart';
import 'package:deeging_frontend/widgets/update_student_profile.dart';
import 'package:deeging_frontend/widgets/upload_photo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
                        width: 30.0,
                      ),
                      Column(
                        children: [
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
                                fontWeight: FontWeight.normal,
                                height: 1),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Color.fromRGBO(132, 132, 132, 1),
                                size: 18,
                              ),
                              Text(
                                'San Francisco, CA',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(132, 132, 132, 1),
                                    fontFamily: 'SF Pro Text Regular',
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              ),
                            ],
                          ),
                        ],
                      ),

                      // Padding(
                      //   padding: const EdgeInsets.only(bottom: 30.0),
                      //   child: IconButton(
                      //     icon: const Icon(
                      //       Icons.message,
                      //       color: Color.fromARGB(255, 28, 23, 23),
                      //       size: 50.0,
                      //       fill: 0.0,
                      //     ),
                      //     onPressed: () {
                      //       sendMessageRequest(context);
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ButtonBar(
                        children: [
                          // OutlinedButton(
                          //   onPressed: null,
                          //   style: ButtonStyle(
                          //     backgroundColor: MaterialStateProperty.all(
                          //         Color.fromARGB(0, 0, 0, 0)),
                          //     shape: MaterialStateProperty.all(
                          //         RoundedRectangleBorder(
                          //       borderRadius: BorderRadius.circular(15.0),
                          //     )),
                          //   ),
                          //   child: const Text(
                          //     "Connection",
                          //   ),
                          // ),
                          OutlinedButton(
                            onPressed: (){
                              sendMessageRequest(context);
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(255, 1, 4, 10)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              )),
                            ),
                            child: const Text(
                              "Message",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(width: 10.0,),
                          OutlinedButton(
                            onPressed: null,
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              )),
                            ),
                            child: const Text("Wave 👋"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
           
                const SizedBox(
                  height: 10.0,
                ),
                GestureDetector(
                  onTap: () => studentProfileUpdate(context),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      textAlign: TextAlign.center,
                      'Looking for Hiking Partner in the wood. If you are this person hit me up',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                   Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 135.0),
                  child: Row(
                     crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                     const Icon(FontAwesomeIcons.snapchat,
                          color: Colors.black, size: 30.0),
                      const SizedBox(
                        width: 10.0,
                      ),
                      const Icon(FontAwesomeIcons.linkedinIn,
                          color: Colors.black, size: 30.0),
                      const SizedBox(
                        width: 10.0,
                      ),
                      const Icon(FontAwesomeIcons.instagram,
                          color: Colors.black, size: 30.0),
                    ],
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
                    'Connections',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        ),
                  ),
                  
                ),
                const Connections(),
                
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
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                // GestureDetector(
                //   onTap: () => Get.to(const Connections()),
                //   child: const SettingsIcon(
                //     myicon: CupertinoIcons.chat_bubble_2,
                //     nameSettings: 'See connections',
                //   ),
                // ),
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
                GestureDetector(
                  onTap: () {
                    studentProfileUpdate(context);
                  },
                  child: const SettingsIcon(
                    myicon: Icons.privacy_tip_outlined,
                    nameSettings: 'Update Profile',
                  ),
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
