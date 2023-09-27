import 'package:flutter/material.dart';
import 'package:yandex_mapkit_in_flutter/app.dart';
import 'package:yandex_mapkit_in_flutter/core/service_locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  serviceLocator();

  runApp(const MyApp());
}
