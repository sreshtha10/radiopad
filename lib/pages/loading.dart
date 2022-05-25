import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:radiopad/pages/home_page.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  Future<void> delaySplash() async{
    await Future.delayed(const Duration(milliseconds: 2000));
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const HomePage()), (route) => false);
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    delaySplash();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LoadingAnimationWidget.staggeredDotsWave(color: Colors.purple, size: 80),
      ),
      backgroundColor: Colors.black,
    );
  }
}
