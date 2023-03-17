import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:intune/const/colors/colors.dart';
import 'package:grouped_list/grouped_list.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final DateTime now = DateTime.now();
  List<Message> messages = [
    Message(
        text: "Yes Sure",
        data: DateTime.now().subtract(const Duration(minutes: 1)),
        isSentByMe: false),
    Message(
        text: "Yes Sure",
        data: DateTime.now().subtract(const Duration(minutes: 1)),
        isSentByMe: false),
    Message(
        text: "Yes Sure",
        data: DateTime.now().subtract(const Duration(minutes: 1)),
        isSentByMe: false),
    Message(
        text: "Yes Sure",
        data: DateTime.now().subtract(const Duration(minutes: 1)),
        isSentByMe: false),
    Message(
        text: "Yes Sure",
        data: DateTime.now().subtract(const Duration(minutes: 1)),
        isSentByMe: false),
    Message(
        text: "Yes Sure",
        data: DateTime.now().subtract(const Duration(minutes: 1)),
        isSentByMe: false),
    Message(
        text: "Yes Sure",
        data: DateTime.now().subtract(const Duration(minutes: 1)),
        isSentByMe: false),
    Message(
        text: "Yes Sure",
        data: DateTime.now().subtract(const Duration(minutes: 1)),
        isSentByMe: false),
    Message(
        text: "Yes Sure",
        data: DateTime.now().subtract(const Duration(minutes: 1)),
        isSentByMe: false),
    Message(
        text: "Yes Sure",
        data: DateTime.now().subtract(const Duration(minutes: 1)),
        isSentByMe: false),
    Message(
        text: "Yes Sure",
        data: DateTime.now().subtract(const Duration(minutes: 1)),
        isSentByMe: false),
    Message(
        text: "Yes Sure",
        data: DateTime.now().subtract(const Duration(minutes: 1)),
        isSentByMe: false),
    Message(
        text: "Yes Sure",
        data: DateTime.now().subtract(const Duration(minutes: 1)),
        isSentByMe: false),
    Message(
        text: "Yes Sure",
        data: DateTime.now().subtract(const Duration(minutes: 1)),
        isSentByMe: false),
    Message(
        text: "Yes Sure",
        data: DateTime.now().subtract(const Duration(minutes: 1)),
        isSentByMe: false),
  ];
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
          onPressed: () {},
        ),
        title: Center(
          child: Column(
            children: const [
              Text(
                "Dr.Reem",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff222B45)),
              ),
              Text(
                "Last Visit 21:37",
                style: TextStyle(fontSize: 10, color: Color(0xff707070)),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.light,
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: GroupedListView<Message, DateTime>(
              padding: EdgeInsets.all(8.0),
              reverse: true,
              order: GroupedListOrder.DESC,
              useStickyGroupSeparators: true,
              floatingHeader: true,
              elements: messages,
              groupBy: (message) => DateTime(
                  message.data.year, message.data.month, message.data.day),
              groupHeaderBuilder: (Message message) => SizedBox(
                height: 40,
                child: Center(
                  child: Card(
                    color: MyColor.lightGreen,
                    child: Text(
                      DateFormat.yMMMd().format(
                        message.data,
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              itemBuilder: (context, Message message) => Align(
                alignment: message.isSentByMe
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: Card(
                  color: MyColor.lightGreen,
                  elevation: 0,
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(message.text),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 300,
              height: 50,
              child: TextField(
                keyboardType: TextInputType.text,
                style: const TextStyle(color: MyColor.green),
                cursorColor: MyColor.pink,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(30),
                    focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: MyColor.green)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: MyColor.dark,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    //filled: true,
                    hintStyle: const TextStyle(
                        color: MyColor.darkGray,
                        fontFamily: "TiltNeon",
                        letterSpacing: 0.5,
                        fontSize: 15),
                    hintText: "placeholder",
                    focusColor: MyColor.darkGray,
                    fillColor: Colors.pink),
                onSubmitted: (text) {
                  final message = Message(
                      text: text, data: DateTime.now(), isSentByMe: true);
                  setState(() => messages.add(message));
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Message {
  final String text;
  final DateTime data;
  final bool isSentByMe;
  const Message(
      {required this.text, required this.data, required this.isSentByMe});
}
