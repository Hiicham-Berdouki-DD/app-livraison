import 'package:flutter/material.dart';
import '../utils/grid_layout.dart';

class ListMesageView {
  var grid = new GridLayout();

  createGrid(context) {
    grid.addLayout([
      {
        "width": 10,
        "height": MediaQuery.of(context).size.height ,
        "widget": "ListMessage",
        "params": {}
      }
    ]);
    return grid;
  }

  renderPage(context) {
    return Column(children: createGrid(context).mergeGrid(20));
  }
}
