import 'package:flutter/material.dart';
import 'package:flutter_application/dimensions.dart';
import 'package:world_countries/world_countries.dart';
import 'country_description_page.dart';
import 'ink_wrapper.dart';

class CountryItem extends StatelessWidget {
  CountryItem({super.key, required this.countries});

  final List<WorldCountry> countries;

  BuildContext? get context => null;

  @override
  Widget build(BuildContext context) {
    context = context;
    return Column(
      children: [
        _row_two_country(this.countries.sublist(0, 2)),
        _spacing(module_3, 0),
        _row_three_country(this.countries.sublist(2, 5))
      ],
    );
  }

  Widget _row_three_country(List<WorldCountry> list) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(flex: 1, child: _flag_with_name(list[0])),
        _spacing(0, module_2),
        Flexible(flex: 1, child: _flag_with_name(list[1])),
        _spacing(0, module_2),
        Flexible(flex: 1, child: _flag_with_name(list[2]))
      ],
    );
  }

  Widget _row_two_country(List<WorldCountry> list) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(flex: 1, child: _flag_with_name(list.first)),
        _spacing(0, module_2),
        Flexible(flex: 1, child: _flag_with_name(list.last)),
      ],
    );
  }

  Widget _flag_with_name(WorldCountry country) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: [_flag(country), _name(country.name.official)],
    );
  }

  Widget _flag(WorldCountry country) {
    return Builder(
      builder: (BuildContext context) {
        return InkWrapper(
          splashColor: Colors.white38,
          borderRadius: BorderRadius.circular(module_2),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(module_2),
            child: Image(
              fit: BoxFit.fitHeight,
              image: NetworkImage(country.flagPngUrl()),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CountryDescriptionPage(country: country),
              ),
            );
          },
        );
      },
    );
  }

  Widget _name(String name) {
    return Container(
      padding: const EdgeInsets.only(left: module_2, bottom: module_1),
      child: Text(
        name,
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: module_3),
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
