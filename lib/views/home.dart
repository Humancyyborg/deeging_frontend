import 'package:deeging_frontend/constants/themes.dart';
import 'package:deeging_frontend/models/data.dart';
import 'package:deeging_frontend/views/home_chat.dart';
import 'package:deeging_frontend/views/message_request.dart';
import 'package:deeging_frontend/views/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/profile_photo.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          // IconButton(
          //   icon: const Icon(
          //     CupertinoIcons.waveform_path,
          //     color: Colors.black,
          //     size: 26.0,
          //   ),
          //   onPressed: () {
          //     Get.off( const Home(), transition: Transition.zoom);
          //   },

          // ),
          // IconButton(
          //   icon: const Icon(
          //     CupertinoIcons.chat_bubble,
          //     color: Colors.black,
          //     size: 26.0,
          //   ),
          //   onPressed: () {
          //     Get.off( const HomeChats(), transition: Transition.zoom);
          //   },

          // ),

          IconButton(
            icon: const Icon(
              CupertinoIcons.bell,
              color: Colors.black,
              size: 28.0,
            ),
            onPressed: () {
              //Get.to( const MessageRequestScreen(), transition: Transition.zoom);
              PersistentNavBarNavigator.pushNewScreen(
                context,
                screen: const MessageRequestScreen(),
                withNavBar: true, // OPTIONAL VALUE. True by default.
                pageTransitionAnimation: PageTransitionAnimation.cupertino,
              );
            },
          ),
          GestureDetector(
            onTap: () {
              //Get.to( const Profile(), transition: Transition.zoom);
              PersistentNavBarNavigator.pushNewScreen(
                context,
                screen: const Profile(),
                withNavBar: true, // OPTIONAL VALUE. True by default.
                pageTransitionAnimation: PageTransitionAnimation.cupertino,
              );
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 10.0, 20.0, 10.0),
              child: OwnersProfileImage(
                  ownersImageUrl: currentUser.avatar, size: 36.0),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Students Nearby',
                  style: Palette.bodyTextSyle,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              GridView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 5.0,
                  mainAxisSpacing: 5.0,
                ),
                itemCount: students.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      //Get.to( const Profile(), transition: Transition.zoom);
                      PersistentNavBarNavigator.pushNewScreen(
                        context,
                        screen: const Profile(),
                        withNavBar: false, // OPTIONAL VALUE. True by default.
                        pageTransitionAnimation:
                            PageTransitionAnimation.cupertino,
                      );
                    },
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 50.0,
                          backgroundImage: AssetImage(
                            students[index].avatar,
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        Text(
                          students[index].firstName,
                          style: Palette.bodyTextSyle,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const Profile(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
