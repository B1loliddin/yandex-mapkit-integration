import 'package:flutter/material.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class PolygonPage extends StatelessWidget {
  const PolygonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: YandexMap(
        mapObjects: [
          PolygonMapObject(
            mapId: MapObjectId('1'),
            polygon: Polygon(
              outerRing: LinearRing(
                points: [
                  Point(latitude: 40.376919, longitude: 68.493941),
                  Point(latitude: 40.372418, longitude: 68.501211),
                  Point(latitude: 40.366706, longitude: 68.501211),
                  Point(latitude: 40.362552, longitude: 68.496326),
                  Point(latitude: 40.362552, longitude: 68.482467),
                  Point(latitude: 40.360388, longitude: 68.478491),
                  Point(latitude: 40.358090, longitude: 68.477146),
                  Point(latitude: 40.356314, longitude: 68.475463),
                  Point(latitude: 40.355231, longitude: 68.471948),
                  Point(latitude: 40.355231, longitude: 68.464552),
                  Point(latitude: 40.357471, longitude: 68.463682),
                  Point(latitude: 40.363487, longitude: 68.470242),
                  Point(latitude: 40.374500, longitude: 68.475802),
                  Point(latitude: 40.377296, longitude: 68.481584),
                ],
              ),
              innerRings: [],
            ),
            strokeWidth: 6,
          ),
        ],
      ),
    );
  }
}
