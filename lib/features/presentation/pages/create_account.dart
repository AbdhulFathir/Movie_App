import 'package:flutter/material.dart';

import 'home_page.dart';

class CreateAccount extends StatelessWidget {
   CreateAccount({Key? key}) : super(key: key);

   String name = "";
   String email = "";
   String username = "";
   String password = "";
   String rePassword = "";
   String message = "";

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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Center(
                    child: Text("\n Movie App" , style: TextStyle(fontWeight: FontWeight.bold, fontSize:30 ,
                        color: Colors.white,fontFamily: 'FRSCRIPT')),
                  ),
                ),
                const SizedBox(height: 15,),
                Container(
                  decoration:  BoxDecoration(
                      borderRadius:BorderRadius.circular(20),
                      gradient:  const LinearGradient(colors:[Colors.black12 ,Colors.black12])
                  ),
                  height: 470,
                  width: 330,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        const Center(child: Text("Create Account",style:
                        TextStyle(color: Colors.white,fontWeight: FontWeight.bold ,fontSize: 30,fontFamily: 'FRSCRIPT')),),
                        const SizedBox(height: 15,),
                        SizedBox(
                          height: 60,
                          child: TextField(
                            maxLength: 20,
                            decoration: const InputDecoration(
                                counter: Offstage(),
                                hintText:" Name",
                                // focusedBorder: OutlineInputBorder(
                                //   borderSide: BorderSide(color: Colors.white),
                                //   borderRadius: BorderRadius.all(Radius.circular(15)),),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                                hintStyle: TextStyle(color: Colors.black26),
                                focusColor: Colors.grey),
                            onChanged: (value) {
                              name = value;
                            },
                            style: TextStyle(color: Colors.black, fontSize: 20),),
                        ),
                        SizedBox(
                          height: 60,
                          child: TextField(
                            maxLength: 20,
                            decoration: const InputDecoration(
                                counter: Offstage(),
                                hintText:" Email",
                                // focusedBorder: OutlineInputBorder(
                                //   borderSide: BorderSide(color: Colors.white),
                                //   borderRadius: BorderRadius.all(Radius.circular(15)),),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                                hintStyle: TextStyle(color: Colors.black26),
                                focusColor: Colors.grey),
                            onChanged: (value) {
                              email = value;
                            },
                            style: TextStyle(color: Colors.black, fontSize: 20),),
                        ),
                        SizedBox(
                          height: 60,
                          child: TextField(
                            maxLength: 20,
                            decoration: const InputDecoration(
                                counter: Offstage(),
                                hintText:" Username",
                                // focusedBorder: OutlineInputBorder(
                                //   borderSide: BorderSide(color: Colors.white),
                                //   borderRadius: BorderRadius.all(Radius.circular(15)),),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                                hintStyle: TextStyle(color: Colors.black26),
                                focusColor: Colors.grey),
                            onChanged: (value) {
                              username = value;
                            },
                            style: TextStyle(color: Colors.black, fontSize: 20),),
                        ),
                        SizedBox(
                          height: 60,
                          child: TextField(
                            obscureText: true,
                            maxLength: 20,
                            decoration: const InputDecoration(
                                counter: Offstage(),
                                hintText:" Password",
                                // focusedBorder: OutlineInputBorder(
                                //   borderSide: BorderSide(color: Colors.white),
                                //   borderRadius: BorderRadius.all(Radius.circular(15)),),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                                hintStyle: TextStyle(color: Colors.black26),
                                focusColor: Colors.grey),
                            onChanged: (value) {
                              password = value;
                            },
                            style: TextStyle(color: Colors.black, fontSize: 20),),
                        ),
                        SizedBox(
                          height: 60,
                          child: TextField(
                            obscureText: true,
                            maxLength: 20,
                            decoration: const InputDecoration(
                                counter: Offstage(),
                                hintText:" Retype Password",
                                // focusedBorder: OutlineInputBorder(
                                //   borderSide: BorderSide(color: Colors.white),
                                //   borderRadius: BorderRadius.all(Radius.circular(15)),),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                                hintStyle: TextStyle(color: Colors.black26),
                                focusColor: Colors.grey),
                            onChanged: (value) {
                              rePassword = value;
                            },
                            style: TextStyle(color: Colors.black, fontSize: 20),),
                        ),
                        const SizedBox(height: 10,),
                        InkWell(
                          onTap: () {
                            message = "";
                            if(username.isNotEmpty && email.contains("@gmail.com") && username.isNotEmpty && password.isNotEmpty
                                && rePassword.isNotEmpty && ( password ==rePassword )){
                              Navigator.push(context, MaterialPageRoute(builder: (_) =>  HomePage()));
                            }else{
                              if(username.isEmpty && email.isEmpty && username.isEmpty && password.isEmpty && rePassword.isEmpty ){
                                message = "Please fill the data";
                              }else if(!email.contains("@gmail.com")){
                                message = "Please enter valid email address";
                              }else if(!(password ==rePassword )){
                                message = "${message}\n Password mismatched";
                              }

                              showDialog(
                                context: context,
                                builder: (ctx) => AlertDialog(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                  title: const Text("Alert Dialog Box"),
                                  content:  Text(message),
                                  actions: <Widget>[
                                    Center(
                                      child: MaterialButton(
                                          shape: const RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.all(
                                                  Radius.circular(10.0))),
                                          height: 54.0, minWidth: 288.0, textColor: Colors.white,
                                          color: Colors.pink, splashColor: Colors.blueGrey,
                                          onPressed: () {
                                            Navigator.of(ctx).pop();
                                          },
                                          child: const Text('OK', style: TextStyle(fontWeight: FontWeight.bold,
                                              fontFamily:'Gotham', fontSize: 18.0),)
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }
                          },
                          child: Container(
                            height: 50,
                            decoration:  BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage("lib/Asserts/btn_1.png"))
                            ),
                            child: const Center(child: Text("Create Account",style:
                            TextStyle(color: Colors.white,fontWeight: FontWeight.bold ,fontSize: 20))),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                InkWell(
                  onTap: () {

                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.white,width: 2)
                        // image: const DecorationImage(
                        //     fit: BoxFit.fill,
                        //     image: AssetImage("lib/Asserts/btn_1.png"))
                    ),
                    height: 50,
                    width: 300,
                    child: const Center(child:  Text("Cancel" , style:TextStyle(color: Colors.white ,fontSize: 20 ,
                        fontWeight: FontWeight.bold))),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}



