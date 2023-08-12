import 'package:flutter/material.dart';
import 'package:flutter_may/Homepage.dart';
import 'package:flutter_may/RegistrationPage.dart';
import 'package:flutter_may/main.dart';

class LoginPage extends StatelessWidget {
  String username = "admin12345";
  String password = 'abc123';
  final uname = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login_page"),
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/images/img_1.png",
            height: 90,
            width: 90,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: uname,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  hintText: 'username',
                  helperText: 'username must be an email',
                  labelText: 'username',
                  prefixIcon: Icon(Icons.person)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: pass,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  hintText: 'password',
                  helperText: 'password must contain 6 charactes',
                  labelText: 'password',
                  prefixIcon: Icon(Icons.password_outlined),
                  suffixIcon: Icon(Icons.visibility)),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                if (uname.text != "" && pass.text != "") {
                  if (uname.text == username && pass.text == password) {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Homepage()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Email/Password is incorrect")));
                  }
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Fields must not be empty")));
                }
              },
              child: const Text("Login")),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Registration()));
              },
              child: Text("Not a user!!!! Register Here"))
        ],
      ),
    );
  }
}
