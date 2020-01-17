import 'dart:async';
import 'dart:ui';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class ColorBloc extends BlocBase {
  ColorBloc();

//Stream that receives a number and changes the count;
  var _colorController = BehaviorSubject<Color>.seeded(Colors.white);

//output
  Stream<Color> get colorStream => _colorController.stream;

//input
  Sink<Color> get colorSink => _colorController.sink;

  setColor(Color color) {
    colorSink.add(color);
  }

//dispose will be called automatically by closing its streams
  @override
  void dispose() {
    _colorController.close();
    super.dispose();
  }
}
