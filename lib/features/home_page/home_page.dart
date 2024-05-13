import 'package:flavor_example/core/utils/flavor_config.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final flavorData = FlavorConfig.instance;
    TextStyle style =
        const TextStyle(fontSize: 20, fontWeight: FontWeight.w500);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(FlavorConfig.instance.appName),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Flavor name : ${flavorData.flavor.toString().split('.').last}',
            style: style,
          ),
          const SizedBox(
            height: 10,
          ),
          Text('Base url : ${flavorData.baseUrl}', style: style),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Primary color is :",
                style: style,
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 40,
                width: 40,
                color: flavorData.primaryColor,
              )
            ],
          )
        ],
      ),
    );
  }
}
