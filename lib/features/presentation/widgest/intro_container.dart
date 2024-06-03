import 'package:flutter/material.dart';



class IntroContainer extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;


   IntroContainer(this.imageUrl, this.title, this.subTitle);



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration:  BoxDecoration(
          borderRadius:  BorderRadius.circular(20),
          gradient:  const LinearGradient(colors:[Colors.black12 ,Colors.black12])
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                width: double.infinity,
                decoration:  BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imageUrl),
                      fit: BoxFit.fill),
                ),
              ),
            ),
             Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                fontSize: 20),),
            const SizedBox(height: 15,),
             Text(subTitle,
                style: const TextStyle(color: Colors.white70),
                textAlign: TextAlign.center),

          ],
        ),
      ),
    );
  }
}

