import 'package:flutter/material.dart';

class Showdetail extends StatelessWidget {
  final String namedetail,description, posterdetail;
  final int price, size, pcent;
  //Ici nous avons les infos neccessaires a l'affichage des articles
  Showdetail({required this.namedetail, required this.price,required this.size,required this.description,required this.posterdetail, required this.pcent});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon:const Icon(
                Icons.shopping_cart,
              ),
              onPressed: (() {}),
            ),
          ],
          title: Text(
            //Ici nous avons le nom de l'article en appBar
            namedetail,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Colors.brown,
        ),
        body: ListView(
          children: <Widget>[
            Container(
              //Widget pour la photo de chaque article
              width: 200,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(image: AssetImage(posterdetail),
                  fit: BoxFit.cover,
                )
              ),
            ),

            Padding(
              padding: EdgeInsets.all(5),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      //Ici nous avons le nom de l'article avant les details
                      const Icon(Icons.play_circle_filled,color: Colors.red,size: 25,),
                      const SizedBox(width: 20,),
                      Text(namedetail, style:const  TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                    ],
                  )
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('$pcent% Liked this article ',
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      SizedBox(width: 50,),

                      const Icon(Icons.thumb_up,
                      color: Colors.blueAccent,size: 25,),
                      const SizedBox(width: 10,),
                      const Icon(Icons.thumb_down,
                      color: Colors.blueAccent,size: 25,),
                    ],
                  )
                ],
              ),
            ),

            Container(
              //Widget pour les details des articles 
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Price: $price',
                  style: const TextStyle(fontSize: 20,),),
                  Text('Taille: $size',
                  style: const TextStyle(fontSize: 20),),
                  Text(description,
                  style: const TextStyle(fontSize: 20),),
                ],
              ),
            )
          ],
        )
      );
  }
}
