

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class ManualEnter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Stack(

      children: <Widget>[

        Image.asset(
            "assets/boxm.png",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover),



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

        
            
            
          

           Custombutton('http://www.google.com', 'recy1',Colors.amber,'Polyethylene Terephthalate','Soda Bottles \n Water Bottles \n Salad dressing bottles \n Salad dressing bottles \n Medicine jars \n Peanut butter jars \n Jelly jars \n Combs\n Bean bags \n Rope \n Tote bags \n Carpet\n Fiberfill material in winter clothing'),
                                                                                                                                              
           Custombutton('http://www.google.com', 'recy2',Colors.amber,'b',''),
           Custombutton('http://www.google.com', 'recy3',Colors.amber,'c',''),
           Custombutton('http://www.google.com', 'recy4',Colors.amber,'d',''),
           Custombutton('http://www.google.com', 'recy5',Colors.amber,'e',''),
           Custombutton('http://www.google.com', 'recy6',Colors.amber,'f',''),
           Custombutton('http://www.google.com', 'recy7',Colors.amber,'g',''),
           Custombutton('http://www.google.com', 'glass',Colors.amber,'h',''),
           Custombutton('http://www.google.com', 'paper',Colors.amber,'i',''),
           Custombutton('http://www.google.com', 'battery',Colors.amber,'j',''),
           Custombutton('http://www.google.com', 'aluminum',Colors.amber,'k',''),
           Custombutton('http://www.google.com', 'tuna',Colors.amber,'l',''),

        ]
        
        ),



      )
      
      ,)


      ]
    
    );
  }


    
}


class Custombutton extends StatelessWidget {

 final String icon;
 final String link;
 final String type;
 final String info;
 
 
 final Color col;
 
  const Custombutton(this.link,this.icon,this.col,this.type,this.info);
  
  @override
  Widget build(BuildContext context) {
    return Material(
    color: col,
      child: Center(
        child: FlatButton(
                padding: EdgeInsets.all(0),
                onPressed: null,
                child: Ink.image(image: AssetImage('assets/'+icon+'.png'),
                fit: BoxFit.fill,
                width: 100,
                height: 100,
                padding: EdgeInsets.all(0),
                child: InkWell(
                  onTap: ()=> launch(link),
                  onLongPress: ()=> showDialog(
                    context: context,builder: (BuildContext context)=>PopupUI((type),(info))
                    
                  
                  ),


                )
                  

                  


                ), 
                )),


      
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

      
      






    



  


    
  