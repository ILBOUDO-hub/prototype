import 'dart:io';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class Infos extends StatefulWidget {
  @override
  _InfosState createState() => new _InfosState();
}

class _InfosState extends State<Infos> {
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
            title: const Text('Mes informations'),
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
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Modifier vos informations ici !',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  height: 20,
                ),
                
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                      ClipOval(
                        
                        
                            child:  Container(
                // L'espace sur lequel l'image s'afficche. Il est a defaut une chaine de caractere vide 
                color: Colors.brown,
                  width: 100,
                            height: 100,
                            
                child:  Center(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    image != null
                        ? Image.file(
                            image!,
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          )
                        :Text("Photo", textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                  ],
                ),
                ),
              ),
                    ),

              // l'icone camera sur lequel cliquer pour afficher le popup de prise ou d'importation de photo.
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    child: const Icon(
                      Icons.camera_alt,
                      size: 50,
                      color: Colors.black,
                    ),
                    backgroundColor: Colors.white,
                    // la fonction qui fait appele au popup et qui contient les buttons du popup
                    onPressed: () {
                      showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 200,
                            color: Colors.transparent,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  // le boutton prise de photo avec la camera
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      FloatingActionButton(
                                        backgroundColor: Colors.white,
                                        child: const Icon(
                                          Icons.camera_alt,
                                          size: 30,
                                          color: Colors.black,
                                        ),
                                        onPressed: () =>
                                            pickImage(ImageSource.camera),
                                      ),
                                      const Text(
                                        'Prendre une photo...',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 12,),
                                  //le button importation de photo a partir de la gallerie
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      FloatingActionButton(
                                        backgroundColor: Colors.white,
                                        child: const Icon(
                                          Icons.image_outlined,
                                          size: 30,
                                          color: Colors.black,
                                        ),
                                        onPressed: () =>
                                            pickImage(ImageSource.gallery),
                                      ),
                                      const Text(
                                        'Importer une image...',
                                        style: TextStyle(fontSize: 20),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
              ],
              ),

                const SizedBox(
                  height: 10,
                ),
                const TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          hintText: 'Username / Nom boutique',        
                          border: OutlineInputBorder(      
                            borderSide: BorderSide(color: Colors.brown),   
                            ),  
                          focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.brown),
                      ),  
                    ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          hintText: 'Nom',        
                          border: OutlineInputBorder(      
                            borderSide: BorderSide(color: Colors.brown),   
                            ),  
                          focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.brown),
                      ),  
                    ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          hintText: 'Prénom(s)',        
                          border: OutlineInputBorder(      
                            borderSide: BorderSide(color: Colors.brown),   
                            ),  
                          focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.brown),
                      ),  
                    ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          hintText: 'Contact',        
                          border: OutlineInputBorder(      
                            borderSide: BorderSide(color: Colors.brown),   
                            ),  
                          focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.brown),
                      ),  
                    ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      'By accepting the following  /',
                      style: TextStyle(fontSize: 13),
                    ),
                    Text(
                      'Terms & Conditions',
                      style: TextStyle(fontSize: 13, color: Colors.red),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                FloatingActionButton.extended(
                  extendedPadding: EdgeInsets.all(100.0),
                  label: const Text(
                    'Valider',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: Colors.brown,
                  onPressed: () {
                    /*  Navigator.push(context,
                    new MaterialPageRoute(builder: (BuildContext context) {
                  return MyApp();
                })); */
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          )),
    );
  }
}