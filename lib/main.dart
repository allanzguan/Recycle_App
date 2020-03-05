import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    title: 'Manual Enter',
    home: ManualEnter(),
  ));
}

class CreateButton extends StatelessWidget{
  final String icon;
  final String link;
  final Color col;
  const CreateButton(this.icon, this.link, this.col);


  Widget build(BuildContext context) {
    return Material(
      shape: CircleBorder(),
      color: col,
      child: Center(
        child: Ink.image(
          image: AssetImage('images/'+icon+'.png' ),
          fit: BoxFit.scaleDown,
          width: 100.0,
          height: 75.0,
          child: InkWell(
              onTap: () => launch(link),
              child: Align(
                alignment: Alignment.bottomCenter,
                /* child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  //child: Text('KITTEN', style: TextStyle(fontWeight: FontWeight.w900, color: Colors.white)),
                ),   */
              )
          ),
        ),
      ),
    );
  }
}



class ManualEnter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 3,
      children: <Widget>[
        new CreateButton("recy1", 'http://www.google.com', Colors.orangeAccent ),
        new CreateButton("recy2", 'http://www.google.com', Colors.lightGreenAccent),
        new CreateButton("recy3", 'http://www.google.com', Colors.redAccent ),
        new CreateButton("recy4", 'http://www.google.com', Colors.lightGreenAccent ),
        new CreateButton("recy5", 'http://www.google.com', Colors.lightGreenAccent ),
        new CreateButton("recy6", 'http://www.google.com', Colors.redAccent),
        new CreateButton("recy7", 'http://www.google.com', Colors.orangeAccent),
        new CreateButton("soda", 'http://www.google.com', Colors.lightGreenAccent),
        new CreateButton("glass", 'http://www.google.com', Colors.lightGreenAccent),
        new CreateButton("battery", 'http://www.google.com', Colors.redAccent),
        new CreateButton("bag", 'http://www.google.com', Colors.redAccent),
        new CreateButton("box", 'http://www.google.com', Colors.lightGreenAccent),
        new CreateButton("paper", 'http://www.google.com', Colors.lightGreenAccent),
        new CreateButton("tuna2", 'http://www.google.com', Colors.lightGreenAccent),
        new CreateButton("Beverage", 'http://www.google.com', Colors.lightGreenAccent),

      ],
    );
  }
}
