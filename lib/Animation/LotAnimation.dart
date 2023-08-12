import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main(){
  runApp(MaterialApp(
    home: LottieAnim(),
  ));
}
class LottieAnim extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Lottie.network("https://lottie.host/4a056524-d787-4b5f-9485-62c7d8f383e4/RPbNOy1TdN.json"),

      ),
    );

  }

}