import 'package:flutter/material.dart';
import 'package:key_value_store_flutter/key_value_store_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MyApp(
      repository: LocalStorageRepository(
        localStorage: KeyValueStorage(
          'myApp',
          FlutterKeyValueStore(await SharedPreferences.getInstance())
        ),
      ),
    ),
  );
}