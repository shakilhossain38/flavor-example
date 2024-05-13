import 'package:flavor_example/core/utils/flavor_config.dart';
import 'package:flavor_example/root_page.dart';
import 'package:flutter/material.dart';

void main() {
  FlavorConfig(
    appName: 'Staging',
    baseUrl: 'https://flutter.com',
    flavor: Flavor.staging,
    primaryColor: Colors.yellow,
  );
  runApp(const Root());
}
