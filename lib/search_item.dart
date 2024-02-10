import 'package:flutter/material.dart';
import 'package:flutter_application/dimensions.dart';
import 'package:hive/hive.dart';
import 'package:world_countries/world_countries.dart';

class SearchCountryItem extends StatefulWidget {
  final WorldCountry country;
  final bool isAdd;

  const SearchCountryItem(
      {super.key, required this.country, required this.isAdd});

  @override
  State<SearchCountryItem> createState() =>
      _SearchCountryItemState(country, isAdd);
}

class _SearchCountryItemState extends State<SearchCountryItem> {
  WorldCountry _country;
  bool _isAdd;

  _SearchCountryItemState(this._country, this._isAdd);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: module_2, right: module_2, bottom: module_2, top: module_2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [_flag(), _spacing(module_0, module_1), _name(), _add_btn()],
      ),
    );
  }

  Widget _flag() {
    return Image(
      height: 100,
      width: 100,
      image: NetworkImage(_country.flagPngUrl()),
      fit: BoxFit.fitWidth,
    );
  }

  Widget _name() {
    return Text(
      "${_country.name.official}",
      style: TextStyle(fontSize: module_3),
    );
  }

  Widget _add_btn() {
    return Container(
      padding: EdgeInsets.only(
          left: module_2, right: module_2, bottom: module_2, top: module_2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (_isAdd)
            ElevatedButton(
                onPressed: () {
                  print("JOPA 1");
                },
                child: Text("Add country"))
          else
            IconButton(
                onPressed: () {
                  print("JOPA 2");
                },
                icon: Icon(Icons.done))
        ],
      ),
    );
  }

  Widget _spacing(double height, double width) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
