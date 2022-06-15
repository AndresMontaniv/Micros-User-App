import 'dart:convert';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class Bus {
  int id;
  String color;
  String name;
  String? photo;
  int status;
  Polyline rutaIda;
  Polyline rutaVuelta;
//------------------------------------------------------------------------------
  Bus({
    required this.id,
    this.color = '',
    this.name = '',
    this.photo,
    this.status = 0,    
    this.rutaIda = const Polyline(polylineId: PolylineId('') ),
    this.rutaVuelta = const Polyline(polylineId: PolylineId('') ),
  });
//------------------------------------------------------------------------------
  factory Bus.fromJson(String str) => Bus.fromMap(json.decode(str));
//------------------------------------------------------------------------------
  String toJson() => json.encode(toMap());
//------------------------------------------------------------------------------
  factory Bus.fromMap(Map<String, dynamic> json) => Bus(
        id: json["id"],
        color: json["color"],
        name: json["name"],
        photo: json["photo"],
        status: json["status"],
      );
//------------------------------------------------------------------------------

  @override
  String toString() {
    return '{id: $id, color: $color, name: $name, photo: $photo, status: $status, rutaIda: $rutaIda, rutaVuelta: $rutaVuelta}';
    // return super.toString();
  }

//------------------------------------------------------------------------------
  Map<String, dynamic> toMap() => {
        'id': id,
        'color': color,
        'name': name,
        'photo': photo,
        'status': status,
      };
//------------------------------------------------------------------------------

}
