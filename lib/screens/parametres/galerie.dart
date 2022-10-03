import 'dart:io';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';


class galerie extends StatefulWidget {
  const galerie({Key? key}) : super(key: key);

  @override
  _galerieState createState() => new _galerieState();
}

class _galerieState extends State<galerie> {
  final commentaireController = TextEditingController();
  File? image;
  final imagePicker = ImagePicker();
  //La fonction qui gere le l'importation et la prise de photo et de son chemin. C'est une fonction asyncrone qui prend en parametre la source de l'image
  Future pickImage(ImageSource source) async {
    try {
      final image = await imagePicker.pickImage(source: source);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print("failed to pick image: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        /*  appBar: AppBar(
        //  brightness: Brightness.light,
          backgroundColor: Colors.brown,
          elevation: 50,
          centerTitle: true,
        //  shadowColor: Colors.black.withOpacity(.5),
          title: Text('Mes informations',
              style: TextStyle(
                  color: Colors.white.withOpacity(.7),
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1)),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black.withOpacity(.8),
            ),
            onPressed: () => Navigator.maybePop(context),
          ),
        ), */

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
            //physics: NeverScrollableScrollPhysics(),
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
                                image: AssetImage("assets/images/audi2.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Faso Dafani',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        /* Container(
                            height: 100,
                            width: 150,
                            child: Icon(Icons.shopping_basket_rounded)
                        ),*/
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
                        Text(
                          '145 Publications',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
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
                      style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
                    ),
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
