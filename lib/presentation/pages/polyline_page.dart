import 'package:flutter/material.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class PolylinePage extends StatelessWidget {
  const PolylinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: YandexMap(
        mapObjects: [
          PolylineMapObject(
            mapId: MapObjectId('1'),
            strokeColor: Colors.pink,
            strokeWidth: 5,
            polyline: Polyline(
              points: [
                Point(latitude: 41.311081, longitude: 69.240562),
                Point(latitude: 39.652451, longitude: 66.970139),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
