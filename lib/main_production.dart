import 'package:flavor_example/core/utils/flavor_config.dart';
import 'package:flavor_example/root_page.dart';
import 'package:flutter/material.dart';

void main() {
  FlavorConfig(
    appName: 'Production',
    baseUrl: 'https://flutter.com',
    flavor: Flavor.production,
    primaryColor: Colors.blue,
  );
  runApp(const Root());
}
