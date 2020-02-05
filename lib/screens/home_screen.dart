import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_app/localization.dart';
import 'package:my_app/widgets/player_list.dart';
import '../keys.dart';
import '../models.dart';

class HomeScreen extends StatefulWidget {
  final AppState appState;

  HomeScreen({
    @required this.appState,
    Key key
  }) : super(key: ArchKeys.homeScreen);

  @override 
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  
  @override   
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(MyAppLocalizations.of(context).appTitle),
        actions: [],
      ),
      body: PlayerList(
        loading: widget.appState.isLoading,
        players: widget.appState.squad
      )
    );
  }
}