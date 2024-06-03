import 'package:flutter/material.dart';
import '../widgest/DialogBox.dart';
import 'create_account.dart';
import 'home_page.dart';

class LoginView extends StatelessWidget {
   LoginView({Key? key}) : super(key: key);

  String username = "";
   String password = "";

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
                const SizedBox(height: 100,),
                Container(
                  decoration:  BoxDecoration(
                      borderRadius:BorderRadius.circular(20),
                      gradient:  const LinearGradient(colors:[Colors.black12 ,Colors.black12])
                  ),
                  height: 300,
                  width: 330,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                       const Center(child: Text("Login",style:
                       TextStyle(color: Colors.white,fontWeight: FontWeight.bold ,fontSize: 30,fontFamily: 'FRSCRIPT')),),
                         TextField(
                            maxLength: 20,
                            decoration: const InputDecoration(
                                counter: Offstage(),
                                hintText:" Username",
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.all(Radius.circular(20)),),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                                hintStyle: TextStyle(color: Colors.grey),
                                focusColor: Colors.grey),
                          onChanged: (value) {
                              username = value;
                          },
                          style: TextStyle(color: Colors.black, fontSize: 20),),
                         TextField(
                          maxLength: 20,
                           // obscureText: true,
                           obscureText: true,
                          decoration: const InputDecoration(
                              counter: Offstage(),
                              hintText:" Password",
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.all(Radius.circular(20)),),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                              hintStyle: TextStyle(color: Colors.grey),
                              focusColor: Colors.grey),
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        onChanged: (value) {
                            password = value;
                        },
                        ),
                        InkWell(
                          onTap: () {
                            if(username.isEmpty || password.isEmpty){

                            showDialog(
                                        context: context,
                                        builder: (ctx) => AlertDialog(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                          title: const Text("Alert Dialog Box"),
                                          content: const Text("Please enter username and password to login"),
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
                            }else{
                              Navigator.push(context, MaterialPageRoute(builder: (_) =>  HomePage()));
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
                            child: const Center(child: Text("Login",style:
                            TextStyle(color: Colors.white,fontWeight: FontWeight.bold ,fontSize: 20))),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 100,),
                InkWell(
                  onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (_) =>  CreateAccount()));
                  },
                  child: Container(
                    decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("lib/Asserts/btn_1.png"))
                    ),
                    height: 50,
                    width: 300,
                    child: const Center(child:  Text("Create Account" , style:TextStyle(color: Colors.white ,fontSize: 20 , fontWeight: FontWeight.bold))),
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
