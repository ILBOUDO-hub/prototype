import 'package:flutter/material.dart';
import 'package:prototype/screens/categories/produit_detail.dart';
import 'package:prototype/models/Product.dart';

class Galerie extends StatefulWidget {
  @override
  //final assetPath1, assetPath2, cookieprice, cookiename, cookieauteur;
  //Galerie(
 //     {this.assetPath1, this.assetPath2,this.cookieprice, this.cookiename, this.cookieauteur});

  State<Galerie> createState() => _GalerieState();
}

class _GalerieState extends State<Galerie> {
  //  final assetPath, cookieprice, cookiename;

  // Galerie({this.assetPath, this.cookieprice, this.cookiename});
  List<Card> movieOscar = [];
  buildList() async {
    //Galerie({this.assetPath, this.cookieprice, this.cookiename});
    //BuildList recupere tous les articles a travers une boucle et les affiches dans un container
    for (var i = 0; i < gateau.length; i++) {
      final gleinfo = gateau[i];
      final String cookiecategorie = gleinfo.categorie;
      //final String categorieposter = gleinfo.name;
      // final String auteurposter = gleinfo.auteur;
      //if (gleinfo.auteur.toString() == widget.toString()) {
        //final String priceposter = gleinfo.price.toString();
        //final String priceposter = gleinfo.price as String;
      if (cookiecategorie == "mode") {
        final String priceposter = gleinfo.price.toString();
        final String imageposter = gleinfo.imgPath1;
        int pourcent = 85 + i;

        movieOscar.add(Card(
          child: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.only(
                    top: 0.0, bottom: 0.0, left: 5.0, right: 5.0),
                child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CookieDetail(
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
                          const SizedBox(height: 3.0),
                          Text("$priceposter FCFA",
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Boutique'),
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
        body: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            //  physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            // scrollDirection: Axis.vertical,
            child: Stack(children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            ClipOval(
                              child: Container(
                                width: 100,
                                height: 100.0,
                                decoration: const BoxDecoration(
                                  color: Colors.blue,
                                  image: DecorationImage(
                                    image: AssetImage("assets/cookiechoco.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Brice",
                              //'Vendeur: $vendeur',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  icon: const Icon(
                                    Icons.person,
                                    size: 20,
                                  ),
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (BuildContext context) {
                                      return Container();
                                    }));
                                  },
                                ),
                                IconButton(
                                  icon: const Icon(
                                    Icons.favorite,
                                    size: 20,
                                  ),
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: const Icon(
                                    Icons.share,
                                    size: 20,
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  movieOscar.length
                                      .toString(), // Pour recupérer le nombre des publications
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  "Publications",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: double.infinity,
                        padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
                        child: const Text(
                          'Vente de tissus traditionnel et autres articles de mode.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: double.infinity,
                        padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
                        child: const Text(
                          'Tel: +226 62825040',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        padding: const EdgeInsets.only(left: 15, right: 1, top: 5),
                        child: const Text(
                          'Localisation: Ouagadougou / Karpala',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: SingleChildScrollView(
                        child: Column(
                      children: [
                        const Text(
                          'Les articles',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 15.0),
                        Container(
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
                        const SizedBox(height: 15.0)
                      ],
                    )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ])),
      ),
    );
  }
}
