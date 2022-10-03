import 'package:flutter/material.dart';
import 'package:prototype/cookie_detail.dart';
import 'package:prototype/models/Product.dart';


class CookiePage extends StatefulWidget {
  @override
  State<CookiePage> createState() => _CookiePageState();
}

class _CookiePageState extends State<CookiePage> {
  List<Card> movieOscar = [];

  buildList() async {
    //BuildList recupere tous les articles a travers une boucle et les affiches dans un container
    for (var i = 0; i < gateau.length; i++) {
      final gleinfo = gateau[i];
      final String nameposter = gleinfo.name;
      //final String categorieposter = gleinfo.name;
      if (nameposter == "Cookie mint" || nameposter == "Cookie classic") {   
        final String priceposter = gleinfo.price.toString();
        //final String priceposter = gleinfo.price as String;
        final String imageposter = gleinfo.imgPath;
        int pourcent = 85 + i;

        movieOscar.add(
     Card(

          child: Padding(
              padding:
                  EdgeInsets.only(top: 0.0, bottom: 0.0, left: 5.0, right: 5.0),
                //  if(name == "Cookie mint"){}
              child: InkWell(
                  onTap: () {
                    
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CookieDetail(
                            assetPath: gleinfo.imgPath,
                            cookieprice: gleinfo.price,
                            cookiename: gleinfo.name)));
  
                //  );
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
                        SizedBox(height: 7.0),
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
                            child:
                                Container(color: Color(0xFFEBEBEB), height: 1.0)),
                        Padding(
                            padding: EdgeInsets.only(left: 5.0, right: 5.0),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
        )
        );
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
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 50.0,

              child: GridView.count(
                physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
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
}
