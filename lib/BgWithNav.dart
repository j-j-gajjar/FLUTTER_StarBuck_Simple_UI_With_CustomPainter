import 'package:flutter/material.dart';
import 'package:starbucks/CustomClipperClass.dart';

class BgWithNav extends StatelessWidget {
  const BgWithNav({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        color: Colors.green[900],
        height: 100,
        width: double.infinity,
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/LOGO.png",
                  height: (size.height * 40) / 816,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
      ClipPath(
        clipper: CustomClipperClass(),
        child: Container(
          height: size.height * 0.5,
          width: double.infinity,
          color: Colors.green[900],
        ),
      ),
    ]);
  }
}
