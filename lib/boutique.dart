import 'package:prototype/screens/parametres/galerie.dart';
import 'package:flutter/material.dart';

class TabBarClass extends StatefulWidget {
  @override
  _TabBarClassState createState() => new _TabBarClassState();
}

class _TabBarClassState extends State<TabBarClass> {
  @override
  Widget build(BuildContext context) {
    return galerie();
    // MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: DefaultTabController(
    //       length: 3,
    //       child: Scaffold(

    //   appBar: AppBar(
    //     title: const Text('Vendeur'),
    //     centerTitle: true,
    //     titleTextStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
    //     backgroundColor: Colors.brown,
    //     leading: IconButton(
    //           icon: const Icon(
    //             Icons.arrow_back,
    //             color: Colors.white,
    //           ),
    //           onPressed: () => Navigator.maybePop(context),
    //         ),
    //           bottom: const TabBar(tabs: [
    //             Tab(icon: Icon(Icons.directions_car)),
    //             Tab(icon: Icon(Icons.directions_transit)),
    //             Tab(icon: Icon(Icons.directions_bike)),
    //           ]),
    //   ),
    //         body: TabBarView(children: [
    //           Tab(
    //             child: Stack(children: [
    //               ListView(
    //                 children: [
    //                   ItemsWidget(),
    //                 ],
    //               ),
    //             ]),
    //           ),

    //           Tab(
    //             child: Stack(children: [
    //               ListView(
    //                 children: [
    //                   ItemsWidget(),
    //                 ],
    //               ),
    //             ]),
    //           ),

    //           Tab(
    //               child: SingleChildScrollView(
    //                   child: Card(
    //             child: Container(
    //                 width: 400,
    //                 height: 630.0,
    //                 color: Colors.white,
    //                 padding: const EdgeInsets.all(10.0),
    //                 child: Column(
    //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //                   children: [
    //                     CustomText('Audi', color: Colors.black, factor: 1.5),
    //                     Container(
    //                       width: 400,
    //                       height: 200.0,
    //                       decoration: const BoxDecoration(
    //                         /*  borderRadius: BorderRadius.circular(200.0),
    //             border: Border.all(color: Colors.white),*/
    //                         color: Colors.blue,
    //                         image: DecorationImage(
    //                           image: AssetImage("assets/images/audi2.jpg"),
    //                           fit: BoxFit.cover,
    //                         ),
    //                       ),
    //                     ),
    //                     Row(
    //                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //                       children: [
    //                         IconButton(
    //                           icon: const Icon(
    //                             Icons.person,
    //                             size: 20,
    //                           ),
    //                           onPressed: () {
    //                             Navigator.push(context, MaterialPageRoute(
    //                                 builder: (BuildContext context) {
    //                               return TabBarClass();
    //                             }));
    //                           },
    //                         ),
    //                         IconButton(
    //                           icon: const Icon(
    //                             Icons.favorite,
    //                             size: 20,
    //                           ),
    //                           onPressed: () {},
    //                         ),
    //                         IconButton(
    //                           icon: const Icon(
    //                             Icons.share,
    //                             size: 20,
    //                           ),
    //                           onPressed: () {},
    //                         ),
    //                       ],
    //                     ),
    //                     const Text(
    //                       "Recherche Opérationnel-Le transport, les tournées de distribution,l’implantation d’entrepôt-La logistique et le contrôle de la chaîne d’approvisionnement-Le choix d’investissement et la gestion du personnel-La planification d’activité sur un horizon de temps, etc.",
    //                       style: TextStyle(color: Colors.black, fontSize: 18),
    //                       textAlign: TextAlign.justify,
    //                     ),

    //                     FloatingActionButton.extended(
    //                       extendedPadding: const EdgeInsets.all(100.0),
    //                       label: const Text(
    //                         'Ecrire au vendeur',
    //                         style: TextStyle(
    //                           fontWeight: FontWeight.bold,
    //                           fontSize: 15,
    //                           color: Colors.white,
    //                         ),
    //                       ),
    //                       backgroundColor: Colors.brown,
    //                       onPressed: () {
    //                         /*  Navigator.push(context,
    //                 new MaterialPageRoute(builder: (BuildContext context) {
    //               return MyApp();
    //             })); */
    //                       },
    //                     ),
    //                   ],
    //                 )),
    //           ))),
    //         ]),
    //       )),
    //);
  }
}
