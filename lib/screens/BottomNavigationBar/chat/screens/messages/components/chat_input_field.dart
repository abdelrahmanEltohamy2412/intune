import 'package:flutter/material.dart';
import 'package:intune/const/colors/colors.dart';

import '../../../constants.dart';
import '../../../models/Chat.dart';
import '../../../models/ChatMessage.dart';

class ChatInputField extends StatefulWidget {
  ChatInputField({
    Key? key,
  }) : super(key: key);

  @override
  State<ChatInputField> createState() => _ChatInputFieldState();
}

class _ChatInputFieldState extends State<ChatInputField> {
  var fieldText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 32,
            color: const Color(0xFF087949).withOpacity(0.08),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            const SizedBox(width: kDefaultPadding),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPadding * 0.75,
                ),
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  children: [
                    SizedBox(width: kDefaultPadding / 4),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Type message",
                          border: InputBorder.none,
                        ),
                        controller: fieldText,
                        onSubmitted: (word) {
                          final message = ChatMessage(
                            text: word,
                            isSender: true,
                            messageType: ChatMessageType.text,
                            messageStatus: MessageStatus.viewed,
                          );
                          setState(
                            () => demeChatMessages.add(message),
                          );
                        },
                      ),
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.send,
                          color: MyColor.pink,
                        ),
                        onPressed: () {}),
                    const SizedBox(width: kDefaultPadding / 4),
                    // Icon(Icons.camera_alt_outlined, color: MyColor.pink),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
