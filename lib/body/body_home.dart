import 'package:prototype/screens/Category.dart';
import 'package:flutter/material.dart';

import 'package:prototype/screens/annonces.dart';

import 'package:prototype/screens/home.dart';
import 'package:prototype/screens/message.dart';
import 'package:prototype/screens/parametres/favoris.dart';
import 'package:prototype/screens/profile.dart';


class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _pageIndex = 0;
  int currentIndex = 0;

  final List<Widget> _tabList = [
    MyHomePage(),
    Annonces(),
    Message(),
    PageProfile(),
    Category(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentSreen = MyHomePage();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 2,
          title: const Text('YATOU'),
          centerTitle: false,
          titleTextStyle: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          backgroundColor: Colors.brown,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.favorite_sharp),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Favoris();
                }));
              },
            ),
          ],
        ),
        body: PageStorage(
          child: currentSreen,
          bucket: bucket,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.brown,
          child: Icon(
            Icons.camera_enhance,
          ),
          onPressed: (() {
            setState(() {
              currentSreen = Annonces();
              currentIndex = 1;
            });
          }),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentSreen = MyHomePage();
                        currentIndex = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color: currentIndex == 0 ? Colors.brown : Colors.grey,
                        ),
                        Text(
                          'Accueil',
                          style: TextStyle(
                            fontSize: 11,
                            color: currentIndex == 0 ? Colors.brown : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentSreen = Category();
                        currentIndex = 4;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shopping_cart,
                          color: currentIndex == 4 ? Colors.brown : Colors.grey,
                        ),
                        Text(
                          'Categories',
                          style: TextStyle(
                            fontSize: 11,
                            color: currentIndex == 4 ? Colors.brown : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
                Row(
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentSreen = Message();
                          currentIndex = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.chat,
                            color: currentIndex == 2 ? Colors.brown : Colors.grey,
                          ),
                          Text(
                            'Messages',
                            style: TextStyle(
                              fontSize: 11,
                              color:
                                  currentIndex == 2 ? Colors.brown : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentSreen = PageProfile();
                          currentIndex = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.account_circle,
                            color: currentIndex == 3 ? Colors.brown : Colors.grey,
                          ),
                          Text(
                            'Profile',
                            style: TextStyle(
                              fontSize: 11,
                              color:
                                  currentIndex == 3 ? Colors.brown : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),

        /*  drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
             DrawerHeader(
                decoration: BoxDecoration(
                /*  borderRadius: BorderRadius.circular(200.0),
                  border: Border.all(color: Colors.white),*/
                  color: Colors.brown,
                  image: DecorationImage(
                  image: AssetImage("images/ferrari2.jpeg"),fit: BoxFit.cover,
                  ),
                ),
                child: Text(
                  'Faso Store',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ), 
              const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(minRadius: 200.0,
                  backgroundImage: AssetImage("images/ferrari2.jpeg"),
                ),
                accountName: Text("Auguste ILBOUDO"), 
                accountEmail: Text("auguste.ilboudo12@gmail.com"),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/bois.jpg"),
                    fit: BoxFit.cover,
                  )
                ),
              ),
              ListTile(
                leading: Icon(Icons.admin_panel_settings_rounded),
                title: Text('Mon compte'),
                onTap: () {
                  Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
                    return new TabBarClass();
                  }));
                },
              ),
              ListTile(
                leading: Icon(Icons.calendar_month_rounded),
                title: Text('Déposer une annonce'),
                onTap: () {
                  Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
                    return new Annonces();
                  }));
                },
              ),
              ListTile(
                leading: Icon(Icons.alarm_add_rounded),
                title: Text('Mes alertes'),
                onTap: () {
                  Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
                    return new PageAlerte();
                  }));
                },
              ),
              ListTile(
                leading: Icon(Icons.sms_rounded),
                title: Text('Mes messages'),
                onTap: () {
                  Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
                    return new PageEvent();
                  }));
                },
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app_rounded),
                title: Text('Déconnexion'),
                onTap: () {
                  Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
                    return new PageEvent();
                  }));
                },
              ),
            ],
          ),
        ),


 

        body: IndexedStack(
          index: currentIndex,
          children: [
            MyHomePage(),
            Annonces(),
            Message(),
            PageProfile(),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: currentIndex,
          onDestinationSelected: (i) {
            setState(() {
              currentIndex = i;
              color: Colors.amber;
            });
          },
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home_outlined), label: "Home"),
            NavigationDestination(
                icon: Icon(Icons.collections_outlined), label: "Products"),
            NavigationDestination(icon: Icon(Icons.message),label: "Message"),
            NavigationDestination(
                icon: Icon(Icons.person_outline), label: "Profile"),
          ],
        ), 

        body: Stack(children: [
          _tabList.elementAt(_pageIndex),
          Padding(
            padding: const EdgeInsets.only(bottom: 0, top: 0, left: 0, right: 0),
            child: Align(
              alignment: const Alignment(0.0, 1.0),
              child: BottomNavigationBar(
                  selectedItemColor: Colors.black,
                  unselectedItemColor: Color.fromARGB(255, 90, 89, 89),
                  showSelectedLabels: true,
                  showUnselectedLabels: false,
                  backgroundColor: Colors.brown,
                  currentIndex: _pageIndex,
                  onTap: (int index) {
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.shopping_basket_rounded),
                      label: "Articles",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.camera_alt),
                      label: "Annonces",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.message_sharp),
                      label: "Messages",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.account_circle),
                      label: "Paramètres",
                    ),
                  ]),
            ),
          ),
        ]),*/
      ),
    );
  }
}
