import 'package:yandex_mapkit_in_flutter/cubit/get_current_location_cubit/get_current_location_cubit.dart';

late GetCurrentLocationCubit getCurrentLocationCubit;

void serviceLocator() {
  getCurrentLocationCubit = GetCurrentLocationCubit();
}
