
import 'package:deeging_frontend/models/user.dart';

class MessageRequest{
  final String? id;
  final String text;
  final User sender;
  final String time;
  final bool isSeen;

  MessageRequest({
     this.id,
    required this.text,
    required this.sender,
    required this.time,
    required this.isSeen,
  });

  factory MessageRequest.fromJson(Map<String, dynamic> json) {
    return MessageRequest(
      id: json['id'],
      text: json['text'],
      sender: User.fromJson(json['sender']),
      time: json['time'],
      isSeen: json['isSeen'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'text': text,
      'sender': sender.toJson(),
      'time': time,
      'isSeen': isSeen,
    };
  }
}