import 'package:app_livraison/views/detailsChauffeur.dart';
import 'package:flutter/material.dart';

class CardImageVille extends StatefulWidget {
  CardImageVille({
    Key? key,
    required this.width,
    required this.height,
    required this.linkImage,
    required this.ville,
  }) : super(key: key);
  final double width;
  final double height;
  final String linkImage;
  final String ville;

  @override
  _CardImageVilleState createState() =>
      _CardImageVilleState(width, height, ville, linkImage);
}

class _CardImageVilleState extends State<CardImageVille> {
  double width;
  double height;
  String ville;
  String linkImage;

  _CardImageVilleState(this.width, this.height, this.ville, this.linkImage);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        margin: EdgeInsets.all(10),
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: const Offset(
                3.0,
                3.0,
              ),
              blurRadius: 10.0,
              spreadRadius: 0.0,
            ),
          ],
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.7), BlendMode.dstATop),
            image: AssetImage(linkImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            ville,
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      )
    ]);
  }
}
