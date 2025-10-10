//This is resuable controller file 
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../screens/login/login.dart';

class OnboardingController extends GetxController{
static OnboardingController get instance => Get.find();

//variables
final pageController = PageController();
Rx <int> currentPageIndex = 0.obs;



//update current index when page scroll
void updatePageIndicator(index) => currentPageIndex.value = index;



//jump to the specific dot selected page
void dotNavigationClick(index){
   currentPageIndex.value = index;
   pageController.jumpTo(index);
}


//update current index and jump to the next page 
void nextPage(){
if (currentPageIndex.value == 2) {
  Get.to(LoginScreen());
} else {
  int page = currentPageIndex.value + 1;
  pageController.jumpToPage(page);
}
}



//update current index and jump to the last page 
void skipPage(){
   currentPageIndex.value = 2;
   pageController.jumpTo(2);
}
}