import 'package:flutter/material.dart';
import 'package:prototype/screens/categories/produit_detail.dart';
import 'package:prototype/models/Product.dart';

class Favoris extends StatefulWidget {
  @override
  State<Favoris> createState() => _FavorisState();
}

class _FavorisState extends State<Favoris> {
  List<Card> movieOscar = [];

  buildList() async {
    //BuildList recupere tous les articles a travers une boucle et les affiches dans un container
    for (var i = 0; i < gateau.length; i++) {
      final gleinfo = gateau[i];
      if (gleinfo.isFavorite == true) {
        //final String categorieposter = gleinfo.name;
        final String priceposter = gleinfo.price.toString();

        movieOscar.add(Card(
          child: Padding(
              padding:
              const EdgeInsets.only(top: 0.0, bottom: 0.0, left: 5.0, right: 5.0),
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProduitDetail(
                            assetPath1: gleinfo.imgPath1,
                            assetPath2: gleinfo.imgPath2,
                            cookieprice: gleinfo.price,
                            cookiename: gleinfo.name,
                            cookieauteur: gleinfo.auteur,
                            cookiecategorie: gleinfo.categorie)));
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 3.0,
                                blurRadius: 5.0)
                          ],
                          color: Colors.white),
                      child: Column(children: [
                        Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  gleinfo.isFavorite
                                      ? const Icon(Icons.favorite,
                                          color: Color(0xFFEF7532))
                                      : const Icon(Icons.favorite_border,
                                          color: Color(0xFFEF7532))
                                ])),
                        Hero(
                            tag: gleinfo.imgPath1,
                            child: Container(
                                height: 75.0,
                                width: 75.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(gleinfo.imgPath1),
                                        fit: BoxFit.contain)))),
                        const SizedBox(height: 7.0),
                        Text("\$$priceposter",
                            style: const TextStyle(
                                color: Color(0xFFCC8053),
                                fontFamily: 'Varela',
                                fontSize: 14.0)),
                        Text(gleinfo.name,
                            style: const TextStyle(
                                color: Color(0xFF575E67),
                                fontFamily: 'Varela',
                                fontSize: 14.0)),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                color: const Color(0xFFEBEBEB), height: 1.0)),
                        Padding(
                            padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  if (!gleinfo.added) ...[
                                    const Icon(Icons.shopping_basket,
                                        color: Color(0xFFD17E50), size: 12.0),
                                    const Text('Add to cart',
                                        style: TextStyle(
                                            fontFamily: 'Varela',
                                            color: Color(0xFFD17E50),
                                            fontSize: 12.0))
                                  ],
                                  if (gleinfo.added) ...[
                                    const Icon(Icons.remove_circle_outline,
                                        color: Color(0xFFD17E50), size: 12.0),
                                    const Text('3',
                                        style: TextStyle(
                                            fontFamily: 'Varela',
                                            color: Color(0xFFD17E50),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12.0)),
                                    const Icon(Icons.add_circle_outline,
                                        color: Color(0xFFD17E50), size: 12.0),
                                  ]
                                ]))
                      ])))),
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
                appBar: AppBar(
            title: const Text('Mes favoris'),
            centerTitle: true,
            titleTextStyle: const TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
            backgroundColor: Colors.brown,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () => Navigator.maybePop(context),
            ),
          ),
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 5.0),

          Container(
            //padding: EdgeInsets.symmetric(vertical: 5),
            margin: const EdgeInsets.all(10.0),
            width: MediaQuery.of(context).size.width - 30.0,
            height: MediaQuery.of(context).size.height - 50.0,

            child: GridView.count(
              physics: NeverScrollableScrollPhysics(),
              childAspectRatio: 0.815,
              crossAxisCount: 2,
              shrinkWrap: true,
              //movieOscar qui liste les articles
              children: movieOscar,
            ),
          ),
          const SizedBox(height: 15.0),
        ],
      ),
    );
  }
}
