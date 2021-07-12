import 'package:flutter/cupertino.dart';

import '../classes/chatMessage.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

triParPrix(data) {
  int temp = 0;
  for (int i = 0; i < data.lenght; i++) {
    for (int j = i + 1; j < data.lenght; j++) {
      if (data[j]["price"] < data[i]["price"]) {
        temp = data[i]["price"];
        data[i]["price"] = data[j]["price"];
        data[j]["price"] = temp;
      }
    }
  }
}

triParDate(data) {
  //convert date to string for comparaison
  String date;
  DateTime now = new DateTime.now();

  date = now.toString().replaceAll('-', '');
  date = date.toString().replaceAll(' ', '');
  date = date.toString().replaceAll(':', '');
}

class _ChatState extends State<Chat> {
  late Widget widget1;
  List<ChatMessage> messages = [
    ChatMessage(
        messageContent: "Bonjour Team, on commence notre meeting dici 15 min",
        messageType: "receiver"),
    ChatMessage(messageContent: "D'accord ?", messageType: "receiver"),
    ChatMessage(
        messageContent: "Bonjour Team, on commence notre meeting dici 15 min",
        messageType: "sender"),
    ChatMessage(
        messageContent: "Bonjour Team, on commence notre meeting dici 15 min",
        messageType: "receiver"),
    ChatMessage(messageContent: "D'accord ?", messageType: "receiver"),
    ChatMessage(
        messageContent: "Bonjour Team, on commence notre meeting dici 15 min",
        messageType: "sender"),
    ChatMessage(
        messageContent: "Bonjour Team, on commence notre meeting dici 15 min",
        messageType: "receiver"),
    ChatMessage(messageContent: "D'accord ?", messageType: "receiver"),
    ChatMessage(
        messageContent: "Bonjour Team, on commence notre meeting dici 15 min",
        messageType: "sender"),
    ChatMessage(
        messageContent: "Bonjour Team, on commence notre meeting dici 15 min",
        messageType: "receiver"),
    ChatMessage(messageContent: "D'accord ?", messageType: "receiver"),
    ChatMessage(
        messageContent: "Bonjour Team, on commence notre meeting dici 15 min",
        messageType: "sender"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFcf4c30),
        title: Text('Ahmed boslhami'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Icon(CupertinoIcons.video_camera_solid),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Icon(CupertinoIcons.phone),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Icon(CupertinoIcons.ellipsis_vertical),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height - 180,
            child: ListView.builder(
              itemCount: messages.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 10, bottom: 0),
              itemBuilder: (context, index) {
                if (messages[index].messageType == "receiver") {
                  widget1 = Container(
                    padding: EdgeInsets.only(
                        left: 14, right: 14, top: 10, bottom: 10),
                    child: Align(
                        alignment: (messages[index].messageType == "receiver"
                            ? Alignment.topLeft
                            : Alignment.topRight),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: new BoxDecoration(
                                  image: DecorationImage(
                                    image: new NetworkImage(
                                        'https://images.unsplash.com/photo-1547721064-da6cfb341d50'),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color:
                                      (messages[index].messageType == "receiver"
                                          ? Color(0xFFddbdb7)
                                          : Color(0xFFcf4c30)),
                                ),
                                padding: EdgeInsets.all(16),
                                child: Text(
                                  messages[index].messageContent,
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                            ),
                          ],
                        )),
                  );
                } else {
                  widget1 = Container(
                    padding: EdgeInsets.only(
                        left: 14, right: 14, top: 10, bottom: 10),
                    child: Align(
                        alignment: (messages[index].messageType == "receiver"
                            ? Alignment.topLeft
                            : Alignment.topRight),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color:
                                      (messages[index].messageType == "receiver"
                                          ? Color(0xFFddbdb7)
                                          : Color(0xFFcf4c30)),
                                ),
                                padding: EdgeInsets.all(16),
                                child: Text(
                                  messages[index].messageContent,
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: new BoxDecoration(
                                  image: DecorationImage(
                                    image: new NetworkImage(
                                        'https://images.unsplash.com/photo-1547721064-da6cfb341d50'),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                              ),
                            ),
                          ],
                        )),
                  );
                }
                return widget1;
              },
            ),
          ),
          Container(
            child: Container(
              margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: const Offset(
                      3.0,
                      5.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 0.0,
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        print(value);
                      },
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                          color: Colors.grey.withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.image_outlined),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.attach_file_sharp),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
