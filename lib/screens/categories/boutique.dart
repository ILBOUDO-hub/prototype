import 'package:flutter/material.dart';
import 'package:prototype/models/Product.dart';

import 'package:prototype/screens/galerie.dart';

class Boutique extends StatefulWidget {
  @override
  State<Boutique> createState() => _BoutiqueState();
}

class _BoutiqueState extends State<Boutique> {
  List<Container> movieOscar = [];

  buildList() async {
    //BuildList recupere tous les articles a travers une boucle et les affiches dans un container
    for (var i = 0; i < gateau.length; i++) {
      final gleinfo = gateau[i];
      //final String categorieposter = gleinfo.name;
      if (gleinfo.auteur != "voiture") {
        movieOscar.add(Container(
          //  width: 260,
          color: const Color.fromARGB(255, 252, 252, 249),
          //  padding: EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Galerie(
                      assetPath1: gleinfo.imgPath1,
                      assetPath2: gleinfo.imgPath2,
                      cookieprice: gleinfo.price,
                      cookiename: gleinfo.name,
                      cookieauteur: gleinfo.auteur)));
            },
            child: Card(
              elevation: 1.0,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(gleinfo.imgPath1),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        gleinfo.auteur,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        gleinfo.categorie.toUpperCase(),
                        style: const TextStyle(fontSize: 16),
                      ),
                      const Text(
                        "Koudougou, Burkina Faso",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
      }
    }
  }

  @override
  void initState() {
    super.initState();
    buildList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFAF8),
      body: Container(
        padding: const EdgeInsets.only(right: 20.0),
        width: MediaQuery.of(context).size.width - 20.0,
        height: MediaQuery.of(context).size.height - 50.0,
        child: ListView(
          children: movieOscar,
        ),
      ),
    );
  }
}
