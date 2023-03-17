import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intune/const/Navigetor/Navigetor.dart';
import 'package:intune/screens/BottomNavigationBar/chat/chat.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.account_circle,
                color: Color(0xff222B45),
              ))
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xff222B45),
          ),
          onPressed: () {
            navigateTo(context, MainPage());
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.light,
        ),
      ),
      body: Column(
        children: [Text("reem")],
      ),
    );
  }
}
