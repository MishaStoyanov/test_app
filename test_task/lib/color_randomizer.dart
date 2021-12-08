import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var _createdColors = List<Color>.empty(growable: true);

Color getColor() {
  var opacity = Random().nextInt(10) * 0.1;
  _createdColors.add(Color.fromRGBO(getRandomSaturation(),
      getRandomSaturation(), getRandomSaturation(), opacity));
  return _createdColors.last;
}

Color getPreviousColor() {
  var currentIndex = _createdColors.length - 1;
  if (currentIndex != 0) {
    _createdColors.removeLast();
    currentIndex--;
  }
  return _createdColors.elementAt(currentIndex);
}

int getRandomSaturation() {
  var rng = Random();
  return rng.nextInt(255);
}
