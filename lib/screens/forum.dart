import 'package:flutter/material.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Forum',
      home: PageSport(),
    );
  }
}

class PageSport extends StatefulWidget {
  @override
  _PageSportSate createState() => new _PageSportSate();
}

class _PageSportSate extends State<PageSport> {
  final nomController = TextEditingController();
  final questionController = TextEditingController();
  String text = '';
  String question = '';
  String user = '';

  List<String> listeUser = [];
  List<String> listeQuestion = [];

  void clearText(){
    nomController.clear();
    questionController.clear();
  }

  int index = 0;

  void _setText() {
    setState(() {
      text = nomController.text;
      text = questionController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Forum'),
        ),
        body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 10,
            ),
            /*TextField(
            obscureText: true,
            style: TextStyle(
              color: Colors.black,
            ),
            controller: nomController,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.green,
              ),
              hintText: 'Nom',
              hintStyle: TextStyle(
                color: Colors.black38
              )
            ),
          ), */
            TextField(
              decoration: const InputDecoration(
                  labelText: 'Votre nom',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2))),
              controller: nomController,
            ),
            TextField(
              decoration: const InputDecoration(
                  labelText: 'Votre question',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2))),
              controller: questionController,
            ),
            FloatingActionButton(
              onPressed: (() {
                setState(() {
                  listeUser.add(
                    nomController.text + ':   ' + questionController.text);
                    clearText();
                  listeQuestion.add(questionController.text);
                  //  questionSuivante();
                  print(listeUser);
                  print(listeQuestion);
                  print(text);

                  print('user' + user);
                });
              }),
              child: Text('Envoyer'),
            ),

            ...listeUser.map(
              (e) {
                return Card(
                  child: Container(
                      width: 320,
                   //   height: 100.0,
                      color: Colors.white,
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                   //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(e,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),textAlign: TextAlign.justify,),
                          TextButton(
                            onPressed: (() {
                              setState(() {
                              /*  Navigator.push(context, new MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return SecondScreen(titre: e);
                                })); */
                              });
                            }),
                            child: const Text(
                              'Commenter',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 16),
                            ),
                          ),
                        ],
                      )),
                );
              },
            ),

/*
          Container(
            child: Text(listeAnswer[index].toString(), style:TextStyle(color: Colors.black)),
          //  child: print(listeAnswer),
       //   child: Text(listeAnswer.join(" ")),
          )*/
          ],
        ),
      ),
      ),
    );
  }

/*
  void questionSuivante(){
    if (index < listeQuestion.length -1){
      index ++;
      setState(() {
        index = index++;
      });
      print(index);
    } else {
      print('');
    }
  } 
*/

}

          /* Detail_screen Widget
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.amber,
                child: Hero(
                    tag: nameposter,
                    child: Material(
                      child: InkWell(
                        onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => Showdetail(namedetail: nameposter,description: gleinfo.description,size: gleinfo.size,price: gleinfo.price, 
                          posterdetail: imageposter, pcent: pourcent)
                        )),
                        child: Container(
                          height: 127,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(imageposter),
                                  fit: BoxFit.cover)),
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
              Text(
                nameposter,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    color: Colors.black),
              )
            ],
          ),
          */