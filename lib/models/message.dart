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

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      id: json['id'],
      text: json['text'],
      sender: User.fromJson(json['sender']),
      time: json['time'],
      unread: json['unread'],
      isLiked: json['isLiked'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'text': text,
      'sender': sender.toJson(),
      'time': time,
      'unread': unread,
      'isLiked': isLiked,
    };
  }
}

