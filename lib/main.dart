import 'package:app_livraison/views/chauffeur.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'views/home_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var indexActive = 0;
  var indexPrev = 0;

  navigateTo(index) {
    setState(() {
      indexActive = index;
    });
  }

  callback() {
    print('hello');
  }

  chargerCurrentPage(indexActive) {
    Widget result = Center();
    if (indexActive == 0) {
      result = HomePage().renderPage(context);
    }
    if (indexActive == 1) {
      result = Chauffeur().renderPage(context);
    }
    // if (indexActive == 2) {
    //   result = Text('Page3');
    // }
    // if (indexActive == 3) {
    //   result = Text('Page4');
    // }
    //
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfff3e5),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              chargerCurrentPage(indexActive),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFcf4c30),
        type: BottomNavigationBarType.fixed,
        currentIndex: indexActive,
        onTap: (indexActive) {
          navigateTo(indexActive);
        },
        selectedItemColor: Color(0xFFfff3e5),
        unselectedItemColor: Color(0xFF443939),
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label:'Home',

          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            label:'Profil',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.mail),
            label:'Messages',
          ),
        ],
      ),
    );
  }
}
