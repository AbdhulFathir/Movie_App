import 'package:flutter/material.dart';
import 'package:popup_card/popup_card.dart';

class CardView extends StatelessWidget {
   CardView({Key? key, required this.imageUrl, required this.title, required this.type, required this.rating, required this.year, required this.story}) : super(key: key);

   
   final String imageUrl;
   final String title;
   final String type;
   final String rating;
   final String year;
   final String story;

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: () {
        showDialog(
          context: context,
          builder: (ctx)  => Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children:  [
                    Container(height: 200, width:110 ,
                      decoration:  BoxDecoration(
                          image:DecorationImage(image: AssetImage(imageUrl))
                      ),),
                    const SizedBox(width: 10,),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:   [
                        const SizedBox(height:15),
                        Text(title, style: const TextStyle(fontSize:25 , fontWeight: FontWeight.bold)),
                        const SizedBox(height:5),
                        Text(type, style: const TextStyle(fontSize:12 ,
                            fontWeight: FontWeight.bold , color: Colors.black26)),
                        const SizedBox(height:10),
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
                                  fontSize: 15),)),
                            )
                          ],
                        ),
                        const SizedBox(height:10),
                        Container(
                          color: Colors.transparent,
                          height: 110, width: 180,
                          child:   Text( story ,style: const TextStyle(
                              fontSize: 11,color: Colors.black45
                          )),
                        )

                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        );
      },
      child: Card(
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
                    child:   Text( story ,style: const TextStyle(
                        fontSize: 10,color: Colors.black45
                    )),
                  )

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
