import 'package:chat_app/screen/messages/components/text_message.dart';
import 'package:chat_app/screen/messages/components/video_message.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/chat_message.dart';
import 'audio_message.dart';

class Message extends StatelessWidget {
  const Message({super.key, required this.message});

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    Widget messageContain(ChatMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return TextMessage(message: message);
          break;
        case ChatMessageType.audio:
          return AudioMessage(message: message);
          break;
        case ChatMessageType.video:
          return VideoMessage();
          break;
        default:
          return SizedBox();
      }
    }

    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding),
      child: Row(
        mainAxisAlignment: message.isSender
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        children: [
          if (!message.isSender) ...[
            CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage('assets/images/user_2.png'),
            ),
            SizedBox(width: kDefaultPadding / 2),
          ],
          messageContain(message),
          if (message.isSender) MessageStatusDot(status: message.messageStatus),
        ],
      ),
    );
  }
}

class MessageStatusDot extends StatelessWidget {
  const MessageStatusDot({super.key, required this.status});

  final MessageStatus status;

  @override
  Widget build(BuildContext context) {
    Color dotColor(MessageStatus status){
      switch(status){
        case MessageStatus.notSent:
          return kErrorColor;
          break;
        case MessageStatus.notView:
          return kPrimaryColor;
          break;
        case MessageStatus.viewed:
          return kPrimaryColor;
          break;
        default:
          return Colors.transparent;
      }
    }
    return Container(
      margin: EdgeInsets.only(left: kDefaultPadding / 2),
      height: 12,
      width: 12,
      decoration: BoxDecoration(color: dotColor(status), shape: BoxShape.circle),
      child: Icon(
        status == MessageStatus.notSent ? Icons.close : Icons.done,
        size: 8,
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}
