import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 100,
              decoration: BoxDecoration(
                color: Color(0xFFcf4c30),
                borderRadius: new BorderRadius.all(Radius.elliptical(100, 100)),
              ),
              child: Icon(
                CupertinoIcons.profile_circled,
                size: 80,
                color: Colors.white,
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
                        hintText: "E-mail",
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
                    CupertinoIcons.mail,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        print(value);
                      },
                      decoration: InputDecoration(
                        hintText: "E-mail",
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
                        hintText: "Mot de passe",
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
                        hintText: "Confirmer mot de passe",
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
              height: 50,
            ),
            MaterialButton(
              height: 45,
              minWidth: 150,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(5)),
              onPressed: () {},
              child: Text(
                "Créer Compte",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              color: Color(0xFFcf4c30),
            ),
          ],
        ),
      ),
    );
  }
}
