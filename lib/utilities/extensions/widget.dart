import 'package:flutter/material.dart';

extension ExtendedWidget on Widget {
  addContainer(){
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(16),
      color: Colors.yellow,
      child: this,
    );
  }
}