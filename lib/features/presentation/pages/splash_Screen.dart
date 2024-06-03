import 'dart:async';
import 'package:flutter/material.dart';

import 'intro_Screen.dart';


class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {



  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
       Navigator.push(context, MaterialPageRoute(builder: (_) =>  IntroView()));
    }
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('lib/Asserts/bg.png')),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children:  [
              const SizedBox(height:200),
              Container(
                height: 200,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                    image:DecorationImage(image:AssetImage('lib/Asserts/movie_icon.png')),
                ),),
              const SizedBox(height:180),
              const Text("Movie App",style: TextStyle(color: Colors.white,fontSize: 40,fontFamily: 'FRSCRIPT')),

            ],
          ),
        ),
      ),
    );
  }
}
