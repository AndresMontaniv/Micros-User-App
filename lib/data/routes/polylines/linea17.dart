import 'package:flutter/material.dart';
import '../coordenadas/rutas.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

final Set<Polyline> ruta17 = {
  const Polyline(
    polylineId: PolylineId('LN17I'),
    color: Colors.orange,
    width: 3,
    startCap: Cap.roundCap,
    endCap: Cap.roundCap,
    points: ruta17Ida,
  ),
  const Polyline(
    polylineId: PolylineId('LN17V'),
    color: Colors.orange,
    width: 3,
    startCap: Cap.roundCap,
    endCap: Cap.roundCap,
    points: ruta17Vuelta,
  ),
};
