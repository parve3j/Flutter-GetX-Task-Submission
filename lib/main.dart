import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Task',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: getPage,
      initialRoute: task1,
    );
  }
}



// import 'package:flutter/material.dart';
//
// void main() => runApp(const MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//           colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
//       home: const NavRailExample(),
//     );
//   }
// }
//
// class NavRailExample extends StatefulWidget {
//   const NavRailExample({super.key});
//
//   @override
//   State<NavRailExample> createState() => _NavRailExampleState();
// }
//
// class _NavRailExampleState extends State<NavRailExample> {
//   int _selectedIndex = 0;
//   NavigationRailLabelType labelType = NavigationRailLabelType.all;
//   bool showLeading = false;
//   bool showTrailing = false;
//   double groupAligment = -1.0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Row(
//           children: <Widget>[
//             NavigationRail(
//               backgroundColor: Colors.black54,
//               indicatorColor: Colors.red,
//               selectedIndex: _selectedIndex,
//               groupAlignment: groupAligment,
//               onDestinationSelected: (int index) {
//                 setState(() {
//                   _selectedIndex = index;
//                 });
//               },
//               labelType: labelType,
//               destinations: const <NavigationRailDestination>[
//                 NavigationRailDestination(
//                   indicatorShape: OutlineInputBorder(),
//                   icon: Icon(Icons.favorite_border),
//                   selectedIcon: Icon(Icons.favorite),
//                   label: Text('First'),
//                 ),
//                 NavigationRailDestination(
//                   icon: Icon(Icons.bookmark_border),
//                   selectedIcon: Icon(Icons.book),
//                   label: Text('Second'),
//                 ),
//                 NavigationRailDestination(
//                   icon: Icon(Icons.star_border),
//                   selectedIcon: Icon(Icons.star),
//                   label: Text('Third'),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
