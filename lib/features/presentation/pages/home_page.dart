import 'package:flutter/material.dart';
import 'package:movie_app/features/presentation/widgest/DialogBox.dart';
import 'package:movie_app/features/presentation/widgest/card_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);



  final String imageUrl =  "lib/Asserts/spider_man_1.jpg";
  final String title  ="Spider Man ";
  final String type  ="Action | Adventure | SiFi ";
  final String rating  ="8.2";
  final String year  ="2002";
  final String story  ="When bitten by a genetically modified spider, a nerdy,"
      "shy, and awkward high school student gains spider-like abilities"
      "that he eventually must use to fight evil as a superhero after "
      "tragedy befalls his family ";
  final String imageUrl2 =  "lib/Asserts/matrix.jpg";
  final String title2  ="The Matrix";
  final String type2 ="Action | SiFi ";
  final String rating2  ="8.7";
  final String year2  ="1999";
  final String story2  =" When a beautiful stranger leads computer hacker Neo to a forbidding underworld, "
  "he discovers the shocking truth--the life he knows is the elaborate deception of an evil "
  "cyber-intelligence.";
  final String imageUrl3 =  "lib/Asserts/thing.jpg";
  final String title3  ="The Thing";
  final String type3  ="Horror | Mystery | SiFi ";
  final String rating3  ="8.2";
  final String year3  ="1982";
  final String story3  ="A research team in Antarctica is hunted by a shape-shifting alien that assumes the"
  " appearance of its victims." ;
  final String imageUrl4 =  "lib/Asserts/predator.jpg";
  final String title4  ="Predator";
  final String type4  ="Action | Adventure | Horror ";
  final String rating4  ="7.8";
  final String year4  ="1987";
  final String story4  ="A team of commandos on a mission in a Central American jungle "
      "find themselves hunted by an extraterrestrial warrior.";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("lib/Asserts/top_bg.png"),
            alignment: Alignment.topCenter)),
        child: ListView(
          padding: const EdgeInsets.all(10),
          children:  [
            const Center(child: Text("\n Movie App " , style: TextStyle(fontWeight: FontWeight.bold, fontSize:30 ,
                  color: Colors.white,fontFamily: 'FRSCRIPT')),
            ),
            const SizedBox(height: 10),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children:  [
                    Container(height: 180, width:100 ,
                      decoration:  BoxDecoration(
                          image:DecorationImage(image: AssetImage(imageUrl))
                      ),),
                    const SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:   [
                         Text(title, style: const TextStyle(fontSize:20 , fontWeight: FontWeight.bold)),
                         Text(type, style: const TextStyle(fontSize:10 ,
                            fontWeight: FontWeight.bold , color: Colors.black26)),
                        const SizedBox(height:5),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children:  [
                             Text(rating, style: const TextStyle(fontSize:15 , fontWeight: FontWeight.bold)),
                            const Text("/10", style: TextStyle(fontSize:10 , fontWeight: FontWeight.bold,color: Colors.black26)),
                            const SizedBox(width:20),
                            Container(
                              height: 20,
                              width: 80,
                              decoration:  BoxDecoration( borderRadius:  BorderRadius.circular(30),
                                  color: Colors.red),
                              child:  Center(child: Text(year,style: const TextStyle(color: Colors.white,
                                  fontSize: 10),)),
                            )
                          ],
                        ),
                        const SizedBox(height:5),
                        Container(
                          color: Colors.white,
                          height: 70, width: 220,
                          child:   Text(story,style: const TextStyle(
                              fontSize: 10,color: Colors.black45
                          )),
                        )

                      ],
                    )
                  ],
                ),
              ),
            ),
            CardView(imageUrl: imageUrl, title: title, type: type, rating: rating, year: year, story: story),
            const SizedBox(height: 5),
            CardView(imageUrl: imageUrl2, title: title2, type: type2, rating: rating2, year: year2, story: story2),
            const SizedBox(height: 5),
            CardView(imageUrl: imageUrl3, title: title3, type: type3, rating: rating3, year: year3, story: story3),
            const SizedBox(height: 5),
            CardView(imageUrl: imageUrl4, title: title4, type: type4, rating: rating4, year: year4, story: story4),

            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children:  [
                    Container(height: 180, width:100 ,
                      decoration:  BoxDecoration(
                          image:DecorationImage(image: AssetImage(imageUrl))
                      ),),
                    const SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:   [
                        Text(title, style: const TextStyle(fontSize:20 , fontWeight: FontWeight.bold)),
                        Text(type, style: const TextStyle(fontSize:10 ,
                            fontWeight: FontWeight.bold , color: Colors.black26)),
                        const SizedBox(height:5),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children:  [
                            Text(rating, style: const TextStyle(fontSize:15 , fontWeight: FontWeight.bold)),
                            const Text("/10", style: TextStyle(fontSize:10 , fontWeight: FontWeight.bold,color: Colors.black26)),
                            const SizedBox(width:20),
                            Container(
                              height: 20,
                              width: 80,
                              decoration:  BoxDecoration( borderRadius:  BorderRadius.circular(30),
                                  color: Colors.red),
                              child:  Center(child: Text(year,style: const TextStyle(color: Colors.white,
                                  fontSize: 10),)),
                            )
                          ],
                        ),
                        const SizedBox(height:5),
                        Container(
                          color: Colors.white,
                          height: 70, width: 220,
                          child:   Text(story,style: const TextStyle(
                              fontSize: 10,color: Colors.black45
                          )),
                        )

                      ],
                    )
                  ],
                ),
              ),
            ),

            // Card(
            //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            //   child: Padding(
            //     padding: const EdgeInsets.only(left: 10),
            //     child: Row(
            //       children:  [
            //         Container(height: 180, width:100 ,
            //           decoration:  BoxDecoration(
            //               image:DecorationImage(image: AssetImage(imageUrl))
            //           ),),
            //         const SizedBox(width: 20,),
            //         Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           mainAxisAlignment: MainAxisAlignment.start,
            //           children:   [
            //             Text(title, style: const TextStyle(fontSize:20 , fontWeight: FontWeight.bold)),
            //             Text(type, style: const TextStyle(fontSize:10 ,
            //                 fontWeight: FontWeight.bold , color: Colors.black26)),
            //             const SizedBox(height:5),
            //             Row(
            //               crossAxisAlignment: CrossAxisAlignment.end,
            //               children:  [
            //                 Text(rating, style: const TextStyle(fontSize:15 , fontWeight: FontWeight.bold)),
            //                 const Text("/10", style: TextStyle(fontSize:10 , fontWeight: FontWeight.bold,color: Colors.black26)),
            //                 const SizedBox(width:20),
            //                 Container(
            //                   height: 20,
            //                   width: 80,
            //                   decoration:  BoxDecoration( borderRadius:  BorderRadius.circular(30),
            //                       color: Colors.red),
            //                   child:  Center(child: Text(year,style: const TextStyle(color: Colors.white,
            //                       fontSize: 10),)),
            //                 )
            //               ],
            //             ),
            //             const SizedBox(height:5),
            //             Container(
            //               color: Colors.white,
            //               height: 70, width: 220,
            //               child:   Text(story,style: const TextStyle(
            //                   fontSize: 10,color: Colors.black45
            //               )),
            //             )
            //
            //           ],
            //         )
            //       ],
            //     ),
            //   ),
            // ),

          ],
        ),
      ),
    );
  }
}
