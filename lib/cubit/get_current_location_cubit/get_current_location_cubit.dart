import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

part 'get_current_location_state.dart';

class GetCurrentLocationCubit extends Cubit<GetCurrentLocationState> {
  GetCurrentLocationCubit() : super(const GetCurrentLocationInitialState());

  void determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      GetCurrentLocationFailureState(
        currentLocation: state.currentLocation,
        message: 'Location services are disabled.',
      );
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        GetCurrentLocationFailureState(
          currentLocation: state.currentLocation,
          message: 'Location permissions are denied.',
        );
      }
    }

    if (permission == LocationPermission.deniedForever) {
      GetCurrentLocationFailureState(
        currentLocation: state.currentLocation,
        message:
            'Location permissions are permanently denied, we cannot request permissions.',
      );
    }

    final Position position = await Geolocator.getCurrentPosition();
    final Point currentLocation =
        Point(latitude: position.latitude, longitude: position.longitude);

    emit(GetCurrentLocationSuccessState(currentLocation: currentLocation));
  }
}
