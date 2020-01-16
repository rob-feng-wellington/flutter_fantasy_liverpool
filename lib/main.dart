import 'package:flutter/material.dart';
import 'package:key_value_store_flutter/key_value_store_flutter.dart';
import 'package:my_app/repository/key_value_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:my_app/app.dart';
import 'package:my_app/repository/local_storage.dart';

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