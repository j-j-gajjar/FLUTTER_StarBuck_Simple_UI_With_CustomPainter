import 'package:flutter/material.dart';

class SizedItem extends StatefulWidget {
  @override
  _SizedItemState createState() => _SizedItemState();
}

class _SizedItemState extends State<SizedItem> {
  var currentSize = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            setState(() {
              currentSize = 1;
            });
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: currentSize == 1 ? Colors.grey : Colors.transparent,
                    blurRadius: 10,
                  )
                ]),
            child: Column(
              children: [
                Image.asset(
                  'assets/sizeImg.png',
                  width: 50,
                ),
                Text("GRANDE")
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              currentSize = 2;
            });
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: currentSize == 2 ? Colors.grey : Colors.transparent,
                    blurRadius: 10,
                  )
                ]),
            child: Column(
              children: [
                Image.asset(
                  'assets/sizeImg.png',
                  width: 60,
                ),
                Text("VENTI")
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              currentSize = 3;
            });
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: currentSize == 3 ? Colors.grey : Colors.transparent,
                    blurRadius: 10,
                  )
                ]),
            child: Column(
              children: [
                Image.asset(
                  'assets/sizeImg.png',
                  width: 70,
                ),
                Text("TALL")
              ],
            ),
          ),
        ),
//
      ],
    );
  }
}
