import 'package:flutter/material.dart';
import 'package:prototype/screens/categories/produit_detail.dart';
import 'package:prototype/models/Product.dart';
import 'package:dialog_alert/dialog_alert.dart';

class Galerie extends StatefulWidget {
  @override
  //final assetPath1, assetPath2, cookieprice, cookiename, cookieauteur;
  //Galerie(
  //     {this.assetPath1, this.assetPath2,this.cookieprice, this.cookiename, this.cookieauteur});

  State<Galerie> createState() => _GalerieState();
}

class _GalerieState extends State<Galerie> {
  List<Container> movieOscar = [];

  buildList() async {
    //BuildList recupere tous les articles a travers une boucle et les affiches dans un container
    for (var i = 0; i < gateau.length; i++) {
      final gleinfo = gateau[i];
      final String nameposter = gleinfo.name;
      //final String cookieauteur = gleinfo.categorie;
      //final String categorieposter = gleinfo.name;
      if (gleinfo.categorie == "voiture") {
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
                                builder: (context) => CookieDetail(
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
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(
                                      onPressed: () async {
                                        final result = await showDialogAlert(
                                            context: context,
                                            title: "Confirmation",
                                            message:
                                                "Etes-vous sur de vouloir supprimer ?",
                                            actionButtonTitle: "Oui",
                                            cancelButtonTitle: "Non");
                                        print(result);
                                      },
                                      icon: Icon(Icons.delete),
                                      color: Colors.brown,
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              gleinfo.isFavorite
                                                  ? Container(
                                                      color: Colors.brown,
                                                      child: Text("-Promo",
                                                          style:
                                                              const TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontFamily:
                                                                      'Varela',
                                                                  fontSize:
                                                                      14.0)),
                                                    )
                                                  : Container(
                                                      child: Text(""),
                                                    )
                                            ])),
                                  ],
                                ),
                                Container(
                                  // Code pour le nombre de photo.
                                  width: 38,
                                  margin:
                                      EdgeInsets.only(top: 45.0, left: 105.0),
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(.30),
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
                              ],
                            ),
                            // alignment: Alignment.bottomRight,
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
                            Text(
                              "Brice",
                              //'Vendeur: $vendeur',
                              style: const TextStyle(
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
                        padding:
                            const EdgeInsets.only(left: 15, right: 15, top: 5),
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
                        padding:
                            const EdgeInsets.only(left: 15, right: 15, top: 5),
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
                        padding:
                            const EdgeInsets.only(left: 15, right: 1, top: 5),
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
