import 'package:app_livraison/components/chat.dart';
import 'package:app_livraison/components/messagesList.dart';
import 'package:app_livraison/components/recherche.dart';
import 'package:flutter/material.dart';

class ListMessage extends StatefulWidget {
  const ListMessage({Key? key}) : super(key: key);

  @override
  _ListMessageState createState() => _ListMessageState();
}

class _ListMessageState extends State<ListMessage> {
  final nom = [
    "Ahmed boslhami",
    "Ahmed boslhami",
    "Ahmed boslhami",
    "Ahmed boslhami",
    "Ahmed boslhami",
    "Ahmed boslhami",
  ];
  final message = [
    "Lorem ipsum dolor sit amet, consectetuer..... ",
    "Lorem ipsum dolor sit amet, consectetuer..... ",
    "Lorem ipsum dolor sit amet, consectetuer..... ",
    "Lorem ipsum dolor sit amet, consectetuer..... ",
    "Lorem ipsum dolor sit amet, consectetuer..... ",
    "Lorem ipsum dolor sit amet, consectetuer..... ",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfff3e5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              Recherche(),
              GestureDetector(
                onTap: () {
                  print('clicked');
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => Chat(),
                    ),
                  );
                },
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Container(
                      height: MediaQuery.of(context).size.height - 100,
                      child: ListView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.only(top: 10, bottom: 0),
                        itemBuilder: (context, index) {
                          return MessagesList(
                            linkImage: "assets/images/profil-icon.png",
                            text: nom[index],
                            text2: message[index],
                          );
                        },
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
