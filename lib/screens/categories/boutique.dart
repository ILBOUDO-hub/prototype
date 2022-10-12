import 'package:flutter/material.dart';
import 'package:prototype/screens/categories/produit_detail.dart';
import 'package:prototype/models/Product.dart';

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
      final String cookiecategorie = gleinfo.categorie;
      //final String categorieposter = gleinfo.name;
      if (cookiecategorie == "voiture") {
        final String priceposter = gleinfo.price.toString();

        movieOscar.add(Container(
          //  width: 260,
          color: Color.fromARGB(255, 252, 252, 249),
          //  padding: EdgeInsets.all(8.0),
          child: Card(
            elevation: 1.0,
            child: Column(
              children: <Widget>[
                Container(
                  //color: Colors.amber,
                  //Hero responsable de l'affichage des details de chaque article
                  child: Hero(
                      tag: gleinfo.imgPath1,
                      child: Material(
                        child: InkWell(
                          //Le Inkwell retourne Showdetail avec les details des articles en parametres
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ProduitDetail(
                                    assetPath1: gleinfo.imgPath1,
                                    assetPath2: gleinfo.imgPath2,
                                    cookieprice: gleinfo.price,
                                    cookiename: gleinfo.name,
                                    cookieauteur: gleinfo.auteur,
                                    cookiecategorie: gleinfo.categorie)));

                            //  );
                          },
                          child: Container(
                            height: 127,
                            width: 250,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(gleinfo.imgPath1),
                                    fit: BoxFit.cover)),
                            child: Container(
                              // Code pour le nombre de photo.
                              width: 38,
                              margin:const EdgeInsets.only(bottom: 4.0, right: 4.0),
                              padding:const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color:Colors.white.withOpacity(.30),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                children: const [
                                  Text(
                                    '2',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Icon(
                                    Icons.camera,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                            alignment: Alignment.bottomRight,
                          ),
                        ),
                      )),
                ),
                /*Text(
                "\$gleinfo.price",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    color: Colors.black),
              ), */

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [
                      Text("$priceposter FCFA",
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                              color: Color(0xFFCC8053),
                              fontFamily: 'Varela',
                              fontSize: 14.0)),
                      Text(
                          gleinfo
                              .name, //On cast ici le prix de l'enitier vers le string
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                              color: Color(0xFF575E67),
                              fontFamily: 'Varela',
                              fontSize: 14.0)),
                    ],
                  ),
                )
              ],
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
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 15.0),
          Container(
            padding: const EdgeInsets.only(right: 17.0),
            width: MediaQuery.of(context).size.width - 30.0,
            height: MediaQuery.of(context).size.height - 50.0,
            child: GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              childAspectRatio: 0.815,
              crossAxisCount: 2,
              shrinkWrap: true,
              //movieOscar qui liste les articles
              children: movieOscar,
            ),
          ),
          const SizedBox(height: 150.0)
        ],
      ),
    );
  }
}
