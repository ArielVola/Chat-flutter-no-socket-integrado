import 'package:flutter/material.dart';

class BotonAzul extends StatelessWidget {

  final String inputText;
  final Function onPress;

  const BotonAzul({Key key, @required this.inputText, @required this.onPress}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
             onPressed: this.onPress,
             elevation: 2,
             highlightElevation: 5,
             color: Colors.blue,
             shape: StadiumBorder(),
             child: Container(
               width: double.infinity,
               height: 55,
               child: Center(
                 child: Text(this.inputText, style: TextStyle(color: Colors.white,fontSize: 16)),
               ),
             ),
           );
  }
}