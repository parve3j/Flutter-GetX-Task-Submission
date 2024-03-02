import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/controllers/select_controller.dart';
class TaskTwo extends StatelessWidget {
  final SelectController controller= SelectController();
  TaskTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: SafeArea(
        child: Row(
          children: <Widget>[
            Obx(
              ()=> NavigationRail(
                backgroundColor: Colors.white,
                indicatorColor: Colors.black54,
                selectedIndex: controller.selectedIndex.value,
                groupAlignment: controller.groupAligment,
                onDestinationSelected: (int index) {
                  controller.selectedIndex.value=index;
                },
                labelType: controller.labelType,
                destinations: const <NavigationRailDestination>[
                  NavigationRailDestination(
                    indicatorShape: OutlineInputBorder(),
                    icon: Icon(Icons.home_outlined),
                    selectedIcon: Icon(Icons.home, color: Colors.white,),
                    label: Text('Home'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.table_chart_outlined),
                    selectedIcon: Icon(Icons.table_chart, color: Colors.white,),
                    label: Text('Table'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.shop_2_outlined),
                    selectedIcon: Icon(Icons.shop_2, color: Colors.white),
                    label: Text('Order'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.notifications_none_outlined),
                    selectedIcon: Icon(Icons.notifications, color: Colors.white),
                    label: Text('Notification'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.settings_outlined),
                    selectedIcon: Icon(Icons.settings, color: Colors.white,),
                    label: Text('Setting'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );;
  }
}
