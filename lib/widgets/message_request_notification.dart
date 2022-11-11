import 'package:deeging_frontend/models/data.dart';
import 'package:deeging_frontend/widgets/confirm_message.dart';
import 'package:flutter/material.dart';

class NotificationRequest extends StatelessWidget {
  const NotificationRequest({
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
          itemCount: messageRequests.length,
          itemBuilder: (BuildContext context, int index) {
            final messageRequest = messageRequests[index];
            //print(chat.sender);
            return GestureDetector(
              onTap: (){
                showAlertDialog(
                   context
                  );
              },
                
              child: Container(
                margin: const EdgeInsets.only(
                  top: 5.0,
                  bottom: 5.0,
                  right: 20.0,
                ),
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                decoration: BoxDecoration(
                  color: messageRequest.isSeen ? Colors.white : Colors.white,
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
                              AssetImage(messageRequest.sender.avatar),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: [
                            Text(
                              messageRequest.sender.username,
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
                                messageRequest.text,
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
                          messageRequest.time,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        messageRequest.isSeen
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