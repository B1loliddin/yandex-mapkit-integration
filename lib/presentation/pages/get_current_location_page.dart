import 'package:flutter/material.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';
import 'package:yandex_mapkit_in_flutter/core/service_locator.dart';
import 'package:yandex_mapkit_in_flutter/cubit/get_current_location_cubit/get_current_location_cubit.dart';

class GetCurrentLocationPage extends StatefulWidget {
  const GetCurrentLocationPage({Key? key}) : super(key: key);

  @override
  State<GetCurrentLocationPage> createState() => _GetCurrentLocationPageState();
}

class _GetCurrentLocationPageState extends State<GetCurrentLocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yandex MapKit'),
      ),
      body: StreamBuilder<GetCurrentLocationState>(
        initialData: getCurrentLocationCubit.state,
        stream: getCurrentLocationCubit.stream,
        builder: (context, snapshot) {
          return YandexMap(
            mapObjects: [
              PlacemarkMapObject(
                mapId: const MapObjectId('1'),
                point: getCurrentLocationCubit.state.currentLocation,
                text: const PlacemarkText(
                  text: 'Point',
                  style: PlacemarkTextStyle(
                    placement: TextStylePlacement.top,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getCurrentLocationCubit.determinePosition,
        child: const Icon(
          Icons.location_on,
        ),
      ),
    );
  }
}
