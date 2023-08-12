import 'package:flutter/material.dart';
import 'package:flutter_may/Storage/sqflitee/Sqf_Login.dart';

import 'Login_Registration_db.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LOGINpage(),
  ));
}

class LOGINpage extends StatefulWidget {
  const LOGINpage({Key? key}) : super(key: key);

  @override
  State<LOGINpage> createState() => _LOGINpageState();
}

class _LOGINpageState extends State<LOGINpage> {
  final name_controller = TextEditingController();
  final pass_controller = TextEditingController();
  final email_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void RegisterUser(String name, String passwd, String email) async {
      var id = await SQLHelper1.CreateUser(name, passwd, email);
      if (id != null){
        //if registration is success go to Login page
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Sql_Login()));
      }else{
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Registered")));
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("LoginPage"),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: name_controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                  prefixIcon: Icon(Icons.person),
                  hintText: "Username"),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: pass_controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                  prefixIcon: Icon(Icons.password),
                  hintText: "Password"),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: email_controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                  prefixIcon: Icon(Icons.email),
                  hintText: "Email"),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  if (name_controller.text.isEmpty &&
                      email_controller.text.isEmpty &&
                      pass_controller.text.isEmpty) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text("textfield ")));
                  } else {
                    RegisterUser(name_controller.text, pass_controller.text,
                        email_controller.text);
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Sql_Login()));
                  }
                },
                child: Text("Register"))
          ],
        ),
      ),
    );
  }
}
