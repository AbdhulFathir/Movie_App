import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder  (
      future:  showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          title: const Center(child: Text("Alert Dialog Box")),
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
      ), builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
      throw UnimplementedError;
    },
    );
  }
}


 // Future<void> showMyDialog(BuildContext context, String displayText) {
//     return showDialog<void>(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           content: Text(displayText),
//         );
//       },
//     );
//   }