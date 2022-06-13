import 'package:flutter/material.dart';

import 'package:animate_do/animate_do.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:micros_user_app/data/blocs/blocs.dart';
import 'package:micros_user_app/data/delagates/delagates.dart';
import 'package:micros_user_app/data/models/models.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class CustomSearchBar extends StatelessWidget {
  final String texto;
  const CustomSearchBar(this.texto, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return state.displayLegend
            ? const SizedBox()
            : FadeInDown(
                duration: const Duration(milliseconds: 300),
                child: const _CustomSearchBarBody(),
              );
      },
    );
  }
}

class _CustomSearchBarBody extends StatelessWidget {
  const _CustomSearchBarBody({Key? key}) : super(key: key);

  void onSearchResults(BuildContext context, SearResult result) {
    final searchBloc = BlocProvider.of<SearchBloc>(context);
    final mapBloc = BlocProvider.of<MapBloc>(context);
    searchBloc.add(OnActivateLegendEvent());
    final polylines = result.resultPolylines;
    if (polylines!.isNotEmpty) {
      mapBloc.add(UpdatePolylinesEvent(polylines));
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        width: double.infinity,
        child: GestureDetector(
          onTap: () async {
            final result = await showSearch(
                context: context, delegate: SearchRouteDelegate());
            // print(texto)
            // if (result == null) return;
            // if (result.cancel) return;
            // if (result.resultPolylines == null) return;
            // onSearchResults(context, result);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 13,
            ),
            child: const Text(
              'Elegir una Linea de Micro',
              style: TextStyle(
                color: Colors.black87,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5,
                  offset: Offset(0, 5),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

//conexion ala al servicio api -> return lista de productos
  void getBuses() async {
    var response = await http
        .get(Uri.parse('https://supportficct.ga/sig_backend/api/bus/index'));

    print("RESPUESTA GET: :  Views.Producto._getProducto => " + response.body);
    // var jsonResponse = convert.jsonDecode(response.body)['data'];
    // for (var item in jsonResponse) {
    //   Bus product = Bus.fromMap(item);
    //   // print(product);
    //   buses.add(product);
    // }
    // // print('salio del for');
    // return buses;
  }
}
