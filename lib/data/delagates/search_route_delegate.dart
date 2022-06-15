import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:micros_user_app/data/models/models.dart';
import 'package:micros_user_app/data/routes/routes.dart';
import 'package:micros_user_app/data/services/services.dart';
import 'package:micros_user_app/presentation/screens/screens.dart';

class SearchRouteDelegate extends SearchDelegate<SearResult> {
  SearchRouteDelegate()
      : super(
          searchFieldLabel: 'Buscar...',
          keyboardType: TextInputType.number,
        );

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          print('buildActions');

          query = '';
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios),
      onPressed: () {
        print('buildLeading');

        final result = SearResult(cancel: true);
        close(context, result);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final busesService = Provider.of<BusesService>(context);
    if (busesService.isLoading) return const Loading2Screen();
    final result = BusRoutes.searchWhereLike(query);
    return result.isNotEmpty
        ? ListView.separated(
            itemBuilder: (context, i) => ListTile(
              title: Text(
                'Linea ${result.keys.elementAt(i)}',
                // 'Linea #${busesService.buses[i].id}',

                style: const TextStyle(color: Colors.black),
              ),
              leading: const FaIcon(
                FontAwesomeIcons.bus,
                color: Colors.black,
              ),
              onTap: () {
                print('buildResults');

                final res = SearResult(
                  cancel: false,
                  resultPolylines: result.values.elementAt(i),
                );
                close(context, res);
              },
            ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: result.length,
          )
        : const Center(
            child: Text(
              'No se encontraron resultados, intenta con otro numero',
              style: TextStyle(color: Colors.black87),
            ),
          );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final busesService = Provider.of<BusesService>(context);
    if (busesService.isLoading) return const Loading2Screen();
    //  print('rutdaIda----------------------------------');
    // print(busesService.buses[0].rutaIda.points);
    // print('rutavuelta----------------------------------');
    // print(busesService.buses[0].rutaVuelta.points);
    final busRoutes = BusRoutes.routes;
    return ListView.separated(
      itemBuilder: (context, i) => ListTile(
        title: Text(
          'Linea #${busesService.buses[i].id}',
          style: const TextStyle(color: Colors.black),
        ),
        leading: const FaIcon(
          FontAwesomeIcons.bus,
          color: Colors.black,
        ),
        onTap: () {
          Set<Polyline> p = {busesService.buses[i].bothWays};

          // p.add(busesService.buses[i].rutaVuelta);
           print("@@@@@@@@@@@@@@@@");
           print(p.length);
          // p.add(busesService.buses[i].rutaIda);
          // print("################");
          // print(p.length);


          // busesService.buses[i].rutaIda,
          //busesService.buses[i].rutaVuelta

          final res = SearResult(
            cancel: false,
            // resultPolylines: busRoutes.values.elementAt(i),
            // resultPolylines: {
            //   busesService.buses[i].rutaIda,
            //   busesService.buses[i].rutaVuelta
            // },
            resultPolylines: p,
          );
          close(context, res);
        },
      ),
      separatorBuilder: (_, __) => const Divider(),
      itemCount: busRoutes.length,
    );
  }
}
