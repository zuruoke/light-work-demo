import 'package:flutter/material.dart';

BoxShadow customBoxShadow() {
  return BoxShadow(
    color: Colors.grey.withOpacity(0.5), // Shadow color and opacity
    spreadRadius: 0,
    blurRadius:
        6, // Adjust blur radius to change how 'spread out' the shadow is
    offset: const Offset(
        0, 3), // changes position of shadow, (horizontal, vertical)
  );
}
