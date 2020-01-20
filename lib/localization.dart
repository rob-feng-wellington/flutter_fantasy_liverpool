import 'dart:async';
import 'package:flutter/material.dart';

class MyAppLocalizations{
  static MyAppLocalizations of(BuildContext context) {
    return Localizations.of<MyAppLocalizations>(
      context, MyAppLocalizations
    );
  }

  String get appTitle => 'Fantasy Liverpool';
  
}