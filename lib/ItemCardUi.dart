import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:starbucks/OpenScreen.dart';
import 'package:starbucks/main.dart';

class ItemCardUI extends StatefulWidget {
  const ItemCardUI({
    @required this.data,
    @required this.size,
  });

  final data;
  final Size size;

  @override
  _ItemCardUIState createState() => _ItemCardUIState();
}

class _ItemCardUIState extends State<ItemCardUI> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OpenScreen(
                data: widget.data,
              ),
            ));
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: (widget.size.width * 13) / 432,
        ),
        color: Colors.transparent,
        height: (widget.size.height * 100) / 816,
        width: (widget.size.height * 140) / 432,
        padding: EdgeInsets.only(
          bottom: (widget.size.height * 10) / 816,
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
                height: (widget.size.height * 300) / 816,
                width: (widget.size.height * 130) / 432,
              ),
              bottom: 0,
            ),
            Padding(
              padding: EdgeInsets.only(right: (widget.size.height * 11) / 432),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Hero(
                    child: Image.asset(
                      widget.data.img,
                      height: (widget.size.height * 280) / 816,
                    ),
                    tag: widget.data.id,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    widget.data.name,
                    style: GoogleFonts.patuaOne(
                      fontSize: (widget.size.height * 15) / 432,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: (widget.size.height * 20) / 432,
                          vertical: (widget.size.height * 5) / 816),
                      child: Text(
                        widget.data.subtitle,
                        style: GoogleFonts.patuaOne(
                          fontSize: (widget.size.height * 8) / 432,
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
                    CartItem.add(widget.data);
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
