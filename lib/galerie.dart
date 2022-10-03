import 'package:flutter/material.dart';
import 'package:prototype/cookie_detail.dart';
import 'package:prototype/models/Product.dart';

class Galerie extends StatefulWidget {
  @override
  final assetPath, cookieprice, cookiename, cookieauteur;
  Galerie(
      {this.assetPath, this.cookieprice, this.cookiename, this.cookieauteur});

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
      //final String categorieposter = gleinfo.name;
      // final String auteurposter = gleinfo.auteur;
      if (gleinfo.auteur.toString() == widget.cookieauteur.toString()) {
        final String nameposter = gleinfo.name;
        final String priceposter = gleinfo.price.toString();
        //final String priceposter = gleinfo.price as String;
        final String imageposter = gleinfo.imgPath;
        int pourcent = 85 + i;

        movieOscar.add(Card(
          child: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.only(
                    top: 0.0, bottom: 0.0, left: 5.0, right: 5.0),
                child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CookieDetail(
                              assetPath: gleinfo.imgPath,
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
                                        ? Icon(Icons.favorite,
                                            color: Color(0xFFEF7532))
                                        : Icon(Icons.favorite_border,
                                            color: Color(0xFFEF7532))
                                  ])),
                          Hero(
                              tag: gleinfo.imgPath,
                              child: Container(
                                  height: 75.0,
                                  width: 75.0,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(gleinfo.imgPath),
                                          fit: BoxFit.contain)))),
                          SizedBox(height: 3.0),
                          Text("\$$priceposter",
                              style: TextStyle(
                                  color: Color(0xFFCC8053),
                                  fontFamily: 'Varela',
                                  fontSize: 14.0)),
                          Text(gleinfo.name,
                              style: TextStyle(
                                  color: Color(0xFF575E67),
                                  fontFamily: 'Varela',
                                  fontSize: 14.0)),
                          Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Container(
                                  color: Color(0xFFEBEBEB), height: 1.0)),
                          Padding(
                              padding: EdgeInsets.only(left: 5.0, right: 5.0),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    if (!gleinfo.added) ...[
                                      Icon(Icons.shopping_basket,
                                          color: Color(0xFFD17E50), size: 12.0),
                                      Text('Add to cart',
                                          style: TextStyle(
                                              fontFamily: 'Varela',
                                              color: Color(0xFFD17E50),
                                              fontSize: 12.0))
                                    ],
                                    if (gleinfo.added) ...[
                                      Icon(Icons.remove_circle_outline,
                                          color: Color(0xFFD17E50), size: 12.0),
                                      Text('3',
                                          style: TextStyle(
                                              fontFamily: 'Varela',
                                              color: Color(0xFFD17E50),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12.0)),
                                      Icon(Icons.add_circle_outline,
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
    /*String auteurposter = "d"; 
    auteurposter == widget.cookieauteur;*/
    //build();
  }
/*
  @override
  //final assetPath, cookieprice, cookiename;
  //Galerie({this.assetPath, this.cookieprice, this.cookiename});
  Widget build(BuildContext) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          Text(widget.cookiename),
          SizedBox(height: 15.0),
          Container(
            padding: EdgeInsets.only(right: 15.0),
            width: MediaQuery.of(context).size.width - 30.0,
            height: MediaQuery.of(context).size.height - 50.0,
            child: GridView.count(
              physics: BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              childAspectRatio: 0.815,
              crossAxisCount: 2,
              shrinkWrap: true,
              //movieOscar qui liste les articles
              children: movieOscar,
            ),
          ),
          SizedBox(height: 15.0)
        ],
      ),
    );
  }
}*/

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
            physics: AlwaysScrollableScrollPhysics(),
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
                              widget.cookieauteur,
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
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
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
                        padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                        child: Text(
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
                        padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                        child: Text(
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
                        padding: EdgeInsets.only(left: 15, right: 1, top: 5),
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
                        SizedBox(height: 15.0),
                        Container(
                          padding: EdgeInsets.only(right: 15.0),
                          width: MediaQuery.of(context).size.width - 30.0,
                          height: MediaQuery.of(context).size.height - 50.0,
                          child: GridView.count(
                            physics: BouncingScrollPhysics(
                                parent: AlwaysScrollableScrollPhysics()),
                            childAspectRatio: 0.815,
                            crossAxisCount: 2,
                            shrinkWrap: true,
                            //movieOscar qui liste les articles
                            children: movieOscar,
                          ),
                        ),
                        SizedBox(height: 15.0)
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

      /*   
      Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 10,
              ),
              categoriesWidget(),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: 200,
                color: Color.fromARGB(255, 189, 132, 110),
                padding: EdgeInsets.all(10),
                child: Text(
                  'Les articles',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                //Le Widget qui permet l'affichage de tous les articles dans le Home_screen
                child: GridView.count(
                  childAspectRatio: 0.815,
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  //movieOscar qui liste les articles
                  children: movieOscar,
                ),
              )
            ],
          ),
        ),
      ),*/
    );
  }
}
