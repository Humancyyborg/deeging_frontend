import 'package:deeging_frontend/views/chat_screen.dart';
import 'package:deeging_frontend/views/home.dart';
import 'package:deeging_frontend/views/message_request.dart';
import 'package:deeging_frontend/views/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/data.dart';
import '../widgets/profile_photo.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class HomeChats extends StatelessWidget {
  const HomeChats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
         
        
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
      body: const RecentChats(),
    );
  }
}

class RecentChats extends StatelessWidget {
  const RecentChats({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
      ),
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: chats.length,
          itemBuilder: (BuildContext context, int index) {
            final chat = chats[index];
            //print(chat.sender);
            return GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ChatScreen(
                    user: chat.sender,
                  ),
                ),
              ),
              child: Container(
                margin: const EdgeInsets.only(
                  top: 5.0,
                  bottom: 5.0,
                  right: 20.0,
                ),
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                decoration: BoxDecoration(
                  color: chat.unread ? Colors.white : Colors.white,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 35.0,
                          backgroundImage:
                              AssetImage(chat.sender.avatar),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: [
                            Text(
                              chat.sender.firstName,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context)
                                      .size
                                      .width *
                                  0.45,
                              child: Text(
                                chat.text,
                                style: const TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          chat.time,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        chat.unread
                            ? Container(
                                height: 20,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(
                                    30.0,
                                  ),
                                  color: Colors.blueAccent,
                                ),
                                alignment: Alignment.center,
                                child: const Text(
                                  'NEW',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            : const Text(''),
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
