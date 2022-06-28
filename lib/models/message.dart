import 'package:deeging_frontend/models/user.dart';

class Message{
  final String? id;
  final String text;
  final User sender;
  final String time;
  final bool unread;
  final bool isLiked;

  Message({
     this.id,
    required this.text,
    required this.sender,
    required this.time,
    required this.unread,
    required this.isLiked,
  });
}

