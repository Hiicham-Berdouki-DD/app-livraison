import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessagesList extends StatefulWidget {
  MessagesList({
    Key? key,
    required this.linkImage,
    required this.text,
    required this.text2,
  }) : super(key: key);

  final String linkImage;
  final String text;
  final String text2;

  @override
  _MessagesListState createState() =>
      _MessagesListState(linkImage, text, text2);
}

class _MessagesListState extends State<MessagesList> {
  String linkImage;
  String text;
  String text2;

  _MessagesListState(this.linkImage, this.text, this.text2);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFfff3e5),
            ),
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFFcf4c30),
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                            image: AssetImage(linkImage),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(right: 10)),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text,
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        ),
                        Text(
                          text2,
                          style:
                              TextStyle(fontSize: 13, color: Color(0xFF9c9a99)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            height: 1,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
