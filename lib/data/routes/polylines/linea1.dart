import 'package:flutter/material.dart';
import '../coordenadas/rutas.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

final Set<Polyline> ruta1 = {
  Polyline(
    polylineId: const PolylineId('LN1I'),
    color: Colors.red.withOpacity(0.7),
    width: 3,
    startCap: Cap.roundCap,
    endCap: Cap.roundCap,
    points: ruta1Ida,
  ),
  const Polyline(
    polylineId: PolylineId('LN1V'),
    color: Colors.red,
    width: 3,
    startCap: Cap.roundCap,
    endCap: Cap.roundCap,
    points: ruta1Vuelta,
  ),
};
