import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:starbucks/BgWithNav.dart';
import 'package:starbucks/DummyData.dart';
import 'package:google_fonts/google_fonts.dart';

class OpenScreen extends StatelessWidget {
  final DummyData data;

  const OpenScreen({this.data});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        BgWithNav(size: size),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: size.height * .5,
              margin: EdgeInsets.only(top: size.height * .15),
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: (size.width * 13) / 432,
                ),
                color: Colors.transparent,
                height: (size.height * 100) / 816,
                width: (size.height * 160) / 432,
                padding: EdgeInsets.only(
                  bottom: (size.height * 10) / 816,
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
                              blurRadius: 20.0,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        height: (size.height * 300) / 816,
                        width: (size.height * 160) / 432,
                      ),
                      bottom: 0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Hero(
                          child: Image.asset(
                            data.img,
                            height: (size.height * 300) / 816,
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
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          // color: Colors.red,
          width: size.width,
          height: size.height,
          padding: EdgeInsets.symmetric(horizontal: 10),
          margin: EdgeInsets.only(top: size.height * .68),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.subMain,
                  style: GoogleFonts.patuaOne(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: (size.height * 13) / 816,
                ),
                Text(
                  data.subSub,
                  style: GoogleFonts.patuaOne(),
                ),
                SizedBox(
                  height: (size.height * 13) / 816,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      child: Container(
                        height: (size.height * 60) / 816,
                        width: size.width * .7,
                        decoration: BoxDecoration(
                          color: Colors.green[100],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "CUSTOMIZE YOUR DRINK",
                            style: GoogleFonts.patuaOne(
                                color: Colors.green[900], fontSize: 20),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
