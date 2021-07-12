import 'package:flutter/material.dart';
import '../utils/grid_layout.dart';

class ChatView {
  var grid = new GridLayout();

  createGrid(context) {
    grid.addLayout([
      {
        "width": 10,
        "height": MediaQuery.of(context).size.height - 120,
        "widget": "Chat",
        "params": {}
      }
    ]);
    return grid;
  }

  renderPage(context) {
    return Column(children: createGrid(context).mergeGrid(20));
  }
}
