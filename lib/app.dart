import 'package:flutter/material.dart';
import 'package:my_app/repository/core_repository.dart';

class MyApp extends StatefulWidget {
  final AppRepository repository;

  MyApp({@required this.repository});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  AppState appState = AppState.loading();
}