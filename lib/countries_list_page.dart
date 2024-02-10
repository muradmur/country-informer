import 'package:flutter/material.dart';
import 'package:flutter_application/countries_list.dart';
import 'package:flutter_application/dimensions.dart';
import 'package:flutter_application/search_and_add_page.dart';

class CountriesListPage extends StatelessWidget {
  const CountriesListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Countries",
            style: TextStyle(
                color: Colors.black,
                fontSize: module_5,
                fontWeight: FontWeight.w500)),
        backgroundColor: Colors.white38,
        elevation: module_0,
        actions: [_ic_add()],
      ),
      body: Container(
        child: CountriesList(),
      ),
      backgroundColor: Colors.grey,
    );
  }

  Widget _ic_add() {
    return Builder(
      builder: (BuildContext context) {
        return IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchCountryItem()));
            },
            icon: const Icon(
              Icons.add,
              size: module_7,
              color: Colors.deepPurple,
            ));
      },
    );
  }
}
