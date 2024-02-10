import 'package:flutter/material.dart';
import 'package:world_countries/world_countries.dart';

import 'dimensions.dart';

class CountryDescriptionPage extends StatelessWidget {
  final WorldCountry country;

  CountryDescriptionPage({super.key, required this.country});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Title description"),
          leading: _ic_back(),
          backgroundColor: Colors.white38,
        ),
        body: _text(),
        backgroundColor: Colors.grey);
  }

  Widget _ic_back() {
    return Builder(
      builder: (BuildContext context) {
        return IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            size: module_7,
            color: Colors.deepPurple,
          ),
        );
      },
    );
  }

  Widget _text() {
    return Container(
      padding: const EdgeInsets.only(
          left: module_4, right: module_4, bottom: module_4, top: module_7),
      child: Text("${country.namesNative}"),
    );
  }
}
