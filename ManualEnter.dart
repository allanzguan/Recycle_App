

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class ManualEnter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Stack(
        children: <Widget>[
          Scaffold(appBar: AppBar(
              title: Text('Select Your Type'),
              backgroundColor: Colors.green
          ),
            backgroundColor: Image.asset('assets/glass.png').color,
            body: Center(
              child: GridView.count(crossAxisCount:3,
              primary: false,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
              children: <Widget>[
                CreateButton('recy1', Colors.orangeAccent, 'http://www.google.com', 'Polyethylene Terephthalate','Soda Bottles \n Water Bottles \n Salad dressing bottles \n Salad dressing bottles \n Medicine jars \n Peanut butter jars \n Jelly jars \n Combs\n Bean bags \n Rope \n Tote bags \n Carpet\n Fiberfill material in winter clothing'),
                CreateButton('recy2', Colors.lightGreenAccent, 'http://www.google.com', 'b',''),
                CreateButton('recy3', Colors.redAccent,'http://www.google.com', 'c',''),
                CreateButton('recy4', Colors.lightGreenAccent, 'http://www.google.com', 'd',''),
                CreateButton('recy5', Colors.lightGreenAccent, 'http://www.google.com', 'e',''),
                CreateButton('recy6', Colors.redAccent, 'http://www.google.com', 'f',''),
                CreateButton('recy7', Colors.orangeAccent, 'http://www.google.com', 'g',''),
                CreateButton('paper', Colors.lightGreenAccent,'http://www.google.com', 'i',''),
                CreateButton('battery', Colors.redAccent, 'http://www.google.com', 'j',''),
                CreateButton('aluminum', Colors.lightGreenAccent, 'http://www.google.com', 'k',''),
                CreateButton('tuna', Colors.lightGreenAccent, 'http://www.google.com', 'l',''),
                CreateButton('glass', Colors.lightGreenAccent, 'http://www.google.com', 'm',''),
              ]
            ),
          )
         ,)
      ]
    );
  }


    
}


class CreateButton extends StatelessWidget{
  final String icon;
  final String link;
  final Color col;
  final String type;
  final String info;
  const CreateButton(this.icon, this.col, this.link, this.type, this.info);


  Widget build(BuildContext context) {
    return Material(
      shape: CircleBorder(),
      color: col,
      child: Center(
        child: Ink.image(
          image: AssetImage('assets/'+icon+'.png' ),
          fit: BoxFit.scaleDown,
          width: 100.0,
          height: 75.0,
          child: InkWell(
              onTap: () => launch(link),
              onLongPress: ()=> showDialog(
                  context: context,builder: (BuildContext context)=>PopupUI((type),(info))
              ),
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


class PopupUI extends StatelessWidget{

  final String contentt;
  final String infos;

  const PopupUI(this.contentt,this.infos);
  @override
  Widget build(BuildContext context) {
    
    return Material(
    
    child :CupertinoAlertDialog(

      title: Text(('Information'),style: TextStyle(
        color: Colors.green,
        fontSize: 30.00,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal,
        fontFamily: 'Lobster'
        


      ),
      textAlign: TextAlign.center
      ),
      content: Text((contentt),style: TextStyle(fontSize:25.00)),
    

      actions: <Widget>[

        Text((infos),textAlign:TextAlign.center,style: TextStyle(
          color:Colors.black,
          fontSize:25.00,
          fontWeight:FontWeight.bold,
          fontFamily:'Lobster'

          



        ),)


        

        


        

      
        
       
      ],

      




    )
    );
  }
}

      
      






    



  


    
  