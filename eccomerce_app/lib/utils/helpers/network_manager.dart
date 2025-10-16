import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/services.dart';


/// Manages the network connectivity status and provides methods to check and handle connectivity changes.
class NetworkManager extends GetxController {
  static NetworkManager get instance => Get.find();

  /// Initialize the network manager and set up a stream to continually check the connection status.
  @override
  void onInit() {
    super.onInit();
  }

  /// Update the connection status based on changes in connectivity and show a relevant popup for no internet connection.


  /// Check the internet connection status.
  /// Returns `true` if connected, `false` otherwise.


  /// Dispose or close the active connectivity stream.
  @override
  void onClose() {
    super.onClose();
  }
}