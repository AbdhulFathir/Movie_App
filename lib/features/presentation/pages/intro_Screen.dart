import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widgest/intro_container.dart';
import 'login_page.dart';


class IntroView extends StatelessWidget {
   IntroView({Key? key}) : super(key: key);

  final controller = PageController();
  
  String detail1 = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum "
      "has been the industry's standard dummy text ever since the 1500s";
  String detail2= " It is a long established fact that a reader will be the distracted by the readable "
      "content  of a page when looking at its layout.the point of using lorem is that it.";
  String detail3 = "Contrary to popular belief, Lorem Ipsum is not simply random text it has roots in "
      "a piece of classical Latin literature from 45 BC, making it over 2000 years old";


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('lib/Asserts/bg.png')),
        ),
        child:PageView(
          controller: controller,
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Column(
                    children: [
                      IntroContainer("lib/Asserts/graphic_1.png","Lorem Ipsum", detail1),
                      // const SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Center(
                          child: SmoothPageIndicator(
                            controller: controller,
                            count: 3,
                            effect: const WormEffect(dotColor: Colors.white70,
                                activeDotColor: Colors.white,
                                dotHeight: 10,
                                dotWidth: 10),
                            onDotClicked: (index) =>
                                controller.animateToPage(index,
                                    duration:
                                    const Duration(milliseconds: 300),
                                    curve: Curves.bounceOut),
                          ),
                        ),
                      )

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children:  [
                      InkWell(
                        onTap: () {
                          controller.animateToPage(1, duration: const Duration(milliseconds: 300),
                              curve: Curves.bounceOut);
                        },
                        child: Container(
                          height: 40,
                          width: 100,
                          decoration:  BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              image: const DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("lib/Asserts/btn_1.png"))
                          ),
                          child: const Center(child: Text("Next",style:
                          TextStyle(color: Colors.white,fontWeight: FontWeight.bold ,fontSize: 20))),
                        ),
                      ),

                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Column(
                    children: [
                      IntroContainer("lib/Asserts/graphic_2.png","Why do we use it? ", detail2),
                      // const SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Center(
                          child: SmoothPageIndicator(
                            controller: controller,
                            count: 3,
                            effect: const WormEffect(dotColor: Colors.white70,
                                activeDotColor: Colors.white,
                                dotHeight: 10,
                                dotWidth: 10),
                            onDotClicked: (index) =>
                                controller.animateToPage(index,
                                    duration:
                                    const Duration(milliseconds: 300),
                                    curve: Curves.bounceOut),
                          ),
                        ),
                      )

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      InkWell(
                        onTap: () {
                          controller.animateToPage(0, duration: const Duration(milliseconds: 200),
                              curve: Curves.bounceOut);
                        },
                        child: Container(
                          height: 40,
                          width: 100,
                          decoration:  BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              image: const DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("lib/Asserts/btn_1.png"))
                          ),
                          child: const Center(child: Text("Previous",style:
                          TextStyle(color: Colors.white,fontWeight: FontWeight.bold ,fontSize: 20))),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          controller.animateToPage(2, duration: const Duration(milliseconds: 200),
                              curve: Curves.bounceOut);
                        },
                        child: Container(
                          height: 40,
                          width: 100,
                          decoration:  BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              image: const DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("lib/Asserts/btn_1.png"))
                          ),
                          child: const Center(child: Text("Next",style:
                          TextStyle(color: Colors.white,fontWeight: FontWeight.bold ,fontSize: 20))),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Column(
                    children: [
                      IntroContainer("lib/Asserts/graphic_3.png","Where does it come", detail3),
                      // const SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Center(
                          child: SmoothPageIndicator(
                            controller: controller,
                            count: 3,
                            effect: const WormEffect(dotColor: Colors.white70,
                                activeDotColor: Colors.white,
                                dotHeight: 10,
                                dotWidth: 10),
                            onDotClicked: (index) =>
                                controller.animateToPage(index,
                                    duration:
                                    const Duration(milliseconds: 300),
                                    curve: Curves.bounceOut),
                          ),
                        ),
                      )

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children:  [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>  LoginView(),));
                        },
                        child: Container(
                          height: 40,
                          width: 100,
                          decoration:  BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              image: const DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("lib/Asserts/btn_1.png"))
                          ),
                          child: const Center(child: Text("Done",style:
                          TextStyle(color: Colors.white,fontWeight: FontWeight.bold ,fontSize: 20))),
                        ),
                      ),

                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



//GlassmorphicContainer(
//                         borderRadius: 25,
//                         borderGradient: LinearGradient(colors: [
//                           Colors.black.withOpacity(0.1),
//                           Colors.black.withOpacity(0.1)
//                         ]),
//                         linearGradient: LinearGradient(colors: [
//                           Colors.black.withOpacity(0.1),
//                           Colors.black.withOpacity(0.1)
//                         ]),
//                         border: 2,
//                         blur: 20,
//                         height: 450,
//                         width: double.infinity,
//                         child: Padding(
//                           padding: const EdgeInsets.all(20.0),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Container(
//                                   height: 250,
//                                   width: double.infinity,
//                                   decoration: const BoxDecoration(
//                                     image: DecorationImage(
//                                         image:
//                                             AssetImage("assets/graphic_2.png"),
//                                         fit: BoxFit.fill),
//                                   ),
//                                 ),
//                               ),
//                               Text(
//                                 "Lorem Ipsum",
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 20),
//                               ),
//                               SizedBox(
//                                 height: 15,
//                               ),
//                               Text(
//                                   "Lorem Ipsum is simply dummy text of the printing and typesetting industry.
//                                   Lorem Ipsum has been the industry's standard "
//                                   "dummy text ever since the 1500s, when an unknown printer took a galley of
//                                   type and scrambled it to make a  ",
//                                   style: TextStyle(color: Colors.white70),
//                                   textAlign: TextAlign.center),
//
//                             ],
//                           ),
//                         ),
//                       ),