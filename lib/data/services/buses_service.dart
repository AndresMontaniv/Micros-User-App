import 'package:flutter/material.dart';
import 'package:micros_user_app/data/models/models.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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
    isLoading = false;
    notifyListeners();
    return buses;
  }
}
