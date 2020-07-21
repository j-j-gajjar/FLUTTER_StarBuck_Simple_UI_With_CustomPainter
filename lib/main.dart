import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:starbucks/BgWithNav.dart';
import 'package:starbucks/DummyData.dart';

import 'package:starbucks/OpenScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

List<DummyData> CartItem = [];

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          BgWithNav(size: size),
          Container(
            height: size.height * .5,
            margin: EdgeInsets.only(top: size.height * .15),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i) {
                var data = dummyData[i];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OpenScreen(
                            data: data,
                          ),
                        ));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: (size.width * 13) / 432,
                    ),
                    color: Colors.transparent,
                    height: (size.height * 100) / 816,
                    width: (size.height * 140) / 432,
                    padding: EdgeInsets.only(
                      bottom: (size.height * 15) / 816,
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(.40),
                                  blurRadius: 12.0,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(30),
                            ),
                            height: (size.height * 300) / 816,
                            width: (size.height * 130) / 432,
                          ),
                          bottom: 0,
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(right: (size.height * 11) / 432),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Hero(
                                child: Image.asset(
                                  data.img,
                                  height: (size.height * 280) / 816,
                                ),
                                tag: data.id,
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                data.name,
                                style: GoogleFonts.patuaOne(
                                  fontSize: (size.height * 15) / 432,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Center(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: (size.height * 20) / 432,
                                      vertical: (size.height * 5) / 816),
                                  child: Text(
                                    data.subtitle,
                                    style: GoogleFonts.patuaOne(
                                      fontSize: (size.height * 8) / 432,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: GestureDetector(
                            child: Container(
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 35,
                                ),
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green[500],
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                if (CartItem.contains(data)) {
                                } else {
                                  CartItem.add(data);
                                }
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: dummyData.length,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: size.height * .67),
            height: size.height,
            color: Colors.white,
            width: size.width,
            child: CartItem.length != 0
                ? ListView.builder(
                    itemBuilder: (_, i) {
                      int j = i;
                      return Card(
                        child: Dismissible(
                          key: ObjectKey(CartItem[i]),
                          onDismissed: (DismissDirection direction) {
                            setState(() {
                              CartItem.remove(CartItem[i]);
                            });
                          },
                          background: Card(
                            color: Colors.red[200],
                          ),
                          direction: DismissDirection.endToStart,
                          child: ListTile(
                            leading: Image.asset(
                              CartItem[i].img,
                              height: 50,
                            ),
                            title: Text(
                              CartItem[i].name,
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: CartItem.length,
                  )
                : Container(
                    child: Center(
                      child: Text("Add Product"),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
