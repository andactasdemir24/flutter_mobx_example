import 'package:get_it/get_it.dart';
import 'package:mobx_example/counter.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => CounterModel());
}
