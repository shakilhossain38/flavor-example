import 'package:flavor_example/core/utils/flavor_config.dart';
import 'package:flavor_example/features/home_page/home_page.dart';
import 'package:flutter/material.dart';

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flavor example',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: FlavorConfig.instance.primaryColor),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Flavor Page'),
    );
  }
}
