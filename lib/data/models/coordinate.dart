import 'dart:convert';

import 'package:google_maps_flutter/google_maps_flutter.dart';
// To parse this JSON data, do
//
//     final coordinate = coordinateFromJson(jsonString);

import 'dart:convert';

class Coordinate {
  int id;
  double latitude;
  double longitude;
  int busId;
  int comingBack;
  int status;

  Coordinate({
    required this.id,
    required this.latitude,
    required this.longitude,
    required this.busId,
    required this.comingBack,
    required this.status,
  });

  factory Coordinate.fromJson(Map<String, dynamic> json) => Coordinate(
        id: json["id"],
        latitude:  double.parse(json["latitude"] ) ,
        longitude: double.parse(json["longitude"] ) ,
        busId: json["bus_id"],
        comingBack: json["coming_back"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "latitude": latitude,
        "longitude": longitude,
        "bus_id": busId,
        "coming_back": comingBack,
        "status": status,
      };

  Coordinate coordinateFromJson(String str) =>
      Coordinate.fromJson(json.decode(str));

  String coordinateToJson(Coordinate data) => json.encode(data.toJson());

  @override
  String toString() {
    return '{id: $id, latitude: $latitude, longitude: $longitude, bus_id: $busId, coming_back: $comingBack, status: $status }';
  }

  LatLng toLatLng() {
    return LatLng(latitude , longitude);
  }
}
