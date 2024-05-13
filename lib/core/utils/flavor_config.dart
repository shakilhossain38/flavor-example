import 'package:flutter/material.dart';

enum Flavor { production, development, staging }

class FlavorConfig {
  String appName = "";
  String baseUrl = "";
  MaterialColor primaryColor = Colors.blue;
  Flavor flavor = Flavor.development;

  static final FlavorConfig _instance = FlavorConfig._internal();

  factory FlavorConfig({
    String appName = "",
    String baseUrl = "",
    MaterialColor primaryColor = Colors.blue,
    Flavor flavor = Flavor.development,
  }) {
    _instance.appName = appName;
    _instance.baseUrl = baseUrl;
    _instance.primaryColor = primaryColor;
    _instance.flavor = flavor;
    return _instance;
  }

  FlavorConfig._internal();

  static FlavorConfig get instance {
    return _instance;
  }

  static bool isProduction() => _instance.flavor == Flavor.production;

  static bool isDevelopment() => _instance.flavor == Flavor.development;

  static bool isStaging() => _instance.flavor == Flavor.staging;
}
