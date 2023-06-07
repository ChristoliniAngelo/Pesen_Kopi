import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:pesen_kopi/pages/black.dart';
import 'package:pesen_kopi/pages/homepage.dart';
import 'package:pesen_kopi/pages/profile.dart';
import 'package:pesen_kopi/pages/spesial.dart';
import 'package:pesen_kopi/pages/tea.dart';
import 'package:pesen_kopi/utillity/coffe_tile.dart';
import 'package:pesen_kopi/utillity/coffe_type.dart';

class cocktail extends StatefulWidget {
  const cocktail({super.key});

  @override
  State<cocktail> createState() => _cocktailState();
}

class _cocktailState extends State<cocktail> {
  final List coffeetype = [
    [
      'Milk-Based',
      false,
      HomePage(),
    ],
    [
      'Black',
      false,
      Black(),
    ],
    ['Speciallity', false, Spesial()],
    [
      'Cocktail',
      true,
      cocktail(),
    ],
    [
      'Tea',
      false,
      tea(),
    ],
  ];
//coffee type di klik
  void CoffeeTypeSelected(int index) {
    setState(() {
      //looping untuk reset klik
      for (int i = 0; i < coffeetype.length; i++) {
        coffeetype[i][1] = false;
      }
      coffeetype[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Center(
            child: Text(
              'PESEN KOPI',
              style: GoogleFonts.pacifico(fontSize: 12),
            ),
          ),
          leading: Icon(LineAwesomeIcons.cocktail),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: IconButton(
                icon: const Icon(Icons.person),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Profile()));
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: 'Outlet',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined), label: 'My Favorite'),
        ]),
        body: Container(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              //JUDUL
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  "Temukan Kopi Untuk Harimu",
                  style: GoogleFonts.bebasNeue(fontSize: 60),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              //SearchBar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Cari kopimu.....',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.grey.shade600)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.grey.shade600)),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 50,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: coffeetype.length,
                    itemBuilder: (context, index) {
                      return CoffeeType(
                        coffeetype: coffeetype[index][0],
                        isSelected: coffeetype[index][1],
                        pages: coffeetype[index][2],
                      );
                    }),
              ),
              Container(
                height: 780,
                child: ListView(scrollDirection: Axis.vertical, children: [
                  CoffeeTile(
                      gambarkopi: 'lib/images/midnight.jpg',
                      hargakopi: 'Rp. 23.000',
                      deskripsikopi: 'Bergadang Jangan Bergadang',
                      namakopi: 'Midnight Storm'),
                  CoffeeTile(
                      gambarkopi: 'lib/images/berry.jpg',
                      hargakopi: 'Rp. 27.000',
                      deskripsikopi: 'Count With Me!',
                      namakopi: 'Berry Attack'),
                  CoffeeTile(
                      gambarkopi: 'lib/images/lemon.png',
                      hargakopi: 'Rp. 25.000',
                      deskripsikopi: 'Olivia Rodrigo Fav!',
                      namakopi: 'Sour Paradise'),
                  CoffeeTile(
                      gambarkopi: 'lib/images/honey.jpg',
                      hargakopi: 'Rp. 22.000',
                      deskripsikopi: 'Winnie, Give Back My Honey ',
                      namakopi: 'Honeycomb')
                ]),
              )
            ],
          ),
        ));
  }
}
