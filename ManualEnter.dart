import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ManualEnter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: null,
          title: Text(
            "Select Your Type",
            style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                letterSpacing: 5,
                fontWeight: FontWeight.w300),
          ),
        ),
        body: Container(
          color: Colors.white,
          child: Stack(children: <Widget>[
            Positioned(
              height: 120,
              width: 120,
              top: 50,
              left: 10,
              child: Custombutton(
                  null,
                  'recy1',
                  Colors.green,
                  'Polyethylene Terephthalate',
                  'Soda bottles\nWater bottles\nSalad dressing bottles\nMedicine jars\nJelly jars\nRope\nFiberfill material',
                  'green',
                  "NOT ACCEPTED: Plastic Bags and other Plastic Wraps \nTO RECYCLE SEE PLASTIC BAGS RECYCLING", "Drop Off At Any Blue Recycling Container Near You"),
            ),
            Positioned(
              height: 120,
              width: 120,
              top: 50,
              left: 145.5,
              child: Custombutton(
                  null,
                  'recy2',
                  Colors.green,
                  'High-Density Polyethylene',
                  'Milk jugs\nJuice containers\nShampoo and conditioner bottles\nToys',
                  'green',
                  "NOT ACCEPTED: Plastic Bags and other Plastic Wraps \nTO RECYCLE SEE PLASTIC BAGS RECYCLING", "Drop Off At Any Blue Recycling Container Near You"),
            ),
            Positioned(
              height: 120,
              width: 120,
              top: 50,
              left: 279.5,
              child: Custombutton(
                  null,
                  'recy3',
                  Colors.orangeAccent,
                  'Polyvinyl Chloride',
                  'Shoes\nWindow frames\nDucts\nSewage pipes\nFruit containers',
                  '3',
                  "NOT ACCEPTED: Plastic Bags and other Plastic Wraps\nTO RECYCLE SEE PLASTIC BAGS RECYCLING", "Drop Off At Any Blue Recycling Container Near You"),
            ),
            Positioned(
              height: 120,
              width: 120,
              top: 180,
              left: 10,
              child: Custombutton(
                  null,
                  'recy4',
                  Colors.orangeAccent,
                  'Low-Density Polyethylene',
                  'Cling wrap\nSandwich bags\nSqueezable bottles\nGrocery bags\nFrozen food bags\nFlexible container lids',
                  '6',
                  "NOT ACCEPTED: Plastic Bags and other Plastic Wraps\nTO RECYCLE SEE PLASTIC BAGS RECYCLING", "Drop Off At Any Blue Recycling Container Near You"),
            ),
            Positioned(
              height: 120,
              width: 120,
              top: 180,
              left: 145.5,
              child: Custombutton(
                  null,
                  'recy5',
                  Colors.red,
                  'Polypropylene',
                  'Plastic diapers\n Tupperware\nKitchenware\nPrescription bottles\nTake-out containers\nDisposable cups and plates',
                  '13',
                  "NOT ACCEPTED: Plastic Bags and other Plastic Wraps\nTO RECYCLE SEE PLASTIC BAGS RECYCLING", "Drop Off At Any Blue Recycling Container Near You"),
            ),
            Positioned(
              height: 120,
              width: 120,
              top: 180,
              left: 279.5,
              child: Custombutton(
                  'https://www.google.com/maps/d/embed?mid=1V5Olhlyyuxb1RoOvj3KWI7zK0h2r7jZ2',
                  'recy6',
                  Colors.red,
                  'Polystyrene or Styrofoam',
                  'Disposable coffee cups\nPlastic food boxes\nPlastic cutlery\nPacking foam\nPacking peanuts',
                  '7',
                  "Get the Drop Off Locations","Not Accepted In Chicago Recycling Program\nTo See Recycling Locations, Click Button Below"),
            ),
            Positioned(
              height: 120,
              width: 120,
              top: 310,
              left: 10,
              child: Custombutton(
                  null,
                  'recy7',
                  Colors.red,
                  'Miscellaneous Plastics',
                  'Plastic CDs and DVDs\nLarge water bottles\nMedical storage containers\nEyeglasses frames\nExterior lighting fixtures',
                  '8',
                  "NOT ACCEPTED: Plastic Bags and other Plastic Wraps\nTO RECYCLE SEE PLASTIC BAGS RECYCLING", "Drop Off At Any Blue Recycling Container Near You"),
            ),
            Positioned(
              height: 120,
              width: 120,
              top: 310,
              left: 145.5,
              child: Custombutton(null, 'glass', Colors.orangeAccent, 'Glass',
                  'Glass Bottles\nGlass Jars', '9', "","Drop Off At Any Blue Recycling Container Near You"),
            ),
            Positioned(
              height: 120,
              width: 120,
              top: 310,
              left: 279.5,
              child: Custombutton(
                  null,
                  'paper',
                  Colors.orangeAccent,
                  'Paper & Cardboard',
                  '\nPaper towel rolls\nCardboard (flatten)\nBooks\nPaper bags\nFile folders\nBeverage cartons\nWrapping paper',
                  'Blue',
                  "","Drop Off At Any Blue Recycling Container Near You"),
            ),
            Positioned(
              height: 120,
              width: 120,
              top: 440,
              left: 10,
              child: Custombutton("https://www.google.com/maps/d/embed?mid=1Iva9HrPp5Bl4lz8iWM-Pp5_13pn2toPD", 'battery', Colors.orangeAccent,
                  'Batteries', 'Single-use batteries\nRechargable batteries', '11', 'Click Here to Get the Drop Off Locations',"Not Accepted In Chicago Recycling Program, To Recycle Click Button Below"),
            ),
            Positioned(
                height: 120,
                width: 120,
                top: 440,
                left: 145.5,
                child: Custombutton(
                    null,
                    'tuna',
                    Colors.orangeAccent,
                    'Aluminum',
                    'Beverage cans\nFoil and pie tins\nSteel can',
                    'green',
                    "","Drop Off At Any Blue Recycling Container Near You")),
            Positioned(
              height: 120,
              width: 120,
              top: 440,
              left: 279.5,
              child: Custombutton('https://www.google.com/maps/d/embed?mid=1ZR_uRMBCsAgepeC1wg3KTO_ZR9SNkcgb','bag', Colors.orangeAccent,
                  'Bags', 'Shopping bags\nVarious plastic wraps\nPlastic liners\nBubble wrap', '13', "Get the Drop Off Locations ","Not accepted in Chicago recycling program\nPlease click button below for recyling locations"),
            )
          ]),
        ),
      )
    ]);
  }
}

class Custombutton extends StatelessWidget {
  final String icon;
  final String link;
  final String type;
  final String info;
  final String photo;
  final Color col;
  final String note;
  final String drop;

  const Custombutton(this.link, this.icon, this.col, this.type, this.info,
      this.photo, this.note,this.drop);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
          decoration:
          BoxDecoration(color: col, borderRadius: BorderRadius.circular(20)),
          child: FlatButton(
            //onPressed: () => launch(link),
            onPressed: () => showDialog(
                context: context,
                builder: (BuildContext context) =>
                    PopupUI((type), (info), (photo), (note), (link),(drop))),
            padding: EdgeInsets.all(0),
            shape: CircleBorder(),
            child: Ink.image(
                image: AssetImage('assets/' + icon + '.png'),
                fit: BoxFit.contain,
                width: 100,
                height: 100,
                padding: EdgeInsets.all(0)),
          ),
        ));
  }
}

class PopupUI extends StatelessWidget {
  final String contentt;
  final String infos;
  final String photo;
  final String note;
  final String link;
  final String drop;

  const PopupUI(this.contentt, this.infos, this.photo, this.note, this.link,this.drop);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Information',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w300, letterSpacing: 2.00),
          ),
          backgroundColor: Colors.grey,
        ),
        backgroundColor: Colors.green.withOpacity(0.7),
        body: Container(
          color: Colors.black.withOpacity(0.5),
          child: Stack(
            children: <Widget>[
              Positioned(
                  top: 20,
                  height: 50,
                  left: 50,
                  right: 50,
                  child: Text(
                    contentt,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17,color: Colors.white),
                  )),
              Positioned(
                left: 120,
                top: 50,
                width: 170,
                height: 170,
                child: Image.asset(
                  'assets/' + photo + '.jpg',

                ),
              ),
              Positioned(
                top: 230,
                left: 50,
                right: 50,
                child: Text(
                  infos,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.00,
                      fontWeight: FontWeight.w900),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 50,
                right: 50,
                child: InkWell(
                  child: Text(note,style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                  onTap: () => launch(link),
                ),
              ),

              Positioned(
                  bottom: 100,
                  left:50,
                  right:50,

                  child: Text(drop,textAlign: TextAlign.center,style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.w800 ),))
            ],
          ),
        ));
  }
}
