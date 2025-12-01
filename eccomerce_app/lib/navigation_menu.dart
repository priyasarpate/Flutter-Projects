import 'package:eccomerce_ui/features/shop/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu ({super.key});

  @override
  Widget build(BuildContext context) {

 final controller = Get.put(NavigationController());


    return Scaffold(
    bottomNavigationBar: Obx(
      () => NavigationBar(
        height: 80,
        elevation: 0,
        selectedIndex: controller.selectedIndex.value,
        //function 
        onDestinationSelected: (index) => controller.selectedIndex.value = index,
      destinations: [
       const NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
       const NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
       const NavigationDestination(icon: Icon(Iconsax.heart), label: 'Whishlist'),
       const NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
      ]),
    ),
    body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

  //another stateful class for index selection
  class NavigationController extends GetxController {
    final Rx<int> selectedIndex = 0.obs;
     
    final screens = [const HomeScreen(), Container(color: Colors.blue), Container(color: Colors.green), Container(color: Colors.amber),];
  }