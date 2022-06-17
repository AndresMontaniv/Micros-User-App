import 'package:flutter/material.dart';
import 'package:micros_user_app/data/models/models.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:micros_user_app/data/routes/polylines/linea1.dart';

class BusesService extends ChangeNotifier {
  final String _baseUrl = 'https://supportficct.ga/sig_backend/api/';
  final List<Bus> buses = [];
  late Bus selectedBus;
  bool isLoading = true;
  bool isSaving = false;
  //----------------------------------------------------------------------------
  BusesService() {
    loadBuses();
  }
  //----------------------------------------------------------------------------
  Future<List<Bus>> loadBuses() async {
    isLoading = true;
    notifyListeners();
    final url = (_baseUrl + 'bus/all');
    final resp = await http.get(Uri.parse(url));
    final jsonResponse = json.decode(resp.body);
    dynamic ruta;
    for (var item in jsonResponse) {
      Bus bus = Bus.fromMap(item["bus"]);
      ruta = item['paths']['ida'];
      _loadRutaIda(ruta, bus);
      ruta = item['paths']['vuelta'];
      _loadRutaVuelta(ruta, bus);
      buses.add(bus);
    }
    isLoading = false;
    notifyListeners();
    return buses;
  }

  void _loadRutaIda(dynamic response, Bus bus) {
    List<LatLng> listaIda = [];
    for (var ida in response) {
      LatLng obj =
          LatLng(double.parse(ida["latitude"]), double.parse(ida["longitude"]));
      listaIda.add(obj);
    }
    bus.rutaIda = Polyline(
      polylineId: PolylineId('LN' '$bus.id' 'I'),
      color: Colors.red.withOpacity(0.8),
      width: 3,
      startCap: Cap.roundCap,
      endCap: Cap.roundCap,
      points: listaIda,
    );
  }

  void _loadRutaVuelta(dynamic response, Bus bus) {
    List<LatLng> listaVuelta = [];
      for (var vuelta in response) {
        LatLng obj = LatLng(double.parse(vuelta["latitude"]),
            double.parse(vuelta["longitude"]));
        listaVuelta.add(obj);
      }
      bus.rutaVuelta = Polyline(
        polylineId: PolylineId('LN' '$bus.id}' 'V'),
        color: Colors.blue,
        width: 3,
        startCap: Cap.roundCap,
        endCap: Cap.roundCap,
        points: listaVuelta,
      );
  }
  //----------------------------------------------------------------------------
  void loadRutaIda(int i) async {
    isLoading = true;
    notifyListeners();
    final r = await http.get(Uri.parse(
        _baseUrl + 'coordinate/show/' + buses[i].id.toString() + '/0'));
    final response = json.decode(r.body);
    List<LatLng> listaIda = [];
    for (var item in response) {
      Coordinate obj = Coordinate.fromJson(item);
      listaIda.add(obj.toLatLng());
    }
    buses[i].rutaIda = Polyline(
      polylineId: PolylineId(buses[i].name),
      color: Colors.red.withOpacity(0.8),
      width: 3,
      startCap: Cap.roundCap,
      endCap: Cap.roundCap,
      points: listaIda,
    );
    isLoading = false;
    notifyListeners();
  }
  //----------------------------------------------------------------------------

  void loadRutaVuelta(int i) async {
    final r = await http.get(Uri.parse(
        _baseUrl + 'coordinate/show/' + buses[i].id.toString() + '/1'));
    final response = json.decode(r.body);
    List<LatLng> listaVuelta = [];
    for (var item in response) {
      Coordinate obj = Coordinate.fromJson(item);
      listaVuelta.add(obj.toLatLng());
    }
    buses[i].rutaVuelta = Polyline(
      polylineId: PolylineId(buses[i].name),
      color: Colors.blue,
      width: 4,
      startCap: Cap.roundCap,
      endCap: Cap.roundCap,
      points: listaVuelta,
    );
  }
  //----------------------------------------------------------------------------

  Future<List<Bus>> loadRuta(int i) async {
    loadRutaIda(i);
    loadRutaVuelta(i);
    return buses;
  }
}
