import 'package:flutter/material.dart';


class Favoris extends StatefulWidget {
  @override
  _FavorisSate createState() => new _FavorisSate();
}

class _FavorisSate extends State<Favoris> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
        body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Vous n\'avez pas encore de favoris',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  Icon(Icons.favorite,color: Colors.redAccent,)
                ],
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
