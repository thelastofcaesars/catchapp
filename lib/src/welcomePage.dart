import 'package:catchapp/src/login.dart';
import 'package:catchapp/src/signup.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  
  Widget _loginButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage(title: 'Login',)));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(100)),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.yellow.withAlpha(200),
              offset: Offset(2, 4),
              blurRadius: 8,
              spreadRadius: 2
            )
          ]
        ),
        child: Text(
          'Login',
          style: TextStyle(fontSize: 20, color: Colors.black),
        )
      ),
    );
  }

  Widget _signupButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
          context, MaterialPageRoute(builder: (context) => SignUpPage(title: 'Sign Up')));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(100)),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.white.withAlpha(255),
              offset: Offset(2, 4),
              blurRadius: 8,
              spreadRadius: 2
            )
          ]
        ),
        child: Text(
          'Register Now!',
          style: TextStyle(fontSize: 20, color: Colors.black),
        )
      ),
    );
  }

  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'catch',
        style: TextStyle(
          fontSize: 70,
          fontWeight: FontWeight.w700,
          color: Colors.red,
        ),
        children: [
          TextSpan(
            text: 'App     ',
            style: TextStyle(color: Colors.black, fontSize: 30)
          ),
          TextSpan(
            text: 'Your',
            style: TextStyle(color: Colors.red, fontSize: 30)
          ),
          TextSpan(
            text: ' PROTEST',
            style: TextStyle(color: Colors.black, fontSize: 50)
          )
        ]
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey.shade200,
              offset: Offset(2, 4),
              blurRadius: 5,
              spreadRadius: 2
            )
          ],
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.green, Colors.greenAccent]
          )
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _title(),
              SizedBox(
                height: 60,
              ),
              _loginButton(),
              SizedBox(
                height: 20,
              ),
              _signupButton(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}