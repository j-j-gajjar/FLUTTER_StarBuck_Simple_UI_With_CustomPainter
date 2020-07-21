import 'package:flutter/material.dart';

class CustomClipperClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(0, size.height * .7);
    path.quadraticBezierTo(
        size.width * 0.2, size.height * .6, size.width * 0.4, size.height * .7);
    path.quadraticBezierTo(
        size.width * 0.6, size.height * .8, size.width * 0.8, size.height * .7);
    path.quadraticBezierTo(
        size.width, size.height * .62, size.width, size.height * .64);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
