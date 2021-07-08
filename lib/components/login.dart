import 'package:app_livraison/components/register.dart';
import '../main.dart';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  _LoginState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfff3e5),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset("assets/images/login-titre-left.png"),
                  ),
                  Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFcf4c30)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset("assets/images/login-titre-right.png"),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 54,
              width: 300,
              decoration: BoxDecoration(
                color: Color(0xFFfff3e5),
                border: Border.all(width: 3, color: Colors.black),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                children: <Widget>[
                  SizedBox(width: 10),
                  Icon(
                    Icons.person_rounded,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        print(value);
                      },
                      decoration: InputDecoration(
                        hintText: "Nom d'utilisteur",
                        hintStyle: TextStyle(
                          color: Colors.grey.withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 54,
              width: 300,
              decoration: BoxDecoration(
                color: Color(0xFFfff3e5),
                borderRadius: BorderRadius.circular(50),
                border: Border.all(width: 3, color: Colors.black),
              ),
              child: Row(
                children: <Widget>[
                  SizedBox(width: 10),
                  Icon(
                    Icons.lock_outline,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        print(value);
                      },
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(
                          color: Colors.grey.withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
            MaterialButton(
              height: 45,
              minWidth: 150,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(5)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              child: Text(
                "Se Connecter",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              color: Color(0xFFcf4c30),
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Image.asset("assets/images/google-icon.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Image.asset("assets/images/facebook-icon.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Image.asset("assets/images/twitter-icon.png"),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Register()),
                  );
                },
                child: Text(
                  'Creér un Compte',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
