import 'package:flutter/material.dart';
import 'package:prototype/screens/inbox.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => new _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              'Mes messages',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            TextField(
              maxLines: 1,
              decoration: InputDecoration(
                fillColor: Colors.transparent,
                filled: true,
                hintStyle: TextStyle(
                    color: Colors.black.withOpacity(.4),
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0),
                prefixIcon:
                    Icon(Icons.search, color: Colors.black.withOpacity(.6)),
                hintText: 'Rechercher un utilisateur.....',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                contentPadding: EdgeInsets.zero,
              ),
            ),

            // ElevatedButton
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              width: double.infinity,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(30)),
                      textStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 254, 255, 255)))),
                  onPressed: (() {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return IChatList();
                      }));
                    });
                  }),
                  child: Row(
                    children: [
                  ClipOval( 
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: Colors.brown,
                        image: DecorationImage(
                          image: AssetImage("assets/categories/4.jpg",),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    ),
                      const Text(
                        '  BAKO Maxime',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
            ),
            const SizedBox(
              height: 2.0,
            ),

            // ElevatedButton
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              width: double.infinity,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(30)),
                      textStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 254, 255, 255)))),
                  onPressed: (() {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return IChatList();
                      }));
                    });
                  }),
                  child: Row(
                    children: [
                  ClipOval( 
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: Colors.brown,
                        image: DecorationImage(
                          image: AssetImage("assets/categories/5.jpg",),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    ),
                      const Text(
                        '  DIALLO Fadilatou',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ),
            const SizedBox(
              height: 2.0,
            ),

            // ElevatedButton
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              width: double.infinity,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(30)),
                      textStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 254, 255, 255)))),
                  onPressed: (() {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return IChatList();
                      }));
                    });
                  }),
                  child: Row(
                    children: [
                  ClipOval( 
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: Colors.brown,
                        image: DecorationImage(
                          image: AssetImage("assets/categories/3.jpg",),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    ),
                      const Text(
                        '  NANA Elodie',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ),
            const SizedBox(
              height: 2.0,
            ),

            // ElevatedButton
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              width: double.infinity,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(30)),
                      textStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 254, 255, 255)))),
                  onPressed: (() {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return IChatList();
                      }));
                    });
                  }),
                  child: Row(
                    children: [
                  ClipOval( 
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: Colors.brown,
                        image: DecorationImage(
                          image: AssetImage("assets/categories/2.jpg",),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    ),
                      const Text(
                        '  SAWADOGO Haida',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ),
            const SizedBox(
              height: 2.0,
            ),

            // ElevatedButton
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              width: double.infinity,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(30)),
                      textStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 254, 255, 255)))),
                  onPressed: (() {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return IChatList();
                      }));
                    });
                  }),
                  child: Row(
                    children: [
                  ClipOval( 
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: Colors.brown,
                        image: DecorationImage(
                          image: AssetImage("assets/categories/6.jpg",),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    ),
                      const Text(
                        '  ROUAMBA Waly',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ),
            const SizedBox(
              height: 2.0,
            ),

            // ElevatedButton
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              width: double.infinity,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(30)),
                      textStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 254, 255, 255)))),
                  onPressed: (() {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return IChatList();
                      }));
                    });
                  }),
                  child: Row(
                    children: [
                  ClipOval( 
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: Colors.brown,
                        image: DecorationImage(
                          image: AssetImage("assets/categories/1.jpg",),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    ),
                      const Text(
                        '  BADO Roch',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ),
            const SizedBox(
              height: 2.0,
            ),

                        // ElevatedButton
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              width: double.infinity,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(30)),
                      textStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 254, 255, 255)))),
                  onPressed: (() {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return IChatList();
                      }));
                    });
                  }),
                  child: Row(
                    children: [
                  ClipOval( 
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: Colors.brown,
                        image: DecorationImage(
                          image: AssetImage("assets/categories/1.jpg",),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    ),
                      const Text(
                        '  Ouedraogo Isaac',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
