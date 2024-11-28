import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:global_internet_connection_checker/internet_connection_service/internet_connection_service.dart';

final locator = GetIt.instance; // global variable

// global function
void setup() {
  locator.registerSingleton<InternetConnectionService>(
      InternetConnectionService() // factory object initialises every time when called
      );
}
