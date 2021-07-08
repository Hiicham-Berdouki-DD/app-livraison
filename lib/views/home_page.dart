import 'package:flutter/material.dart';

import '../utils/grid_layout.dart';

class HomePage {
  var grid = new GridLayout();

  createGrid(context) {
    grid.addLayout([
      {
        "width": 1,
        "height": 230,
        "widget": "CardImageVille",
        "params": {
          "height": 230,
          "width": 160,
          "ville": "Casablanca",
          "linkImage": "assets/images/mosque-image.jpg"
        }
      },
      {
        "width": 1,
        "height": 230,
        "widget": "CardImageVille",
        "params": {
          "height": 230,
          "width": 160,
          "ville": "Fes",
          "linkImage": "assets/images/maroc-fes.png"
        }
      }
    ]);
    grid.addLayout([
      {
        "width": 1,
        "height": 230,
        "widget": "CardImageVille",
        "params": {
          "height": 230,
          "width": 160,
          "ville": "Rabat",
          "linkImage": "assets/images/rabat-maroc.png"
        }
      },
      {
        "width": 1,
        "height": 230,
        "widget": "CardImageVille",
        "params": {
          "height": 230,
          "width": 160,
          "ville": "Tanger",
          "linkImage": "assets/images/tanger-image.png"
        }
      }
    ]);
    grid.addLayout([
      {
        "width": 1,
        "height": 230,
        "widget": "CardImageVille",
        "params": {
          "height": 230,
          "width": 160,
          "ville": "Agadir",
          "linkImage": "assets/images/agadir-image.png"
        }
      },
      {
        "width": 1,
        "height": 230,
        "widget": "CardImageVille",
        "params": {
          "height": 230,
          "width": 160,
          "ville": "Dakhla",
          "linkImage": "assets/images/dakhla-image.png"
        }
      }
    ]);
    grid.addLayout([
      {
        "width": 1,
        "height": 230,
        "widget": "CardImageVille",
        "params": {
          "height": 230,
          "width": 160,
          "ville": "Casablanca",
          "linkImage": "assets/images/mosque-image.jpg"
        }
      },
      {
        "width": 1,
        "height": 230,
        "widget": "CardImageVille",
        "params": {
          "height": 230,
          "width": 160,
          "ville": "Fes",
          "linkImage": "assets/images/mosque-image.jpg"
        }
      }
    ]);
    return grid;
  }

  renderPage(context) {
    return Column(children: createGrid(context).mergeGrid(20));
  }
}
