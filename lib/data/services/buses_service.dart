import 'package:flutter/material.dart';
import 'package:micros_user_app/data/models/models.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class BusesService extends ChangeNotifier {
  final String _baseUrl = 'https://supportficct.ga/sig_backend/api/';
  final List<Bus> buses = [];
  late Bus selectedBus;
  bool isLoading = true;
  bool isSaving = false;

  BusesService() {
    loadBuses();
  }

  Future<List<Bus>> loadBuses() async {
    isLoading = true;
    notifyListeners();
    final url = Uri.parse(_baseUrl + 'bus/index');
    final resp = await http.get(url);
    final jsonResponse = json.decode(resp.body);
    for (var item in jsonResponse) {
      Bus obj = Bus.fromMap(item);
      buses.add(obj);
    }
    for (var i = 0; i < buses.length; i++) {
      loadRutaIda(i);
      loadRutaVuelta(i);
    }
    // for (var i = 0; i < buses.length; i++) {
    //   loadRutaVuelta(i);
    // }
    isLoading = false;
    notifyListeners();
    return buses;
  }

  void loadRutaIda(int i) async {
    final r = await http.get(Uri.parse(
        _baseUrl + 'coordinate/show/' + buses[i].id.toString() + '/0'));
    final response = json.decode(r.body);
    // print('ida------------------------------------');
    // print(response);
    if (buses.isNotEmpty) {
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
    }
  }

  void loadRutaVuelta(int i) async {
    final r = await http.get(Uri.parse(
        _baseUrl + 'coordinate/show/' + buses[i].id.toString() + '/1'));
    final response = json.decode(r.body);
    // print('vuelta------------------------------------');
    // print(response);
    if (buses.isNotEmpty) {
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
  }

  Future<List<Bus>> loadRuta(int i) async {
    loadRutaIda(i);
    loadRutaVuelta(i);
    return buses;
  }
}
