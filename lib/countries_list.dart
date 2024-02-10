import 'package:flutter/material.dart';
import 'package:flutter_application/country_item.dart';
import 'package:flutter_application/dimensions.dart';
import 'package:world_countries/world_countries.dart';

class CountriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.only(
            top: module_3, left: module_2, right: module_2, bottom: module_3),
        child: Wrap(
          runSpacing: module_3,
          children: _buildCountryGroups(),
        ));
  }

  List<Widget> _buildCountryGroups() {
    List<Widget> countryGroups = [];
    List<List<WorldCountry>> chunks = _chunkList(WorldCountry.list, 5);
    for (List<WorldCountry> group in chunks) {
      countryGroups.add(CountryItem(countries: group));
    }
    return countryGroups;
  }

  List<List<T>> _chunkList<T>(List<T> list, int chunkSize) {
    List<List<T>> chunks = [];
    for (int i = 0; i < list.length; i += chunkSize) {
      int end = (i + chunkSize < list.length) ? i + chunkSize : list.length;
      chunks.add(list.sublist(i, end));
    }
    return chunks;
  }
}
