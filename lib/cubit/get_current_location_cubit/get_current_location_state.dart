part of 'get_current_location_cubit.dart';

@immutable
abstract class GetCurrentLocationState {
  final Point currentLocation;

  const GetCurrentLocationState({required this.currentLocation});
}

class GetCurrentLocationInitialState extends GetCurrentLocationState {
  const GetCurrentLocationInitialState()
      : super(
          currentLocation:
              const Point(latitude: 41.311081, longitude: 69.240562),
        );
}

class GetCurrentLocationSuccessState extends GetCurrentLocationState {
  const GetCurrentLocationSuccessState({required super.currentLocation});
}

class GetCurrentLocationFailureState extends GetCurrentLocationState {
  final String message;

  const GetCurrentLocationFailureState({
    required super.currentLocation,
    required this.message,
  });
}

class GetCurrentLocationLoadingState extends GetCurrentLocationState {
  const GetCurrentLocationLoadingState({required super.currentLocation});
}
