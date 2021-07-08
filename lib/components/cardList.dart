import 'package:flutter/material.dart';

class CardList extends StatefulWidget {
  CardList(
      {Key? key,
      required this.linkImage,
      required this.text,
      required this.text2,
      required this.text3})
      : super(key: key);

  final String linkImage;
  final String text;
  final String text2;
  final String text3;

  @override
  _CardListState createState() => _CardListState(linkImage, text, text2, text3);
}

class _CardListState extends State<CardList> {
  String linkImage;
  String text;
  String text2;
  String text3;

  _CardListState(this.linkImage, this.text, this.text2, this.text3);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          SizedBox(
            height: 190,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 120,
                        height: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(linkImage),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(right: 15)),
                  Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text,
                          style:
                              TextStyle(fontSize: 25, color: Color(0xFFcf4c30)),
                        ),
                        Text(
                          text2,
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        Text(
                          text3,
                          style: TextStyle(fontSize: 12, color: Color(0xFF9b9a98)),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            'Envoyer un message',
                            style: TextStyle(
                                color: Color(0xFFcf4c30), fontSize: 12),
                          ),
                        )
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
