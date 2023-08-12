import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegistrationPage_Shared extends StatefulWidget{
  @override
  State<RegistrationPage_Shared> createState() => _RegistrationPage_SharedState();
}

class _RegistrationPage_SharedState extends State<RegistrationPage_Shared> {
  final myname = TextEditingController();
  final email = TextEditingController();
  final mobile = TextEditingController();
  late SharedPreferences preferences;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shared Preference Registration"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: myname,
                decoration: const InputDecoration(
                  hintText: "Person Name",border: OutlineInputBorder()
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: email,
                decoration: const InputDecoration(
                hintText: "Person Email",border: OutlineInputBorder()
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: mobile,
                decoration: const InputDecoration(
                  hintText: "Mobile Number",border: OutlineInputBorder()
                ),
              ),
            ),
            ElevatedButton(onPressed: () =>  Storedatas(), child: Text("Register"))
          ],
        ),
      ),
    );
  }

 void Storedatas() async{
    String personname = myname.text;
    String personemail = email.text;
    String number = mobile.text;
    
    preferences = await SharedPreferences.getInstance()!;
    preferences.setString('myname', personname);
    preferences.setString('email', personemail);
    preferences.setString('mobile', number);
 }
}


