import 'package:flutter/material.dart';
import 'package:prototype/screens/categories/edit.dart';
import 'package:prototype/screens/galerie.dart';
import 'package:prototype/screens/parametres/favoris.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProduitDetail extends StatelessWidget {
  final assetPath1,
      assetPath2,
      cookieauteur,
      cookieprice,
      cookiename,
      cookiecategorie;
  //  isFavorite;
  final _controller = PageController();

  ProduitDetail({
    this.assetPath1,
    this.assetPath2,
    this.cookieauteur,
    this.cookieprice,
    this.cookiename,
    this.cookiecategorie,
    //this.isFavorite
  });

  bool isPressed = true;
  bool isPressed2 = true;
  bool isHighlighted = true;
  @override
  Widget build(BuildContext context) {
    String cookieprices = cookieprice.toString();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(cookiename,
            style: const TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
        actions: <Widget>[
          IconButton(
            icon:
                const Icon(Icons.notifications_none, color: Color(0xFF545D68)),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(children: [
        const SizedBox(height: 10.0),
        const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text('Yatou',
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 42.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown)),
        ),
        const SizedBox(height: 5.0),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // page view
            SizedBox(
              height: 150,
              child: PageView(
                controller: _controller,
                children: <Widget>[
                  Hero(
                      tag: assetPath1,
                      child: Image.asset(assetPath1,
                          height: 150.0, width: 100.0, fit: BoxFit.contain)),
                  Hero(
                      tag: assetPath2,
                      child: Image.asset(assetPath2,
                          height: 150.0, width: 100.0, fit: BoxFit.contain)),
                ],
              ),
            ),

            // dot indicators
            SmoothPageIndicator(
              controller: _controller,
              count: 2,
              effect: const JumpingDotEffect(
                activeDotColor: Colors.brown,
                dotColor: Color(0xFFB4B8B9),
                dotHeight: 10,
                dotWidth: 10,
                spacing: 16,
                //verticalOffset: 50,
                jumpScale: 2,
              ),
            ),
          ],
        ),
        /*Hero(
            tag: assetPath,
            child: Image.asset(assetPath,
                height: 150.0, width: 100.0, fit: BoxFit.contain)),
        const SizedBox(height: 20.0),*/
        Center(
          child: Text("$cookieprices FCFA",
              style: const TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown)),
        ),
        const SizedBox(height: 10.0),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(cookiename,
                    style: const TextStyle(
                        color: Color(0xFF575E67),
                        fontFamily: 'Varela',
                        fontSize: 24.0)),
                IconButton(
                  icon: const Icon(Icons.account_circle),
                  onPressed: (() {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Galerie(
                            assetPath1: assetPath1,
                            assetPath2: assetPath2,
                            cookieprice: cookieprice,
                            cookiename: cookiename,
                            cookieauteur: cookieauteur)));
                  }),
                ),
                /*InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onHighlightChanged: (value) {
                    setState(() {
                      isHighlighted = !isHighlighted;
                    });
                  },
                  onTap: () {
                    setState(() {
                      isPressed2 = !isPressed2;
                    });
                  },
                  child: AnimatedContainer(
                      margin: EdgeInsets.all(isHighlighted ? 0 : 25),
                      height: isHighlighted ? 50 : 45,
                      width: isHighlighted ? 50 : 45,
                      curve: Curves.fastLinearToSlowEaseIn,
                      duration: Duration(milliseconds: 300),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 20,
                            offset: Offset(5, 10),
                          )
                        ],
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: isPressed2
                          ? Icon(
                              Icons.favorite_border,
                              color: Colors.black.withOpacity(0.6),
                            )
                          : Icon(
                              Icons.favorite,
                              color: Colors.pink.withOpacity(1.0),
                            )),
                ),*/
                cookieauteur != "Brice"
                    ? IconButton(
                        //Differnt de celui qui a post?? qlors il peut aimer les articles
                        icon: const Icon(Icons.favorite),
                        onPressed: (() {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Favoris()));
                        }),
                      )
                    : Container(),
                IconButton(
                  icon: const Icon(Icons.share),
                  onPressed: (() {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Galerie(
                            assetPath1: assetPath1,
                            assetPath2: assetPath2,
                            cookieprice: cookieprice,
                            cookiename: cookiename,
                            cookieauteur: cookieauteur)));
                  }),
                ),
                cookieauteur == "Brice"
                    ? IconButton(
                        //Celui qui a post?? peut modifier son article et non les mettre en favoris
                        icon: const Icon(Icons.edit),
                  onPressed: (() {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Edit(
                            assetPath1: assetPath1,
                            assetPath2: assetPath2,
                            cookieprice: cookieprice,
                            cookiename: cookiename,
                            cookieauteur: cookieauteur)));
                  }),
                      )
                    : Container(),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10.0),
        Center(
            child: Text(
          "Vendeur: $cookieauteur",
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontFamily: 'Varela',
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Color.fromARGB(255, 83, 83, 83)),
        )),
        const SizedBox(height: 20.0),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 50.0,
            child: const Text(
                'Cold, creamy ice cream sandwiched between delicious deluxe cookies. Pick your favorite deluxe cookies and ice cream flavor.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 16.0,
                    color: Color(0xFFB4B8B9))),
          ),
        ),
        const SizedBox(height: 20.0),
        Center(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
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

  void setState(Null Function() param0) {}
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
          "Bonjour, je vous ??crit car j'ai un soucis avec mon compte.Pouvez-vous m'aider ?? le resoudre s'il vous plait !");
  await launch('$link');
}
