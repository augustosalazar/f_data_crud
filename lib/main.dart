import 'package:f_data_crud/domain/use_cases/data_use_case.dart';
import 'package:f_data_crud/ui/controllers/data_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loggy/loggy.dart';

import 'domain/repositories/data_repository.dart';
import 'ui/my_app.dart';

void main() {
  Loggy.initLoggy(
    logPrinter: const PrettyPrinter(
      showColors: true,
    ),
  );
  Get.put(DataRepository());
  Get.put(DataUseCase());
  Get.put(DataController());
  runApp(const MyApp());
}
