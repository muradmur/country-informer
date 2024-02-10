import 'package:app_bar_with_search_switch/app_bar_with_search_switch.dart';
import 'package:flutter/material.dart';
import 'package:world_countries/world_countries.dart';

/// Виджет со списком стран для добавления и возможностью поиска по этим странам
// class SearchAndAddPage extends StatefulWidget {
//   @override
//   State<SearchAndAddPage> createState() => _SearchAndAddPageState();
// }
//
// class _SearchAndAddPageState extends State<SearchAndAddPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Search",
//           style: TextStyle(
//               fontSize: 24, color: Colors.black, fontWeight: FontWeight.w700),
//         ),
//       ),
//     );
//   }
// }

class SearchCountryItem extends StatelessWidget {
  final searchText = ValueNotifier<String>('');

  @override
  Widget build(BuildContext context) {
    var countryList = WorldCountry.list;
    return Scaffold(
      // appBar: AppBarWithSearchSwitch(
      //   onChanged: (text) {
      //     //todo добавить задержку и удаление дубликатов
      //     searchText.value = text;
      //   },
      //   animation: (child) => AppBarAnimationSlideLeft(
      //       milliseconds: 400, withFade: false, percents: 0.25, child: child),
      //   appBarBuilder: (context) {
      //     return AppBar(
      //       title: Text(
      //         "Search",
      //         style: TextStyle(
      //             fontSize: 24,
      //             color: Colors.black,
      //             fontWeight: FontWeight.w700),
      //       ),
      //       actions: const [
      //         AppBarSearchButton(),
      //       ],
      //     );
      //   },
      // ),
      // body: Center(
      //   child: SingleChildScrollView(
      //     child: AnimatedBuilder(
      //       animation: Listenable.merge([
      //         searchText,
      //       ]),
      //       builder: (BuildContext context, _) {
      //         //добавляется список тут
      //         return Wrap(
      //           children: [
      //             for (var i = 0; i < countryList.length; i++)
      //               if (countryList[i].name.official.contains(searchText.value))
      //                 SizedBox(
      //                   height: 110,
      //                   width: 110,
      //                   child: Card(
      //                     child: Column(
      //                       children: [
      //                         Expanded(
      //                           child: Center(
      //                             child: Text(
      //                               countryList[i].name.official,
      //                               style: Theme.of(context)
      //                                   .textTheme
      //                                   .headlineSmall,
      //                               textAlign: TextAlign.center,
      //                             ),
      //                           ),
      //                         ),
      //                       ],
      //                     ),
      //                   ),
      //                 ),
      //           ],
      //         );
      //       },
      //     ),
      //   ),
      // ),
    );
  }
}
