import 'package:flutter/material.dart';
import 'package:micros_user_app/data/services/services.dart';
import 'package:micros_user_app/presentation/screens/screens.dart';
import 'package:provider/provider.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:micros_user_app/data/blocs/blocs.dart';
import 'package:micros_user_app/presentation/views/views.dart';
import 'package:micros_user_app/presentation/widgets/btn_show_range.dart';
import 'package:micros_user_app/presentation/widgets/widgets.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late LocationBloc locationBloc;
  late BusesService busesService;
  @override
  void initState() {
    super.initState();
    locationBloc = BlocProvider.of<LocationBloc>(context);
    // locationBloc.getCurrentPosition();
    locationBloc.startFollowingUser();
  }

  @override
  void dispose() {
    locationBloc.stopFollowingUser();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    busesService = Provider.of<BusesService>(context);
    if (busesService.isLoading) return const Loading2Screen();
    // print('rutdaIda----------------------------------');
    // print(busesService.buses);
    print('rutavuelta----------------------------------');
    print(busesService.buses[0].rutaVuelta.width);

    return Scaffold(
      body: BlocBuilder<LocationBloc, LocationState>(
        builder: (context, locationState) {
          if (locationState.lastKnownLocation == null) {
            return const Center(
              child: Text('Espere por favor...'),
            );
          }
          return BlocBuilder<MapBloc, MapState>(
            builder: (context, mapState) {
              final circles = Set<Circle>.from(mapState.circles);
              if (!mapState.showMyRange) {
                circles.removeWhere(
                    (element) => element.circleId.value == 'myRange');
              }
              return SingleChildScrollView(
                child: Stack(
                  children: [
                    MapView(
                      initialLocation: locationState.lastKnownLocation!,
                      polylines: Set<Polyline>.of(mapState.polylines),
                      circles: circles,
                    ),
                    const CustomSearchBar(),
                    const LegendListView(),
                  ],
                ),
              );
            },
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          BtnIntersection(),
          BtnShowRange(),
          BtnFollowUser(),
          BtnCurrentLocation(),
        ],
      ),
    );
  }

  //
}
