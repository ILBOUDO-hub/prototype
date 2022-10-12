import 'package:flutter/material.dart';
import 'package:prototype/screens/categories/appareil.dart';
import 'package:prototype/screens/categories/boutique.dart';
import 'package:prototype/screens/categories/engins.dart';
import 'package:prototype/screens/categories/immobilier.dart';
import 'package:prototype/screens/categories/accessoire.dart';
import 'package:prototype/screens/categories/Promo.dart';


class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.only(left: 20.0),
        children:  <Widget>[
          const SizedBox(height: 15.0),
          const Text('Categories',
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 15.0),
          TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: const Color(0xFFC88D67),
              isScrollable: true,
              labelPadding: const EdgeInsets.only(right: 45.0),
              unselectedLabelColor: const Color(0xFFCDCDCD),
              tabs: const [
                /*Tab(
                  child: Text('Boutique',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ),*/
                Tab(
                  child: Text('Promo',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ),
                Tab(
                  child: Text('Mode',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ),
                Tab(
                  child: Text('Engins',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ),
                Tab(
                  child: Text('Appareils',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ),
                                Tab(
                  child: Text('Immobiliers',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                )
              ]),
              Container(
                height: MediaQuery.of(context).size.height - 50.0,
                width: double.infinity,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    //liste des widgets pour chaque page de categorie
                    //Boutique(),
                    Promo(),
                    Accessoire(),
                    Engins(),
                    Appareil(),
                    Immobilier()
                  ]
                )
              )
        ],
      ),
    );
  }
}
