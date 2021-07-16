import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'components/login.dart';
import 'main.dart';

void main() {
  runApp(MaterialApp(home: SplashScreen()));
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String _username = "", _password = "";

  validationLogin(_username, _password) {
    print('hello baby');
    print(_username.toString());
    print(_password.toString());
    if (_username.toString() == "Hicham" &&
        _password.toString() == "Berdouki") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
    } else {
      showDialog(
          context: context,
          builder: (_) {
            return AlertDialog(
              title: Text('Warning'),
              content: Text("Mot de passe Erronée"),
              actions: [
                TextButton(
                  onPressed: () {},
                  // passing false
                  child: Text('Ok'),
                ),
              ],
            );
          });
    }
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    
    Timer(
      Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => Login(
            loginCallBack: validationLogin(_username, _password),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfff3e5),
      body: Center(
        child: Image.asset('assets/images/livraison-camion.png'),
      ),
    );
  }
}
