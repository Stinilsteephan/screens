import 'package:flutter/material.dart';
import 'package:flutter_may/login_page.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp(MaterialApp(
    home: OnboardingEx(),
  ));
}

class OnboardingEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PageDecoration pageDecoration = const PageDecoration(
        titleTextStyle: TextStyle(
            color: Colors.purple,
            fontSize: 30,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(color: Colors.red, fontSize: 18),
        imagePadding: EdgeInsets.all(15),
        boxDecoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.orange,
          Colors.deepOrange,
          Colors.red,
          Colors.redAccent
        ], begin: Alignment.topRight, end: Alignment.bottomLeft)));
    return IntroductionScreen(
      pages: [
        PageViewModel(
            decoration: pageDecoration,
            image: Align(
              alignment: Alignment.topCenter,
              child: Image.asset("assets/images/img_12.png"),
            ),
            title: "First Page",
            body: "Hiiiiiii"),
        PageViewModel(
            decoration: pageDecoration,
            image: Align(
              alignment: Alignment.topCenter,
              child: Image.asset("assets/images/img_12.png"),
            ),
            title: "Second Page",
            body: "Hiiiiiiii"),
        PageViewModel(
            decoration: pageDecoration,
            image: Align(
              alignment: Alignment.topCenter,
              child: Image.asset("assets/images/img_12.png"),
            ),
            title: "Third Page",
            body: "Hiiiiiii")
      ],
      onDone: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => LoginPage())),
      // onSkip: () => Navigator.of(context)
      //     .push(MaterialPageRoute(builder: (context) => Registration())),
      showSkipButton: true,
      skip: Text("Skip"),
      next: Text("Next"),
      done: Text("Continue"),
      dotsDecorator: const DotsDecorator(
        size: Size(10, 10),
        color: Colors.black,
        activeSize: Size(15, 10),
        activeColor: Colors.red,
        activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25)))
      ),
    );
  }
}
