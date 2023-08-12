import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_may/Splash.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Registration(),
  ));
}

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegiterationState();
}

class _RegiterationState extends State<Registration> {
  final formkey = GlobalKey<FormState>();
  var confirmpass; //to store value from password field
  bool showpwd = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RgisterationPage"),
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            const Text(
              "RegisterationPage",
              style: TextStyle(fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Username"),
                validator: (email) {
                  if (email!.isEmpty || !email.contains("@")) {
                    return "Enter a valid email/field must not be empty";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration:  InputDecoration(
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      if(showpwd){
                        showpwd = false;
                      }else{
                        showpwd = true;
                      }
                    });
                  },
                      icon: Icon(showpwd == true
                      ? Icons.visibility
                      : Icons.visibility_off
                      )),

                    border: OutlineInputBorder(), hintText: "Password"),
                validator: (password) {
                  confirmpass = password;
                  if (password!.isEmpty || password.length > 6) {
                    return "Password must be greater than 6 characters/ must not be empty";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Confirm Password"),
                validator: (cpassword) {
                  if (cpassword != confirmpass || cpassword!.isEmpty) {
                    return "Password is missmatch/empty";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  var isValid = formkey.currentState!.validate();
                  if (isValid == true) {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Firstpage()));
                  }
                },
                child: const Text("RegistrationPage"))
          ],
        ),
      ),
    );
  }
}