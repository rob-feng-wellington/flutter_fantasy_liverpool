import 'package:flutter/material.dart';
import 'package:my_app/localization.dart';
import 'package:my_app/repository/core_repository.dart';
import 'package:my_app/screens/home_screen.dart';

import 'models.dart';
import 'routes.dart';
import 'theme.dart';

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

  @override
  void initState() {
    super.initState();

    widget.repository.loadSquad().then((squad) {
      setState((){
        appState = AppState(
          squad: squad.map(Player.fromEntity).toList()
        );
      });
    }).catchError((err) {
      setState((){
        appState.isLoading = false;
      });
    });
  }

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) => MyAppLocalizations.of(context).appTitle,
      theme: ArchTheme.theme,
      localizationsDelegates: [
        ArchLocalizationsDelegate(),
        MyAppLocalizationsDelegate(),
      ],
      routes: {
        ArchRoutes.home: (context) {
          return HomeScreen(
            appState: appState
          );
        }
      }
    );
  }
}