import 'package:flutter/material.dart';
import 'package:flutter_may/Storage/sqflitee/Login_Registration_db.dart';

import '../../Assignments/FarmersFreshZone.dart';
import 'SQF_Registration.dart';

class Sql_Login extends StatefulWidget {
  const Sql_Login({Key? key}) : super(key: key);



  @override
  State<Sql_Login> createState() => _Sql_LoginState();
}

class _Sql_LoginState extends State<Sql_Login> {
  final name_controller = TextEditingController();
  final pass_controller = TextEditingController();

  void ValidateLogin() async {
    List<Map<String, dynamic>> users = [];

    final data = await SQLHelper1.ReadUser();
    setState(() {
      users = data;
    });
    if (users[0]["name"] == name_controller.text &&
        users[0]["password"] == pass_controller.text) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Succ ")));
      Navigator.pushReplacement(
          context, (MaterialPageRoute(builder: (context) => Farmers_Fresh())));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Incorrect")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: name_controller,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                prefixIcon: Icon(Icons.person),
                hintText: "user name"),
          ),
          SizedBox(
            height: 12,
          ),
          TextFormField(
            controller: pass_controller,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                prefixIcon: Icon(Icons.password),
                hintText: "Password"),
          ),
          SizedBox(
            height: 12,
          ),
          ElevatedButton(
              onPressed: () {
                if (name_controller.text.isEmpty &&
                    pass_controller.text.isEmpty) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("Enter data")));
                } else {
                  ValidateLogin();
                }
              },
              child: Text("Login"))
        ],
      ),
    );
  }
}
