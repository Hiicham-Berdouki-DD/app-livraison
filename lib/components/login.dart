import 'package:app_livraison/components/register.dart';
import '../main.dart';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key? key, required this.loginCallBack}) : super(key: key);
  final Function loginCallBack;

  @override
  _LoginState createState() => _LoginState(loginCallBack);
}

class _LoginState extends State<Login> {
  Function loginCallBack;
  String _username = "", _password = "";

  _LoginState(this.loginCallBack);

  validationLogin(_username, _password) {
    loginCallBack(_username, _password);
  }

  @override
  Widget build(BuildContext context) {

    final formKey = new GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Color(0xFFfff3e5),
      body: Center(
        child: Form(
          key: formKey,
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
                      child: TextFormField(
                        onChanged: (value) {
                          print(value);
                          _username = value.toString();
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
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
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          print(value);
                          _password = value.toString();
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
                  validationLogin(_username, _password);
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
      ),
    );
  }
}
