

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class ManualEnter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Stack(

      children: <Widget>[

        
        



       Scaffold(
         backgroundColor: Colors.teal,
         
         
         
         //appBar: AppBar(
        //title: Text('Select Your Type'),
        //backgroundColor: Colors.teal
        
      //),
     
      body: Center(
        
        child: GridView.count(crossAxisCount:3,
        primary: false,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        padding: EdgeInsets.fromLTRB(10, 90, 10, 5),

        
        


        children: <Widget>[
         

        
            
            
          

           Custombutton('https://www.google.com/maps/d/u/0/viewer?mid=1ZR_uRMBCsAgepeC1wg3KTO_ZR9SNkcgb&ll=41.8759400809775%2C-87.73832164541466&z=9', 'recy1',Colors.green,'Polyethylene Terephthalate','Soda Bottles \n Water Bottles \n Salad dressing bottles \n Salad dressing bottles \n Medicine jars \n Peanut butter jars \n Jelly jars \n Combs\n Bean bags \n Rope \n Tote bags \n Carpet\n Fiberfill material in winter clothing'),                                                                                                                                  
           Custombutton('https://www.google.com/maps/d/u/0/viewer?mid=1ZR_uRMBCsAgepeC1wg3KTO_ZR9SNkcgb&ll=41.8759400809775%2C-87.73832164541466&z=9', 'recy2',Colors.green,'High-Density Polyethylene','Milk jugs \n Juice containers \n Grocery bags \n Trash bags \n Motor oil containers \n Shampoo and conditioner bottles \n Soap bottles \n Detergent containers \n Bleach containers \n Toys'),
           Custombutton('https://www.google.com/maps/d/u/0/viewer?mid=1ZR_uRMBCsAgepeC1wg3KTO_ZR9SNkcgb&ll=41.8759400809775%2C-87.73832164541466&z=9', 'recy3',Colors.orangeAccent,'Polyvinyl Chloride','Some tote bags\nPlumbing pipes\nTile\nCling films\nShoes\nGutters\nWindow frames\nDucts\nSewage pipes'),
           Custombutton('https://www.google.com/maps/d/u/0/viewer?mid=1ZR_uRMBCsAgepeC1wg3KTO_ZR9SNkcgb&ll=41.8759400809775%2C-87.73832164541466&z=9', 'recy4',Colors.orangeAccent,'Low-Density Polyethylene','Cling wrap\nSandwich bags\nSqueezable bottles for condiments such as honey and mustard\nGrocery bags\nFrozen food bags\nFlexible container lids'),
           Custombutton('https://www.google.com/maps/d/u/0/viewer?mid=1ZR_uRMBCsAgepeC1wg3KTO_ZR9SNkcgb&ll=41.8759400809775%2C-87.73832164541466&z=9', 'recy5',Colors.red,'Polypropylene','Plastic diapers\n Tupperware\nKitchenware\nMargarine tubs\nYogurt containers\nPrescription bottles\nStadium cups\nBottle caps\nTake-out containers\nDisposable cups and plates'),
           Custombutton('https://www.google.com/maps/d/u/0/viewer?mid=1V5Olhlyyuxb1RoOvj3KWI7zK0h2r7jZ2&ll=41.86160759444522%2C-87.90482848458805&z=9', 'recy6',Colors.red,'Polystyrene or Styrofoam','Disposable coffee cups\nPlastic food boxes\nPlastic cutlery\nPacking foam\nPacking peanuts'),
           Custombutton('http://www.google.com', 'recy7',Colors.red,'Miscellaneous Plastics','Plastic CDs and DVDs\nBaby bottles\nLarge water bottles with multiple-gallon capacity\nMedical storage containers\nEyeglasses\nExterior lighting fixtures'),
           Custombutton('https://www.google.com/maps/d/u/0/viewer?mid=1ZR_uRMBCsAgepeC1wg3KTO_ZR9SNkcgb&ll=41.8759400809775%2C-87.73832164541466&z=9', 'glass',Colors.orangeAccent,'Glass','Glass bottles \n Glass jars     '),
           Custombutton('https://www.google.com/maps/d/u/0/viewer?mid=1ZR_uRMBCsAgepeC1wg3KTO_ZR9SNkcgb&ll=41.8759400809775%2C-87.73832164541466&z=9', 'paper',Colors.orangeAccent,'Paper & Cardboard','Cereal boxes\n Paper towel rolls\n Cardboard (flatten)\n Junk mail\n Magazines\n Phone books\n Paper bags\n Office paper\n File folders\n Newspaper\n Beverage cartons\n Wrapping paper'),
           Custombutton('https://www.google.com/maps/d/u/0/viewer?mid=1Iva9HrPp5Bl4lz8iWM-Pp5_13pn2toPD&ll=41.8574720110241%2C-87.88186065000002&z=10', 'battery',Colors.orangeAccent,'Battery','Batteris'),
           Custombutton('https://www.google.com/maps/d/u/0/viewer?mid=1ZR_uRMBCsAgepeC1wg3KTO_ZR9SNkcgb&ll=41.8759400809775%2C-87.73832164541466&z=9', 'aluminum',Colors.orangeAccent,'Aluminium','Beverage cans \n Foil and Pie tins \n Steel can'),
           Custombutton('null', 'tuna',Colors.orangeAccent,'l',''),

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
                fit: BoxFit.contain,
                width: 110,
                height: 110,
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
      color: Colors.pink,
    
    child :CupertinoAlertDialog
    (
      //contentPadding: EdgeInsets.all(5),

      title: Text(('Information'),style: TextStyle(
        color: Colors.green,
        fontSize: 30.00,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal,
        fontFamily: 'Lobster'
        
        


      ),
      textAlign: TextAlign.center
      
      ),
      content: Text((contentt),textAlign:TextAlign.center, style: TextStyle(fontSize:15.00)),
      
    

      actions: <Widget>[

        Text((infos),
        softWrap: true,
        textDirection: TextDirection.rtl,
        textAlign:TextAlign.center
        ,style: TextStyle(
          color:Colors.black,
          fontSize:20.00,
          fontWeight:FontWeight.bold,
          fontFamily:'Lobster'

          

        ),
        


        ),

        //IconButton(icon:Icon(Icons.cancel), onPressed:()=> Navigator.pop(context,false))


        

        


        

      
        
       
      ],

      




    )
    
    );
  }
}

      
      






    



  


    
  
