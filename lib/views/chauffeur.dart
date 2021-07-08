import 'package:flutter/material.dart';


import '../utils/grid_layout.dart';

class Chauffeur {
  var grid = new GridLayout();

  createGrid(context) {
    grid.addLayout([
      {
        "width": 1,
        "height": 220,
        "widget": "CardList",
        "params": {
          "text3": "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. ",
          "text": "Chauffeur",
          "text2": "Ahmed zahir",
          "linkImage": "assets/images/image-chauffeur.png"
        }
      },

    ]);   grid.addLayout([
      {
        "width": 1,
        "height": 220,
        "widget": "CardList",
        "params": {
          "text3": "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. ",
          "text": "Chauffeur",
          "text2": "Ahmed zahir",
          "linkImage": "assets/images/image-chauffeur-2.png"
        }
      },

    ]);   grid.addLayout([
      {
        "width": 1,
        "height": 220,
        "widget": "CardList",
        "params": {
          "text3": "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. ",
          "text": "Chauffeur",
          "text2": "Ahmed zahir",
          "linkImage": "assets/images/image-chauffeur-3.png"
        }
      },

    ]);   grid.addLayout([
      {
        "width": 1,
        "height": 220,
        "widget": "CardList",
        "params": {
          "text3": "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. ",
          "text": "Chauffeur",
          "text2": "Ahmed zahir",
          "linkImage": "assets/images/image-chauffeur-4.png"
        }
      },

    ]);

    return grid;
  }

  renderPage(context) {
    return Column(children: createGrid(context).mergeGrid(20));
  }
}
