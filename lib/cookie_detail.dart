import 'package:flutter/material.dart';
import 'package:prototype/bottom_bar.dart';
import 'package:prototype/galerie.dart';
import 'package:prototype/models/Product.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';
import 'package:url_launcher/url_launcher.dart';

class CookieDetail extends StatelessWidget {
  final assetPath, cookieauteur, cookieprice, cookiename, cookiecategorie;

  CookieDetail({this.assetPath, this.cookieauteur, this.cookieprice, this.cookiename,this.cookiecategorie});
  @override
  Widget build(BuildContext context) {
    String cookieprices = cookieprice.toString();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(cookiename,
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Color(0xFF545D68)),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(children: [
        SizedBox(height: 15.0),
        Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text('Yatou',
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 42.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown)),
        ),
        SizedBox(height: 15.0),
        Hero(
            tag: assetPath,
            child: Image.asset(assetPath,
                height: 150.0, width: 100.0, fit: BoxFit.contain)),
        SizedBox(height: 20.0),
        Center(
          child: Text("\$$cookieprices",
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown)),
        ),
        SizedBox(height: 10.0),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(cookiename,
                  style: TextStyle(
                      color: Color(0xFF575E67),
                      fontFamily: 'Varela',
                      fontSize: 24.0)),
        IconButton(
          icon: Icon(Icons.account_circle),
          onPressed: (() {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Galerie(
                    assetPath: assetPath,
                    cookieprice: cookieprice,
                    cookiename: cookiename,
                    cookieauteur: cookieauteur)));
          }),
        ),
                IconButton(
          icon: Icon(Icons.share),
          onPressed: (() {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Galerie(
                    assetPath: assetPath,
                    cookieprice: cookieprice,
                    cookiename: cookiename,
                    cookieauteur: cookieauteur)));
          }),
        )

            ],
          ),
        ),
                SizedBox(height: 10.0),
        Center(
              child: Text(
                "Vendeur: $cookieauteur",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Color.fromARGB(255, 83, 83, 83)),
        )),

        SizedBox(height: 20.0),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 50.0,
            child: Text(
                'Cold, creamy ice cream sandwiched between delicious deluxe cookies. Pick your favorite deluxe cookies and ice cream flavor.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 16.0,
                    color: Color(0xFFB4B8B9))),
          ),
        ),
        SizedBox(height: 20.0),
        /*Center(
            child: Container(
                width: MediaQuery.of(context).size.width - 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Colors.brown),
                child: Center(
                    child: Text(
                  'Add to cart',
                  style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )))),*/
Center(
  child:                 Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FloatingActionButton.extended(
                        heroTag: 'btn1',
                        extendedPadding: const EdgeInsets.all(33.0),
                        label: const Text(
                          'Ecrire',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        icon: const Icon(Icons.message_outlined),
                        backgroundColor: Colors.brown,
                        onPressed: () {
                          /* Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                  return MyApp();
                })); */
                          _lauchWhatsapp();
                        },
                      ),
                      const FloatingActionButton.extended(
                          heroTag: 'btn2',
                          extendedPadding: EdgeInsets.all(30.0),
                          label: Text(
                            'Appeler',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          icon: Icon(
                            Icons.phone_rounded,
                            color: Colors.white,
                          ),
                          backgroundColor: Colors.brown,
                          onPressed: _makingPhoneCall),
                    ]),
)
      ]),
    );
  }
}


_makingPhoneCall() async {
  const url = 'tel:+22662825040';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_lauchWhatsapp() async {
  final link = WhatsAppUnilink(
      phoneNumber: '+22662825040',
      text:
          "Bonjour, je vous écrit car j'ai un soucis avec mon compte.Pouvez-vous m'aider à le resoudre s'il vous plait !");
  await launch('$link');
}