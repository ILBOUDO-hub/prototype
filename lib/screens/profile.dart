import 'package:prototype/screens/parametres/favoris.dart';
import 'package:flutter/material.dart';
import 'package:prototype/screens/parametres/assistance.dart';
import 'package:prototype/screens/parametres/galerie.dart';
import 'package:prototype/screens/parametres/infos.dart';
import 'package:prototype/constants/custom_text.dart';


class PageProfile extends StatefulWidget {
  @override
  _PageProfileSate createState() => new _PageProfileSate();
}

class _PageProfileSate extends State<PageProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: SingleChildScrollView(
        child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 5),
            const Text(
              'Mon compte',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Card(
              elevation: 2.0,
                child: ElevatedButton(
                                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(30)),
                      textStyle: MaterialStateProperty.all(
                          const TextStyle(fontSize: 14, color: Colors.white ))),
                    onPressed: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (BuildContext context) {
                          return Infos();
                        })); 
                      });
                    },
                    child: Row(
                      children: [
                        const Icon(Icons.account_circle ,color: Colors.black,),
                        CustomText('  Mon profile',
                            color: Colors.black, factor: 1.5),
                      ],
                    )),
            ),
            Card(
              elevation: 2.0,
                child: ElevatedButton(
                                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(30)),
                      textStyle: MaterialStateProperty.all(
                          const TextStyle(fontSize: 14, color: Color.fromARGB(255, 254, 255, 255)))),
                    onPressed: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (BuildContext context) {
                          return galerie();
                        })); 
                      });
                    },
                    child: Row(
                      children: [
                        const Icon(Icons.picture_in_picture_sharp,color: Colors.black,),
                        CustomText('  Mes annonces',
                            color: Colors.black, factor: 1.5),
                      ],
                    )),
            ),
            Card(
              elevation: 2.0,
                child: ElevatedButton(
                                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(30)),
                      textStyle: MaterialStateProperty.all(
                          const TextStyle(fontSize: 14, color: Color.fromARGB(255, 254, 255, 255)))),
                    onPressed: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (BuildContext context) {
                          return Favoris();
                        })); 
                      });
                    },
                    child: Row(
                      children: [
                        const Icon(Icons.dashboard,color: Colors.black,),
                        CustomText('  Mes favoris',
                            color: Colors.black, factor: 1.5),
                      ],
                    )),
            ),            
            Card(
              elevation: 2.0,
                child: ElevatedButton(
                                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(30)),
                      textStyle: MaterialStateProperty.all(
                          const TextStyle(fontSize: 14, color: Color.fromARGB(255, 254, 255, 255)))),
                    onPressed: () {
                      setState(() {

                      });
                    },
                    child: Row(
                      children: [
                        const Icon(Icons.settings,color: Colors.black,),
                        CustomText('  Général',
                            color: Colors.black, factor: 1.5),
                      ],
                    )),
            ),
            Card(
              elevation: 2.0,
                child: ElevatedButton(
                                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(30)),
                      textStyle: MaterialStateProperty.all(
                          const TextStyle(fontSize: 14, color: Color.fromARGB(255, 254, 255, 255)))),
                    onPressed: () {
                      setState(() {

                      });
                    },
                    child: Row(
                      children: [
                        const Icon(Icons.notification_important_rounded ,color: Colors.black,),
                        CustomText('  Notifications',
                            color: Colors.black, factor: 1.5),
                      ],
                    )),
            ),
            Card(
              elevation: 2.0,
                child: ElevatedButton(
                      style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(30)),
                      textStyle: MaterialStateProperty.all(
                          const TextStyle(fontSize: 14, color: Color.fromARGB(255, 254, 255, 255)))),
                    onPressed: () {
                      setState(() {

                      });
                    },
                    child: Row(
                      children: [
                        const Icon(Icons.login_rounded ,color: Colors.black,),
                        CustomText('  Connexion et déconnexion',
                            color: Colors.black, factor: 1.5),
                      ],
                    )),
            ),
            Card(
              elevation: 2.0,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(30)),
                      textStyle: MaterialStateProperty.all(
                          const TextStyle(fontSize: 14, color: Color.fromARGB(255, 254, 255, 255)))),
                    onPressed: () {
                      setState(() {
                          Navigator.push(context, MaterialPageRoute(
                          builder: (BuildContext context) {
                          return Assistance();
                        })); 
                      });
                    },
                    child: Row(
                      children: [
                        const Icon(Icons.home_work_rounded ,color: Colors.black,),
                        CustomText('  Assistance',
                            color: Colors.black, factor: 1.5),
                      ],
                    )),
            ),
          //  const SizedBox(height: 50,)
          ],
        ),
        ),
      ),
    );
  }
}