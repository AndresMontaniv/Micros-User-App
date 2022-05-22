import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:micros_user_app/data/blocs/blocs.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapView extends StatelessWidget {
  final LatLng initialLocation;
  final Set<Polyline> polylines;
  const MapView({
    Key? key,
    required this.initialLocation,
    required this.polylines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mapBloc = BlocProvider.of<MapBloc>(context);

    final CameraPosition initialCameraPosition = CameraPosition(
      target: initialLocation,
      zoom: 15,
    );

    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      height: size.height,
      child: Listener(
        onPointerMove: (pointerMoveEvent) =>
            mapBloc.add(OnStopFollowingUserMap()),
        child: GoogleMap(
          initialCameraPosition: initialCameraPosition,
          compassEnabled: true,
          myLocationEnabled: true,
          zoomControlsEnabled: false,
          myLocationButtonEnabled: false,

          polylines: mypolyLines(),
          //polygons: myPolygon(),
          onMapCreated: (controller) =>
              mapBloc.add(OnMapInitializedEvent(controller)),

          //TODO: Markers
          //TODO: Polylines
          //TODO: Cuando se mueve el mapa
        ),

      ),
    );
  }

  Set<Polyline> mypolyLines(){
    List<LatLng> polygonCoords = [];

    polygonCoords.add(LatLng(-17.786346126800002,
        -63.108675723899999
    ));




    polygonCoords.add(LatLng(-17.784520900299999,
        -63.108119400100001
    ));




    polygonCoords.add(LatLng(-17.784127299600001,
        -63.108099000199999
    ));




    polygonCoords.add(LatLng(-17.7824490002,
        -63.108067399799999
    ));




    polygonCoords.add(LatLng(-17.780549900099999,
        -63.108002800000001
    ));




    polygonCoords.add(LatLng(-17.7797984997,
        -63.107948199900001
    ));




    polygonCoords.add(LatLng(-17.7784859,
        -63.107822700100002
    ));




    polygonCoords.add(LatLng(-17.777411799900001,
        -63.107709900400003
    ));




    polygonCoords.add(LatLng(-17.7772812997,
        -63.107728399599999
    ));




    polygonCoords.add(LatLng(-17.777133299700001,
        -63.107782600299998
    ));




    polygonCoords.add(LatLng(-17.7771084004,
        -63.108104099599998
    ));




    polygonCoords.add(LatLng(-17.7771217996,
        -63.108370699600002
    ));




    polygonCoords.add(LatLng(-17.777213899700001,
        -63.108648399499998
    ));




    polygonCoords.add(LatLng(-17.777529199899998,
        -63.1094027002
    ));




    polygonCoords.add(LatLng(-17.777851400300001,
        -63.110204999799997
    ));




    polygonCoords.add(LatLng(-17.7781538003,
        -63.111006100399997
    ));




    polygonCoords.add(LatLng(-17.7784913998,
        -63.111900300400002
    ));




    polygonCoords.add(LatLng(-17.778845099600002,
        -63.112837000299997
    ));




    polygonCoords.add(LatLng(-17.779921699999999,
        -63.1155974996
    ));




    polygonCoords.add(LatLng(-17.780229799899999,
        -63.116554299999997
    ));




    polygonCoords.add(LatLng(-17.780106700299999,
        -63.1166192998
    ));




    polygonCoords.add(LatLng(-17.779557500199999,
        -63.117029899599999
    ));




    polygonCoords.add(LatLng(-17.7789894,
        -63.1174208005
    ));




    polygonCoords.add(LatLng(-17.778306099999998,
        -63.117907800200001
    ));




    polygonCoords.add(LatLng(-17.778205799999999,
        -63.117814200200002
    ));




    polygonCoords.add(LatLng(-17.7779526998,
        -63.117242400000002
    ));




    polygonCoords.add(LatLng(-17.7779138002,
        -63.117265200299997
    ));




    polygonCoords.add(LatLng(-17.777745500399998,
        -63.117350299599998
    ));




    polygonCoords.add(LatLng(-17.777184300199998,
        -63.117579499900003
    ));




    polygonCoords.add(LatLng(-17.7773158,
        -63.117963999700002
    ));




    polygonCoords.add(LatLng(-17.7775031999,
        -63.1184887004
    ));




    polygonCoords.add(LatLng(-17.7777331998,
        -63.1191227001
    ));




    polygonCoords.add(LatLng(-17.7762937004,
        -63.119562799999997
    ));




    polygonCoords.add(LatLng(-17.775679199599999,
        -63.119743900400003
    ));




    polygonCoords.add(LatLng(-17.775002299899999,
        -63.119941300000001
    ));




    polygonCoords.add(LatLng(-17.774956300300001,
        -63.1197184002
    ));




    polygonCoords.add(LatLng(-17.7747076996,
        -63.118766899699999
    ));




    polygonCoords.add(LatLng(-17.7746025004,
        -63.118354499600002
    ));




    polygonCoords.add(LatLng(-17.7744657004,
        -63.117843199600003
    ));




    polygonCoords.add(LatLng(-17.7738135998,
        -63.118038899600002
    ));




    polygonCoords.add(LatLng(-17.773187300299998,
        -63.118222599799999
    ));




    polygonCoords.add(LatLng(-17.773317299999999,
        -63.118777699699997
    ));




    polygonCoords.add(LatLng(-17.7726407002,
        -63.1188278001
    ));




    polygonCoords.add(LatLng(-17.7718677001,
        -63.118846900100003
    ));




    polygonCoords.add(LatLng(-17.770859699900001,
        -63.118906599900001
    ));




    polygonCoords.add(LatLng(-17.771031399999998,
        -63.119798099800001
    ));




    polygonCoords.add(LatLng(-17.7706038002,
        -63.120001400200003
    ));




    polygonCoords.add(LatLng(-17.770344700300001,
        -63.120145700400002
    ));




    polygonCoords.add(LatLng(-17.769830899599999,
        -63.120394100299997
    ));




    polygonCoords.add(LatLng(-17.7696617002,
        -63.120475899799999
    ));




    polygonCoords.add(LatLng(-17.7697191277,
        -63.120621009899999
    ));




    polygonCoords.add(LatLng(-17.769911237199999,
        -63.121106274200002
    ));




    polygonCoords.add(LatLng(-17.770053400199998,
        -63.121465300099999
    ));




    polygonCoords.add(LatLng(-17.770397099899998,
        -63.1223764004
    ));




    polygonCoords.add(LatLng(-17.770378999999998,
        -63.122594199600002
    ));




    polygonCoords.add(LatLng(-17.7705378,
        -63.1229758996
    ));




    polygonCoords.add(LatLng(-17.7704269,
        -63.123011599599998
    ));




    polygonCoords.add(LatLng(-17.770527900000001,
        -63.123276199700001
    ));




    polygonCoords.add(LatLng(-17.770845000400001,
        -63.1240923995
    ));




    polygonCoords.add(LatLng(-17.7712802002,
        -63.125172600399999
    ));




    polygonCoords.add(LatLng(-17.771647100199999,
        -63.126116699599997
    ));




    polygonCoords.add(LatLng(-17.7727725001,
        -63.128982100100004
    ));




    polygonCoords.add(LatLng(-17.773111700400001,
        -63.129857599700003
    ));




    polygonCoords.add(LatLng(-17.7743254996,
        -63.133107300299997
    ));




    polygonCoords.add(LatLng(-17.775995899800002,
        -63.137559000400003
    ));




    polygonCoords.add(LatLng(-17.777408900400001,
        -63.141296099800002
    ));




    polygonCoords.add(LatLng(-17.777452499999999,
        -63.141431500099998
    ));




    polygonCoords.add(LatLng(-17.7782205004,
        -63.1435218998
    ));




    polygonCoords.add(LatLng(-17.778758310200001,
        -63.144909163599998
    ));




    polygonCoords.add(LatLng(-17.779224050300002,
        -63.146110722800003
    ));




    polygonCoords.add(LatLng(-17.779374200300001,
        -63.146544100500002
    ));




    polygonCoords.add(LatLng(-17.779417199800001,
        -63.146679300099997
    ));




    polygonCoords.add(LatLng(-17.779426499700001,
        -63.1468218001
    ));




    polygonCoords.add(LatLng(-17.779414400099999,
        -63.147030499700001
    ));




    polygonCoords.add(LatLng(-17.7793721,
        -63.147077799900003
    ));




    polygonCoords.add(LatLng(-17.779289500000001,
        -63.147227699600002
    ));




    polygonCoords.add(LatLng(-17.779259099800001,
        -63.147380299600002
    ));




    polygonCoords.add(LatLng(-17.7792733004,
        -63.147535500399997
    ));




    polygonCoords.add(LatLng(-17.779317300100001,
        -63.147654700099999
    ));




    polygonCoords.add(LatLng(-17.779387699899999,
        -63.147758899899998
    ));




    polygonCoords.add(LatLng(-17.779487499799998,
        -63.147846900399998
    ));




    polygonCoords.add(LatLng(-17.779581730699999,
        -63.147950717100002
    ));




    polygonCoords.add(LatLng(-17.779726756199999,
        -63.148110496100003
    ));




    polygonCoords.add(LatLng(-17.7798334997,
        -63.148228099800001
    ));




    polygonCoords.add(LatLng(-17.779994299799998,
        -63.148468600100003
    ));




    polygonCoords.add(LatLng(-17.780097699599999,
        -63.148691100400001
    ));




    polygonCoords.add(LatLng(-17.780285299999999,
        -63.149185900399999
    ));




    polygonCoords.add(LatLng(-17.780508700199999,
        -63.149856600100001
    ));




    polygonCoords.add(LatLng(-17.7806685997,
        -63.1504671
    ));




    polygonCoords.add(LatLng(-17.780779600399999,
        -63.151105200400004
    ));




    polygonCoords.add(LatLng(-17.781016299800001,
        -63.153068800200003
    ));




    polygonCoords.add(LatLng(-17.781172199699999,
        -63.154380100099999
    ));




    polygonCoords.add(LatLng(-17.7811975997,
        -63.154616100399998
    ));




    polygonCoords.add(LatLng(-17.781206900299999,
        -63.154719500399999
    ));




    polygonCoords.add(LatLng(-17.781303899899999,
        -63.155786200100003
    ));




    polygonCoords.add(LatLng(-17.7814514003,
        -63.157328800000002
    ));




    polygonCoords.add(LatLng(-17.781539499800001,
        -63.158368400299999
    ));




    polygonCoords.add(LatLng(-17.7816051874,
        -63.159054452900001
    ));




    polygonCoords.add(LatLng(-17.781641000400001,
        -63.159440899700002
    ));




    polygonCoords.add(LatLng(-17.781678300199999,
        -63.159843100099998
    ));




    polygonCoords.add(LatLng(-17.781738500199999,
        -63.160493299999999
    ));




    polygonCoords.add(LatLng(-17.781912399900001,
        -63.162370199500003
    ));




    polygonCoords.add(LatLng(-17.781987604299999,
        -63.163053835100001
    ));




    polygonCoords.add(LatLng(-17.782069900300002,
        -63.163851500100002
    ));




    polygonCoords.add(LatLng(-17.7820829998,
        -63.163940599699998
    ));




    polygonCoords.add(LatLng(-17.782121199700001,
        -63.164183299500003
    ));




    polygonCoords.add(LatLng(-17.782159499700001,
        -63.164519499800001
    ));




    polygonCoords.add(LatLng(-17.782173699800001,
        -63.164645100400001
    ));




    polygonCoords.add(LatLng(-17.7822071999,
        -63.164975399799999
    ));




    polygonCoords.add(LatLng(-17.782286900199999,
        -63.165212699999998
    ));




    polygonCoords.add(LatLng(-17.782373699499999,
        -63.165953900200002
    ));




    polygonCoords.add(LatLng(-17.782453500300001,
        -63.166902799900001
    ));




    polygonCoords.add(LatLng(-17.782550999800002,
        -63.167759999600001
    ));




    polygonCoords.add(LatLng(-17.782556699600001,
        -63.167821300100002
    ));




    polygonCoords.add(LatLng(-17.782629900100002,
        -63.168613900399997
    ));




    polygonCoords.add(LatLng(-17.7826353996,
        -63.168674499799998
    ));




    polygonCoords.add(LatLng(-17.782708600199999,
        -63.169487000399997
    ));




    polygonCoords.add(LatLng(-17.7827862002,
        -63.1702788005
    ));




    polygonCoords.add(LatLng(-17.782793099900001,
        -63.170349000100003
    ));




    polygonCoords.add(LatLng(-17.7828005997,
        -63.170419300399999
    ));




    polygonCoords.add(LatLng(-17.7828821998,
        -63.171188800499998
    ));




    polygonCoords.add(LatLng(-17.782935999700001,
        -63.171782199600003
    ));




    polygonCoords.add(LatLng(-17.782909400200001,
        -63.171943999900002
    ));




    polygonCoords.add(LatLng(-17.7828532003,
        -63.172049199600004
    ));




    polygonCoords.add(LatLng(-17.782829300500001,
        -63.172074300299997
    ));




    polygonCoords.add(LatLng(-17.782809799900001,
        -63.172103399900003
    ));




    polygonCoords.add(LatLng(-17.782795399899999,
        -63.172135599900002
    ));




    polygonCoords.add(LatLng(-17.782605600099998,
        -63.172171800199997
    ));




    polygonCoords.add(LatLng(-17.782450999999998,
        -63.172196800199998
    ));




    polygonCoords.add(LatLng(-17.781988199600001,
        -63.1722758003
    ));




    polygonCoords.add(LatLng(-17.781795500200001,
        -63.172293399899999
    ));




    polygonCoords.add(LatLng(-17.780853499900001,
        -63.172418699600001
    ));




    polygonCoords.add(LatLng(-17.780187300000001,
        -63.172513000499997
    ));




    polygonCoords.add(LatLng(-17.779550999800001,
        -63.172604900000003
    ));




    polygonCoords.add(LatLng(-17.7794914001,
        -63.172612599799997
    ));




    polygonCoords.add(LatLng(-17.779395500300001,
        -63.172628900200003
    ));




    polygonCoords.add(LatLng(-17.7793578,
        -63.172681500000003
    ));




    polygonCoords.add(LatLng(-17.7793572004,
        -63.1727413001
    ));




    polygonCoords.add(LatLng(-17.779383900300001,
        -63.172807800299999
    ));




    polygonCoords.add(LatLng(-17.779433999999998,
        -63.172838200199998
    ));




    polygonCoords.add(LatLng(-17.7795225996,
        -63.172828599900001
    ));




    polygonCoords.add(LatLng(-17.779694099699999,
        -63.1739949002
    ));




    polygonCoords.add(LatLng(-17.779850500399998,
        -63.174991800400001
    ));




    polygonCoords.add(LatLng(-17.7801337004,
        -63.176728600399997
    ));




    polygonCoords.add(LatLng(-17.780287400300001,
        -63.177664199699997
    ));




    polygonCoords.add(LatLng(-17.780456600499999,
        -63.178769700300002
    ));




    polygonCoords.add(LatLng(-17.781499199799999,
        -63.178509000299997
    ));




    polygonCoords.add(LatLng(-17.782497900199999,
        -63.178337299900001
    ));




    polygonCoords.add(LatLng(-17.783533100300001,
        -63.178251700300002
    ));




    polygonCoords.add(LatLng(-17.784542199699999,
        -63.178153300200002
    ));




    polygonCoords.add(LatLng(-17.785380100400001,
        -63.178014200200003
    ));




    polygonCoords.add(LatLng(-17.786312299599999,
        -63.177795899800003
    ));




    polygonCoords.add(LatLng(-17.7864333998,
        -63.178315499999997
    ));




    polygonCoords.add(LatLng(-17.786529100100001,
        -63.1788395998
    ));




    polygonCoords.add(LatLng(-17.7867420999,
        -63.1801247995
    ));




    polygonCoords.add(LatLng(-17.786915100200002,
        -63.181232099900001
    ));




    polygonCoords.add(LatLng(-17.7870911003,
        -63.182300899700003
    ));




    polygonCoords.add(LatLng(-17.787144699900001,
        -63.182681499899999
    ));




    polygonCoords.add(LatLng(-17.7872488997,
        -63.1833316998
    ));




    polygonCoords.add(LatLng(-17.787359000199999,
        -63.184272500200002
    ));




    polygonCoords.add(LatLng(-17.7873846998,
        -63.184360299700003
    ));




    polygonCoords.add(LatLng(-17.7874120002,
        -63.184426000400002
    ));




    polygonCoords.add(LatLng(-17.787582199999999,
        -63.185344699799998
    ));




    polygonCoords.add(LatLng(-17.787737500199999,
        -63.186223700100001
    ));




    polygonCoords.add(LatLng(-17.787744399800001,
        -63.1862594997
    ));




    polygonCoords.add(LatLng(-17.787794600000002,
        -63.186440399799999
    ));




    polygonCoords.add(LatLng(-17.787892100099999,
        -63.186667600100002
    ));




    polygonCoords.add(LatLng(-17.788119699799999,
        -63.1872816996
    ));




    polygonCoords.add(LatLng(-17.788624300199999,
        -63.1877387997
    ));




    polygonCoords.add(LatLng(-17.788776500000001,
        -63.187910200099999
    ));




    polygonCoords.add(LatLng(-17.789071900300002,
        -63.187794599999997
    ));




    polygonCoords.add(LatLng(-17.7892072004,
        -63.1877594997
    ));




    polygonCoords.add(LatLng(-17.7893582998,
        -63.187718400100003
    ));




    polygonCoords.add(LatLng(-17.789399999800001,
        -63.187722699799998
    ));




    polygonCoords.add(LatLng(-17.789441099600001,
        -63.187714700400001
    ));




    polygonCoords.add(LatLng(-17.789477000400002,
        -63.187696299899997
    ));




    polygonCoords.add(LatLng(-17.7895070004,
        -63.187668699900001
    ));




    polygonCoords.add(LatLng(-17.789529100300001,
        -63.187633700100001
    ));




    polygonCoords.add(LatLng(-17.789735000299999,
        -63.187563100399998
    ));




    polygonCoords.add(LatLng(-17.7897890998,
        -63.187553200099998
    ));




    polygonCoords.add(LatLng(-17.790604200400001,
        -63.187434099900003
    ));




    polygonCoords.add(LatLng(-17.791653999800001,
        -63.187289199600002
    ));




    polygonCoords.add(LatLng(-17.791768900299999,
        -63.1872738004
    ));




    polygonCoords.add(LatLng(-17.792257999899999,
        -63.187207999899996
    ));




    polygonCoords.add(LatLng(-17.792733199899999,
        -63.1871334004
    ));




    polygonCoords.add(LatLng(-17.792977400200002,
        -63.187106700299999
    ));




    polygonCoords.add(LatLng(-17.793126099599998,
        -63.187100599700003
    ));




    polygonCoords.add(LatLng(-17.793161299600001,
        -63.1871410002
    ));




    polygonCoords.add(LatLng(-17.7932051003,
        -63.187170699799999
    ));




    polygonCoords.add(LatLng(-17.793353700099999,
        -63.187423600099997
    ));




    polygonCoords.add(LatLng(-17.793855199900001,
        -63.188000799900003
    ));




    polygonCoords.add(LatLng(-17.794592699799999,
        -63.188848900499998
    ));




    polygonCoords.add(LatLng(-17.795381599599999,
        -63.1897491
    ));




    polygonCoords.add(LatLng(-17.7956363859,
        -63.190034073500001
    ));




    polygonCoords.add(LatLng(-17.7957040527,
        -63.1901097581
    ));




    polygonCoords.add(LatLng(-17.795758493800001,
        -63.190170649300001
    ));




    polygonCoords.add(LatLng(-17.795957199699998,
        -63.190392900399999
    ));




    polygonCoords.add(LatLng(-17.797096799799998,
        -63.191660799899999
    ));




    polygonCoords.add(LatLng(-17.797140600300001,
        -63.191710299699999
    ));




    polygonCoords.add(LatLng(-17.797494500100001,
        -63.192110599999999
    ));




    polygonCoords.add(LatLng(-17.797814300199999,
        -63.192481500299998
    ));




    polygonCoords.add(LatLng(-17.797907800400001,
        -63.192641099600003
    ));




    polygonCoords.add(LatLng(-17.797901299700001,
        -63.192676900199999
    ));




    polygonCoords.add(LatLng(-17.797900899599998,
        -63.192713300000001
    ));




    polygonCoords.add(LatLng(-17.7979126002,
        -63.192768399599998
    ));




    polygonCoords.add(LatLng(-17.797938199800001,
        -63.192818000099997
    ));




    polygonCoords.add(LatLng(-17.797975899800001,
        -63.192858199900002
    ));




    polygonCoords.add(LatLng(-17.798022699699999,
        -63.1928859999
    ));




    polygonCoords.add(LatLng(-17.798074900100001,
        -63.192899199599999
    ));




    polygonCoords.add(LatLng(-17.798111800000001,
        -63.192899199599999
    ));




    polygonCoords.add(LatLng(-17.798148000299999,
        -63.192891899599999
    ));




    polygonCoords.add(LatLng(-17.7982256003,
        -63.192979700000002
    ));




    polygonCoords.add(LatLng(-17.798823800000001,
        -63.193678299600002
    ));




    polygonCoords.add(LatLng(-17.7995085003,
        -63.194457699700003
    ));




    polygonCoords.add(LatLng(-17.8001118004,
        -63.195134799800002
    ));




    polygonCoords.add(LatLng(-17.800427999699998,
        -63.195489600400002
    ));




    polygonCoords.add(LatLng(-17.800856699600001,
        -63.195970699999997
    ));




    polygonCoords.add(LatLng(-17.801272299699999,
        -63.196441499800002
    ));




    polygonCoords.add(LatLng(-17.8013410997,
        -63.1965176
    ));




    polygonCoords.add(LatLng(-17.8014157004,
        -63.196605700299997
    ));




    polygonCoords.add(LatLng(-17.801460299799999,
        -63.196662099800001
    ));




    polygonCoords.add(LatLng(-17.801542300099999,
        -63.1967570001
    ));




    polygonCoords.add(LatLng(-17.802649800000001,
        -63.197998699599999
    ));




    polygonCoords.add(LatLng(-17.8032356999,
        -63.198645100199997
    ));




    polygonCoords.add(LatLng(-17.803563699800002,
        -63.199006400099996
    ));




    polygonCoords.add(LatLng(-17.8038041999,
        -63.199294100300001
    ));




    polygonCoords.add(LatLng(-17.803865099999999,
        -63.199365499599999
    ));




    polygonCoords.add(LatLng(-17.803945599999999,
        -63.199294799900002
    ));




    polygonCoords.add(LatLng(-17.8040283996,
        -63.199217700399998
    ));




    polygonCoords.add(LatLng(-17.804332199800001,
        -63.198971099700003
    ));




    polygonCoords.add(LatLng(-17.804757799899999,
        -63.198617799600001
    ));




    polygonCoords.add(LatLng(-17.804885499600001,
        -63.1985075001
    ));




    polygonCoords.add(LatLng(-17.8052944999,
        -63.199040099900003
    ));




    polygonCoords.add(LatLng(-17.8060779001,
        -63.1982732998
    ));




    polygonCoords.add(LatLng(-17.806721200399998,
        -63.197672500000003
    ));




    polygonCoords.add(LatLng(-17.807268200100001,
        -63.198485400000003
    ));




    polygonCoords.add(LatLng(-17.807365900400001,
        -63.1986231996
    ));




    polygonCoords.add(LatLng(-17.807759300200001,
        -63.199178000099998
    ));




    polygonCoords.add(LatLng(-17.807819999700001,
        -63.199280399899997
    ));




    polygonCoords.add(LatLng(-17.8082077999,
        -63.199817499799998
    ));




    polygonCoords.add(LatLng(-17.808532200399998,
        -63.200285900200001
    ));




    polygonCoords.add(LatLng(-17.808653999600001,
        -63.200463299600003
    ));




    polygonCoords.add(LatLng(-17.809476900100002,
        -63.200332899800003
    ));




    polygonCoords.add(LatLng(-17.810112499799999,
        -63.200236999700003
    ));




    polygonCoords.add(LatLng(-17.811680299999999,
        -63.2000072003
    ));




    polygonCoords.add(LatLng(-17.8123626,
        -63.199893600400003
    ));




    polygonCoords.add(LatLng(-17.8128928,
        -63.199796999599997
    ));




    polygonCoords.add(LatLng(-17.813942399999998,
        -63.199617099900003
    ));




    polygonCoords.add(LatLng(-17.815953299699999,
        -63.199281199600001
    ));




    polygonCoords.add(LatLng(-17.8164503004,
        -63.199200800299998
    ));




    polygonCoords.add(LatLng(-17.8166057,
        -63.199186900299999
    ));




    polygonCoords.add(LatLng(-17.816693999799998,
        -63.199177000399999
    ));




    polygonCoords.add(LatLng(-17.818762999600001,
        -63.198733399699996
    ));




    polygonCoords.add(LatLng(-17.818343800099999,
        -63.199460000000002
    ));




    polygonCoords.add(LatLng(-17.8183187998,
        -63.199503400099999
    ));




    polygonCoords.add(LatLng(-17.8182644997,
        -63.199589900200003
    ));




    polygonCoords.add(LatLng(-17.8185372003,
        -63.199830299699997
    ));




    polygonCoords.add(LatLng(-17.818975999900001,
        -63.199131299599998
    ));




    polygonCoords.add(LatLng(-17.819176999900002,
        -63.198758700200003
    ));




    polygonCoords.add(LatLng(-17.8193649,
        -63.198631000100001
    ));




    polygonCoords.add(LatLng(-17.819510400399999,
        -63.198588500299998
    ));




    polygonCoords.add(LatLng(-17.819686700199998,
        -63.198623599699999
    ));




    polygonCoords.add(LatLng(-17.820377299800001,
        -63.1989673
    ));




    polygonCoords.add(LatLng(-17.820553099600001,
        -63.199057500000002
    ));




    polygonCoords.add(LatLng(-17.8213306002,
        -63.1994768996
    ));




    polygonCoords.add(LatLng(-17.8222118001,
        -63.199924200300003
    ));




    polygonCoords.add(LatLng(-17.8226221995,
        -63.200102600400001
    ));




    polygonCoords.add(LatLng(-17.8227893,
        -63.200195300300003
    ));




    polygonCoords.add(LatLng(-17.824032999899998,
        -63.200831099600002
    ));




    polygonCoords.add(LatLng(-17.824080500299999,
        -63.200850600300001
    ));




    polygonCoords.add(LatLng(-17.8242277003,
        -63.200928600300003
    ));




    polygonCoords.add(LatLng(-17.8262969996,
        -63.201975599599997
    ));




    polygonCoords.add(LatLng(-17.827162199899998,
        -63.202408100500001
    ));




    polygonCoords.add(LatLng(-17.827931700299999,
        -63.202816299699997
    ));




    polygonCoords.add(LatLng(-17.8281427999,
        -63.202928199699997
    ));




    polygonCoords.add(LatLng(-17.828436000300002,
        -63.203056600300002
    ));




    polygonCoords.add(LatLng(-17.828495999899999,
        -63.203057999800002
    ));




    polygonCoords.add(LatLng(-17.828565400199999,
        -63.203039799700001
    ));




    polygonCoords.add(LatLng(-17.828640100000001,
        -63.203003399700002
    ));




    polygonCoords.add(LatLng(-17.8287013998,
        -63.202985199799997
    ));




    polygonCoords.add(LatLng(-17.8287759004,
        -63.202962100100002
    ));




    polygonCoords.add(LatLng(-17.828867299599999,
        -63.202859999899999
    ));




    polygonCoords.add(LatLng(-17.829806599899999,
        -63.202075499999999
    ));




    polygonCoords.add(LatLng(-17.830435800099998,
        -63.2015566002
    ));




    polygonCoords.add(LatLng(-17.830649299600001,
        -63.201358800000001
    ));




    polygonCoords.add(LatLng(-17.832096799799999,
        -63.200036999799998
    ));




    polygonCoords.add(LatLng(-17.832579099899998,
        -63.199579700299999
    ));




    polygonCoords.add(LatLng(-17.8330701,
        -63.199104199600001
    ));




    polygonCoords.add(LatLng(-17.833407400199999,
        -63.198785299800001
    ));




    polygonCoords.add(LatLng(-17.8335757999,
        -63.198667499999999
    ));




    polygonCoords.add(LatLng(-17.834067900400001,
        -63.198207299899998
    ));




    polygonCoords.add(LatLng(-17.834931299600001,
        -63.197373799600001
    ));




    polygonCoords.add(LatLng(-17.835404799799999,
        -63.1969387002
    ));




    polygonCoords.add(LatLng(-17.8362902997,
        -63.197986499700001
    ));




    polygonCoords.add(LatLng(-17.8367301999,
        -63.198514800300003
    ));




    polygonCoords.add(LatLng(-17.837177500199999,
        -63.199015899700001
    ));




    polygonCoords.add(LatLng(-17.837655400100001,
        -63.199512299799999
    ));




    polygonCoords.add(LatLng(-17.838820299599998,
        -63.200869600200001
    ));




    polygonCoords.add(LatLng(-17.838936199999999,
        -63.201022299800002
    ));




    polygonCoords.add(LatLng(-17.839349500200001,
        -63.200135199999998
    ));




    polygonCoords.add(LatLng(-17.839486199700001,
        -63.200204599599999
    ));




    polygonCoords.add(LatLng(-17.839511000200002,
        -63.200223099699997
    ));




    polygonCoords.add(LatLng(-17.840020299900001,
        -63.200517399900001
    ));




    polygonCoords.add(LatLng(-17.840193299599999,
        -63.200590499800001
    ));




    polygonCoords.add(LatLng(-17.840801899900001,
        -63.200920100200001
    ));




    polygonCoords.add(LatLng(-17.840854500399999,
        -63.2009469001
    ));




    polygonCoords.add(LatLng(-17.842343700299999,
        -63.201708300200004
    ));




    polygonCoords.add(LatLng(-17.842944700299999,
        -63.202002300399997
    ));




    polygonCoords.add(LatLng(-17.843318100299999,
        -63.201218299799997
    ));




    polygonCoords.add(LatLng(-17.843828399700001,
        -63.200122300499999
    ));




    polygonCoords.add(LatLng(-17.8444607996,
        -63.200451000299999
    ));




    polygonCoords.add(LatLng(-17.844704600299998,
        -63.200534899899999
    ));




    polygonCoords.add(LatLng(-17.845334600200001,
        -63.200885800199998
    ));




    polygonCoords.add(LatLng(-17.846440400300001,
        -63.201445399900003
    ));




    polygonCoords.add(LatLng(-17.846872699599999,
        -63.201656299900002
    ));




    polygonCoords.add(LatLng(-17.846979599699999,
        -63.201736900500002
    ));




    polygonCoords.add(LatLng(-17.847030800399999,
        -63.201776399800004
    ));




    polygonCoords.add(LatLng(-17.846836099600001,
        -63.202151300099999
    ));




    polygonCoords.add(LatLng(-17.846722199999999,
        -63.202403200100001
    ));




    polygonCoords.add(LatLng(-17.846752900399999,
        -63.202526600299997
    ));




    polygonCoords.add(LatLng(-17.846978800199999,
        -63.202661499999998
    ));




    polygonCoords.add(LatLng(-17.8472852001,
        -63.202849200000003
    ));




    polygonCoords.add(LatLng(-17.848377899799999,
        -63.203487600099997
    ));




    polygonCoords.add(LatLng(-17.848910500199999,
        -63.203824299899999
    ));




    polygonCoords.add(LatLng(-17.849157400300001,
        -63.204040699899998
    ));




    polygonCoords.add(LatLng(-17.849904199600001,
        -63.2027777001
    ));




    polygonCoords.add(LatLng(-17.8505833002,
        -63.201633200400003
    ));




    polygonCoords.add(LatLng(-17.851437499999999,
        -63.200190799600001
    ));




    polygonCoords.add(LatLng(-17.851963999799999,
        -63.200520999799998
    ));




    polygonCoords.add(LatLng(-17.8524387002,
        -63.200831499899998
    ));




    polygonCoords.add(LatLng(-17.8529198001,
        -63.201135299999997
    ));




    polygonCoords.add(LatLng(-17.852775600000001,
        -63.201416399999999
    ));




    polygonCoords.add(LatLng(-17.8534962998,
        -63.201970600199999
    ));




    polygonCoords.add(LatLng(-17.854355199699999,
        -63.202607999599998
    ));




    polygonCoords.add(LatLng(-17.8552749001,
        -63.203323300299999
    ));




    polygonCoords.add(LatLng(-17.8548603003,
        -63.203915499700003
    ));

    polygonCoords.add(LatLng(-17.854212280300001,
        -63.204138608800001));

    Set<Polyline> polygonSet = new Set();
    polygonSet.add(Polyline(
        polylineId: PolylineId('test'),
        points: polygonCoords,
        color: Colors.deepOrange,
        width: 3
        ));

    return polygonSet;
  }
  }

  Set<Polygon> myPolygon() {
    List<LatLng> polygonCoords = [];

    polygonCoords.add(LatLng(-17.786346126800002,
        -63.108675723899999
    ));




    polygonCoords.add(LatLng(-17.784520900299999,
        -63.108119400100001
    ));




    polygonCoords.add(LatLng(-17.784127299600001,
        -63.108099000199999
    ));




    polygonCoords.add(LatLng(-17.7824490002,
        -63.108067399799999
    ));




    polygonCoords.add(LatLng(-17.780549900099999,
        -63.108002800000001
    ));




    polygonCoords.add(LatLng(-17.7797984997,
        -63.107948199900001
    ));




    polygonCoords.add(LatLng(-17.7784859,
        -63.107822700100002
    ));




    polygonCoords.add(LatLng(-17.777411799900001,
        -63.107709900400003
    ));




    polygonCoords.add(LatLng(-17.7772812997,
        -63.107728399599999
    ));




    polygonCoords.add(LatLng(-17.777133299700001,
        -63.107782600299998
    ));




    polygonCoords.add(LatLng(-17.7771084004,
        -63.108104099599998
    ));




    polygonCoords.add(LatLng(-17.7771217996,
        -63.108370699600002
    ));




    polygonCoords.add(LatLng(-17.777213899700001,
        -63.108648399499998
    ));




    polygonCoords.add(LatLng(-17.777529199899998,
        -63.1094027002
    ));




    polygonCoords.add(LatLng(-17.777851400300001,
        -63.110204999799997
    ));




    polygonCoords.add(LatLng(-17.7781538003,
        -63.111006100399997
    ));




    polygonCoords.add(LatLng(-17.7784913998,
        -63.111900300400002
    ));




    polygonCoords.add(LatLng(-17.778845099600002,
        -63.112837000299997
    ));




    polygonCoords.add(LatLng(-17.779921699999999,
        -63.1155974996
    ));




    polygonCoords.add(LatLng(-17.780229799899999,
        -63.116554299999997
    ));




    polygonCoords.add(LatLng(-17.780106700299999,
        -63.1166192998
    ));




    polygonCoords.add(LatLng(-17.779557500199999,
        -63.117029899599999
    ));




    polygonCoords.add(LatLng(-17.7789894,
        -63.1174208005
    ));




    polygonCoords.add(LatLng(-17.778306099999998,
        -63.117907800200001
    ));




    polygonCoords.add(LatLng(-17.778205799999999,
        -63.117814200200002
    ));




    polygonCoords.add(LatLng(-17.7779526998,
        -63.117242400000002
    ));




    polygonCoords.add(LatLng(-17.7779138002,
        -63.117265200299997
    ));




    polygonCoords.add(LatLng(-17.777745500399998,
        -63.117350299599998
    ));




    polygonCoords.add(LatLng(-17.777184300199998,
        -63.117579499900003
    ));




    polygonCoords.add(LatLng(-17.7773158,
        -63.117963999700002
    ));




    polygonCoords.add(LatLng(-17.7775031999,
        -63.1184887004
    ));




    polygonCoords.add(LatLng(-17.7777331998,
        -63.1191227001
    ));




    polygonCoords.add(LatLng(-17.7762937004,
        -63.119562799999997
    ));




    polygonCoords.add(LatLng(-17.775679199599999,
        -63.119743900400003
    ));




    polygonCoords.add(LatLng(-17.775002299899999,
        -63.119941300000001
    ));




    polygonCoords.add(LatLng(-17.774956300300001,
        -63.1197184002
    ));




    polygonCoords.add(LatLng(-17.7747076996,
        -63.118766899699999
    ));




    polygonCoords.add(LatLng(-17.7746025004,
        -63.118354499600002
    ));




    polygonCoords.add(LatLng(-17.7744657004,
        -63.117843199600003
    ));




    polygonCoords.add(LatLng(-17.7738135998,
        -63.118038899600002
    ));




    polygonCoords.add(LatLng(-17.773187300299998,
        -63.118222599799999
    ));




    polygonCoords.add(LatLng(-17.773317299999999,
        -63.118777699699997
    ));




    polygonCoords.add(LatLng(-17.7726407002,
        -63.1188278001
    ));




    polygonCoords.add(LatLng(-17.7718677001,
        -63.118846900100003
    ));




    polygonCoords.add(LatLng(-17.770859699900001,
        -63.118906599900001
    ));




    polygonCoords.add(LatLng(-17.771031399999998,
        -63.119798099800001
    ));




    polygonCoords.add(LatLng(-17.7706038002,
        -63.120001400200003
    ));




    polygonCoords.add(LatLng(-17.770344700300001,
        -63.120145700400002
    ));




    polygonCoords.add(LatLng(-17.769830899599999,
        -63.120394100299997
    ));




    polygonCoords.add(LatLng(-17.7696617002,
        -63.120475899799999
    ));




    polygonCoords.add(LatLng(-17.7697191277,
        -63.120621009899999
    ));




    polygonCoords.add(LatLng(-17.769911237199999,
        -63.121106274200002
    ));




    polygonCoords.add(LatLng(-17.770053400199998,
        -63.121465300099999
    ));




    polygonCoords.add(LatLng(-17.770397099899998,
        -63.1223764004
    ));




    polygonCoords.add(LatLng(-17.770378999999998,
        -63.122594199600002
    ));




    polygonCoords.add(LatLng(-17.7705378,
        -63.1229758996
    ));




    polygonCoords.add(LatLng(-17.7704269,
        -63.123011599599998
    ));




    polygonCoords.add(LatLng(-17.770527900000001,
        -63.123276199700001
    ));




    polygonCoords.add(LatLng(-17.770845000400001,
        -63.1240923995
    ));




    polygonCoords.add(LatLng(-17.7712802002,
        -63.125172600399999
    ));




    polygonCoords.add(LatLng(-17.771647100199999,
        -63.126116699599997
    ));




    polygonCoords.add(LatLng(-17.7727725001,
        -63.128982100100004
    ));




    polygonCoords.add(LatLng(-17.773111700400001,
        -63.129857599700003
    ));




    polygonCoords.add(LatLng(-17.7743254996,
        -63.133107300299997
    ));




    polygonCoords.add(LatLng(-17.775995899800002,
        -63.137559000400003
    ));




    polygonCoords.add(LatLng(-17.777408900400001,
        -63.141296099800002
    ));




    polygonCoords.add(LatLng(-17.777452499999999,
        -63.141431500099998
    ));




    polygonCoords.add(LatLng(-17.7782205004,
        -63.1435218998
    ));




    polygonCoords.add(LatLng(-17.778758310200001,
        -63.144909163599998
    ));




    polygonCoords.add(LatLng(-17.779224050300002,
        -63.146110722800003
    ));




    polygonCoords.add(LatLng(-17.779374200300001,
        -63.146544100500002
    ));




    polygonCoords.add(LatLng(-17.779417199800001,
        -63.146679300099997
    ));




    polygonCoords.add(LatLng(-17.779426499700001,
        -63.1468218001
    ));




    polygonCoords.add(LatLng(-17.779414400099999,
        -63.147030499700001
    ));




    polygonCoords.add(LatLng(-17.7793721,
        -63.147077799900003
    ));




    polygonCoords.add(LatLng(-17.779289500000001,
        -63.147227699600002
    ));




    polygonCoords.add(LatLng(-17.779259099800001,
        -63.147380299600002
    ));




    polygonCoords.add(LatLng(-17.7792733004,
        -63.147535500399997
    ));




    polygonCoords.add(LatLng(-17.779317300100001,
        -63.147654700099999
    ));




    polygonCoords.add(LatLng(-17.779387699899999,
        -63.147758899899998
    ));




    polygonCoords.add(LatLng(-17.779487499799998,
        -63.147846900399998
    ));




    polygonCoords.add(LatLng(-17.779581730699999,
        -63.147950717100002
    ));




    polygonCoords.add(LatLng(-17.779726756199999,
        -63.148110496100003
    ));




    polygonCoords.add(LatLng(-17.7798334997,
        -63.148228099800001
    ));




    polygonCoords.add(LatLng(-17.779994299799998,
        -63.148468600100003
    ));




    polygonCoords.add(LatLng(-17.780097699599999,
        -63.148691100400001
    ));




    polygonCoords.add(LatLng(-17.780285299999999,
        -63.149185900399999
    ));




    polygonCoords.add(LatLng(-17.780508700199999,
        -63.149856600100001
    ));




    polygonCoords.add(LatLng(-17.7806685997,
        -63.1504671
    ));




    polygonCoords.add(LatLng(-17.780779600399999,
        -63.151105200400004
    ));




    polygonCoords.add(LatLng(-17.781016299800001,
        -63.153068800200003
    ));




    polygonCoords.add(LatLng(-17.781172199699999,
        -63.154380100099999
    ));




    polygonCoords.add(LatLng(-17.7811975997,
        -63.154616100399998
    ));




    polygonCoords.add(LatLng(-17.781206900299999,
        -63.154719500399999
    ));




    polygonCoords.add(LatLng(-17.781303899899999,
        -63.155786200100003
    ));




    polygonCoords.add(LatLng(-17.7814514003,
        -63.157328800000002
    ));




    polygonCoords.add(LatLng(-17.781539499800001,
        -63.158368400299999
    ));




    polygonCoords.add(LatLng(-17.7816051874,
        -63.159054452900001
    ));




    polygonCoords.add(LatLng(-17.781641000400001,
        -63.159440899700002
    ));




    polygonCoords.add(LatLng(-17.781678300199999,
        -63.159843100099998
    ));




    polygonCoords.add(LatLng(-17.781738500199999,
        -63.160493299999999
    ));




    polygonCoords.add(LatLng(-17.781912399900001,
        -63.162370199500003
    ));




    polygonCoords.add(LatLng(-17.781987604299999,
        -63.163053835100001
    ));




    polygonCoords.add(LatLng(-17.782069900300002,
        -63.163851500100002
    ));




    polygonCoords.add(LatLng(-17.7820829998,
        -63.163940599699998
    ));




    polygonCoords.add(LatLng(-17.782121199700001,
        -63.164183299500003
    ));




    polygonCoords.add(LatLng(-17.782159499700001,
        -63.164519499800001
    ));




    polygonCoords.add(LatLng(-17.782173699800001,
        -63.164645100400001
    ));




    polygonCoords.add(LatLng(-17.7822071999,
        -63.164975399799999
    ));




    polygonCoords.add(LatLng(-17.782286900199999,
        -63.165212699999998
    ));




    polygonCoords.add(LatLng(-17.782373699499999,
        -63.165953900200002
    ));




    polygonCoords.add(LatLng(-17.782453500300001,
        -63.166902799900001
    ));




    polygonCoords.add(LatLng(-17.782550999800002,
        -63.167759999600001
    ));




    polygonCoords.add(LatLng(-17.782556699600001,
        -63.167821300100002
    ));




    polygonCoords.add(LatLng(-17.782629900100002,
        -63.168613900399997
    ));




    polygonCoords.add(LatLng(-17.7826353996,
        -63.168674499799998
    ));




    polygonCoords.add(LatLng(-17.782708600199999,
        -63.169487000399997
    ));




    polygonCoords.add(LatLng(-17.7827862002,
        -63.1702788005
    ));




    polygonCoords.add(LatLng(-17.782793099900001,
        -63.170349000100003
    ));




    polygonCoords.add(LatLng(-17.7828005997,
        -63.170419300399999
    ));




    polygonCoords.add(LatLng(-17.7828821998,
        -63.171188800499998
    ));




    polygonCoords.add(LatLng(-17.782935999700001,
        -63.171782199600003
    ));




    polygonCoords.add(LatLng(-17.782909400200001,
        -63.171943999900002
    ));




    polygonCoords.add(LatLng(-17.7828532003,
        -63.172049199600004
    ));




    polygonCoords.add(LatLng(-17.782829300500001,
        -63.172074300299997
    ));




    polygonCoords.add(LatLng(-17.782809799900001,
        -63.172103399900003
    ));




    polygonCoords.add(LatLng(-17.782795399899999,
        -63.172135599900002
    ));




    polygonCoords.add(LatLng(-17.782605600099998,
        -63.172171800199997
    ));




    polygonCoords.add(LatLng(-17.782450999999998,
        -63.172196800199998
    ));




    polygonCoords.add(LatLng(-17.781988199600001,
        -63.1722758003
    ));




    polygonCoords.add(LatLng(-17.781795500200001,
        -63.172293399899999
    ));




    polygonCoords.add(LatLng(-17.780853499900001,
        -63.172418699600001
    ));




    polygonCoords.add(LatLng(-17.780187300000001,
        -63.172513000499997
    ));




    polygonCoords.add(LatLng(-17.779550999800001,
        -63.172604900000003
    ));




    polygonCoords.add(LatLng(-17.7794914001,
        -63.172612599799997
    ));




    polygonCoords.add(LatLng(-17.779395500300001,
        -63.172628900200003
    ));




    polygonCoords.add(LatLng(-17.7793578,
        -63.172681500000003
    ));




    polygonCoords.add(LatLng(-17.7793572004,
        -63.1727413001
    ));




    polygonCoords.add(LatLng(-17.779383900300001,
        -63.172807800299999
    ));




    polygonCoords.add(LatLng(-17.779433999999998,
        -63.172838200199998
    ));




    polygonCoords.add(LatLng(-17.7795225996,
        -63.172828599900001
    ));




    polygonCoords.add(LatLng(-17.779694099699999,
        -63.1739949002
    ));




    polygonCoords.add(LatLng(-17.779850500399998,
        -63.174991800400001
    ));




    polygonCoords.add(LatLng(-17.7801337004,
        -63.176728600399997
    ));




    polygonCoords.add(LatLng(-17.780287400300001,
        -63.177664199699997
    ));




    polygonCoords.add(LatLng(-17.780456600499999,
        -63.178769700300002
    ));




    polygonCoords.add(LatLng(-17.781499199799999,
        -63.178509000299997
    ));




    polygonCoords.add(LatLng(-17.782497900199999,
        -63.178337299900001
    ));




    polygonCoords.add(LatLng(-17.783533100300001,
        -63.178251700300002
    ));




    polygonCoords.add(LatLng(-17.784542199699999,
        -63.178153300200002
    ));




    polygonCoords.add(LatLng(-17.785380100400001,
        -63.178014200200003
    ));




    polygonCoords.add(LatLng(-17.786312299599999,
        -63.177795899800003
    ));




    polygonCoords.add(LatLng(-17.7864333998,
        -63.178315499999997
    ));




    polygonCoords.add(LatLng(-17.786529100100001,
        -63.1788395998
    ));




    polygonCoords.add(LatLng(-17.7867420999,
        -63.1801247995
    ));




    polygonCoords.add(LatLng(-17.786915100200002,
        -63.181232099900001
    ));




    polygonCoords.add(LatLng(-17.7870911003,
        -63.182300899700003
    ));




    polygonCoords.add(LatLng(-17.787144699900001,
        -63.182681499899999
    ));




    polygonCoords.add(LatLng(-17.7872488997,
        -63.1833316998
    ));




    polygonCoords.add(LatLng(-17.787359000199999,
        -63.184272500200002
    ));




    polygonCoords.add(LatLng(-17.7873846998,
        -63.184360299700003
    ));




    polygonCoords.add(LatLng(-17.7874120002,
        -63.184426000400002
    ));




    polygonCoords.add(LatLng(-17.787582199999999,
        -63.185344699799998
    ));




    polygonCoords.add(LatLng(-17.787737500199999,
        -63.186223700100001
    ));




    polygonCoords.add(LatLng(-17.787744399800001,
        -63.1862594997
    ));




    polygonCoords.add(LatLng(-17.787794600000002,
        -63.186440399799999
    ));




    polygonCoords.add(LatLng(-17.787892100099999,
        -63.186667600100002
    ));




    polygonCoords.add(LatLng(-17.788119699799999,
        -63.1872816996
    ));




    polygonCoords.add(LatLng(-17.788624300199999,
        -63.1877387997
    ));




    polygonCoords.add(LatLng(-17.788776500000001,
        -63.187910200099999
    ));




    polygonCoords.add(LatLng(-17.789071900300002,
        -63.187794599999997
    ));




    polygonCoords.add(LatLng(-17.7892072004,
        -63.1877594997
    ));




    polygonCoords.add(LatLng(-17.7893582998,
        -63.187718400100003
    ));




    polygonCoords.add(LatLng(-17.789399999800001,
        -63.187722699799998
    ));




    polygonCoords.add(LatLng(-17.789441099600001,
        -63.187714700400001
    ));




    polygonCoords.add(LatLng(-17.789477000400002,
        -63.187696299899997
    ));




    polygonCoords.add(LatLng(-17.7895070004,
        -63.187668699900001
    ));




    polygonCoords.add(LatLng(-17.789529100300001,
        -63.187633700100001
    ));




    polygonCoords.add(LatLng(-17.789735000299999,
        -63.187563100399998
    ));




    polygonCoords.add(LatLng(-17.7897890998,
        -63.187553200099998
    ));




    polygonCoords.add(LatLng(-17.790604200400001,
        -63.187434099900003
    ));




    polygonCoords.add(LatLng(-17.791653999800001,
        -63.187289199600002
    ));




    polygonCoords.add(LatLng(-17.791768900299999,
        -63.1872738004
    ));




    polygonCoords.add(LatLng(-17.792257999899999,
        -63.187207999899996
    ));




    polygonCoords.add(LatLng(-17.792733199899999,
        -63.1871334004
    ));




    polygonCoords.add(LatLng(-17.792977400200002,
        -63.187106700299999
    ));




    polygonCoords.add(LatLng(-17.793126099599998,
        -63.187100599700003
    ));




    polygonCoords.add(LatLng(-17.793161299600001,
        -63.1871410002
    ));




    polygonCoords.add(LatLng(-17.7932051003,
        -63.187170699799999
    ));




    polygonCoords.add(LatLng(-17.793353700099999,
        -63.187423600099997
    ));




    polygonCoords.add(LatLng(-17.793855199900001,
        -63.188000799900003
    ));




    polygonCoords.add(LatLng(-17.794592699799999,
        -63.188848900499998
    ));




    polygonCoords.add(LatLng(-17.795381599599999,
        -63.1897491
    ));




    polygonCoords.add(LatLng(-17.7956363859,
        -63.190034073500001
    ));




    polygonCoords.add(LatLng(-17.7957040527,
        -63.1901097581
    ));




    polygonCoords.add(LatLng(-17.795758493800001,
        -63.190170649300001
    ));




    polygonCoords.add(LatLng(-17.795957199699998,
        -63.190392900399999
    ));




    polygonCoords.add(LatLng(-17.797096799799998,
        -63.191660799899999
    ));




    polygonCoords.add(LatLng(-17.797140600300001,
        -63.191710299699999
    ));




    polygonCoords.add(LatLng(-17.797494500100001,
        -63.192110599999999
    ));




    polygonCoords.add(LatLng(-17.797814300199999,
        -63.192481500299998
    ));




    polygonCoords.add(LatLng(-17.797907800400001,
        -63.192641099600003
    ));




    polygonCoords.add(LatLng(-17.797901299700001,
        -63.192676900199999
    ));




    polygonCoords.add(LatLng(-17.797900899599998,
        -63.192713300000001
    ));




    polygonCoords.add(LatLng(-17.7979126002,
        -63.192768399599998
    ));




    polygonCoords.add(LatLng(-17.797938199800001,
        -63.192818000099997
    ));




    polygonCoords.add(LatLng(-17.797975899800001,
        -63.192858199900002
    ));




    polygonCoords.add(LatLng(-17.798022699699999,
        -63.1928859999
    ));




    polygonCoords.add(LatLng(-17.798074900100001,
        -63.192899199599999
    ));




    polygonCoords.add(LatLng(-17.798111800000001,
        -63.192899199599999
    ));




    polygonCoords.add(LatLng(-17.798148000299999,
        -63.192891899599999
    ));




    polygonCoords.add(LatLng(-17.7982256003,
        -63.192979700000002
    ));




    polygonCoords.add(LatLng(-17.798823800000001,
        -63.193678299600002
    ));




    polygonCoords.add(LatLng(-17.7995085003,
        -63.194457699700003
    ));




    polygonCoords.add(LatLng(-17.8001118004,
        -63.195134799800002
    ));




    polygonCoords.add(LatLng(-17.800427999699998,
        -63.195489600400002
    ));




    polygonCoords.add(LatLng(-17.800856699600001,
        -63.195970699999997
    ));




    polygonCoords.add(LatLng(-17.801272299699999,
        -63.196441499800002
    ));




    polygonCoords.add(LatLng(-17.8013410997,
        -63.1965176
    ));




    polygonCoords.add(LatLng(-17.8014157004,
        -63.196605700299997
    ));




    polygonCoords.add(LatLng(-17.801460299799999,
        -63.196662099800001
    ));




    polygonCoords.add(LatLng(-17.801542300099999,
        -63.1967570001
    ));




    polygonCoords.add(LatLng(-17.802649800000001,
        -63.197998699599999
    ));




    polygonCoords.add(LatLng(-17.8032356999,
        -63.198645100199997
    ));




    polygonCoords.add(LatLng(-17.803563699800002,
        -63.199006400099996
    ));




    polygonCoords.add(LatLng(-17.8038041999,
        -63.199294100300001
    ));




    polygonCoords.add(LatLng(-17.803865099999999,
        -63.199365499599999
    ));




    polygonCoords.add(LatLng(-17.803945599999999,
        -63.199294799900002
    ));




    polygonCoords.add(LatLng(-17.8040283996,
        -63.199217700399998
    ));




    polygonCoords.add(LatLng(-17.804332199800001,
        -63.198971099700003
    ));




    polygonCoords.add(LatLng(-17.804757799899999,
        -63.198617799600001
    ));




    polygonCoords.add(LatLng(-17.804885499600001,
        -63.1985075001
    ));




    polygonCoords.add(LatLng(-17.8052944999,
        -63.199040099900003
    ));




    polygonCoords.add(LatLng(-17.8060779001,
        -63.1982732998
    ));




    polygonCoords.add(LatLng(-17.806721200399998,
        -63.197672500000003
    ));




    polygonCoords.add(LatLng(-17.807268200100001,
        -63.198485400000003
    ));




    polygonCoords.add(LatLng(-17.807365900400001,
        -63.1986231996
    ));




    polygonCoords.add(LatLng(-17.807759300200001,
        -63.199178000099998
    ));




    polygonCoords.add(LatLng(-17.807819999700001,
        -63.199280399899997
    ));




    polygonCoords.add(LatLng(-17.8082077999,
        -63.199817499799998
    ));




    polygonCoords.add(LatLng(-17.808532200399998,
        -63.200285900200001
    ));




    polygonCoords.add(LatLng(-17.808653999600001,
        -63.200463299600003
    ));




    polygonCoords.add(LatLng(-17.809476900100002,
        -63.200332899800003
    ));




    polygonCoords.add(LatLng(-17.810112499799999,
        -63.200236999700003
    ));




    polygonCoords.add(LatLng(-17.811680299999999,
        -63.2000072003
    ));




    polygonCoords.add(LatLng(-17.8123626,
        -63.199893600400003
    ));




    polygonCoords.add(LatLng(-17.8128928,
        -63.199796999599997
    ));




    polygonCoords.add(LatLng(-17.813942399999998,
        -63.199617099900003
    ));




    polygonCoords.add(LatLng(-17.815953299699999,
        -63.199281199600001
    ));




    polygonCoords.add(LatLng(-17.8164503004,
        -63.199200800299998
    ));




    polygonCoords.add(LatLng(-17.8166057,
        -63.199186900299999
    ));




    polygonCoords.add(LatLng(-17.816693999799998,
        -63.199177000399999
    ));




    polygonCoords.add(LatLng(-17.818762999600001,
        -63.198733399699996
    ));




    polygonCoords.add(LatLng(-17.818343800099999,
        -63.199460000000002
    ));




    polygonCoords.add(LatLng(-17.8183187998,
        -63.199503400099999
    ));




    polygonCoords.add(LatLng(-17.8182644997,
        -63.199589900200003
    ));




    polygonCoords.add(LatLng(-17.8185372003,
        -63.199830299699997
    ));




    polygonCoords.add(LatLng(-17.818975999900001,
        -63.199131299599998
    ));




    polygonCoords.add(LatLng(-17.819176999900002,
        -63.198758700200003
    ));




    polygonCoords.add(LatLng(-17.8193649,
        -63.198631000100001
    ));




    polygonCoords.add(LatLng(-17.819510400399999,
        -63.198588500299998
    ));




    polygonCoords.add(LatLng(-17.819686700199998,
        -63.198623599699999
    ));




    polygonCoords.add(LatLng(-17.820377299800001,
        -63.1989673
    ));




    polygonCoords.add(LatLng(-17.820553099600001,
        -63.199057500000002
    ));




    polygonCoords.add(LatLng(-17.8213306002,
        -63.1994768996
    ));




    polygonCoords.add(LatLng(-17.8222118001,
        -63.199924200300003
    ));




    polygonCoords.add(LatLng(-17.8226221995,
        -63.200102600400001
    ));




    polygonCoords.add(LatLng(-17.8227893,
        -63.200195300300003
    ));




    polygonCoords.add(LatLng(-17.824032999899998,
        -63.200831099600002
    ));




    polygonCoords.add(LatLng(-17.824080500299999,
        -63.200850600300001
    ));




    polygonCoords.add(LatLng(-17.8242277003,
        -63.200928600300003
    ));




    polygonCoords.add(LatLng(-17.8262969996,
        -63.201975599599997
    ));




    polygonCoords.add(LatLng(-17.827162199899998,
        -63.202408100500001
    ));




    polygonCoords.add(LatLng(-17.827931700299999,
        -63.202816299699997
    ));




    polygonCoords.add(LatLng(-17.8281427999,
        -63.202928199699997
    ));




    polygonCoords.add(LatLng(-17.828436000300002,
        -63.203056600300002
    ));




    polygonCoords.add(LatLng(-17.828495999899999,
        -63.203057999800002
    ));




    polygonCoords.add(LatLng(-17.828565400199999,
        -63.203039799700001
    ));




    polygonCoords.add(LatLng(-17.828640100000001,
        -63.203003399700002
    ));




    polygonCoords.add(LatLng(-17.8287013998,
        -63.202985199799997
    ));




    polygonCoords.add(LatLng(-17.8287759004,
        -63.202962100100002
    ));




    polygonCoords.add(LatLng(-17.828867299599999,
        -63.202859999899999
    ));




    polygonCoords.add(LatLng(-17.829806599899999,
        -63.202075499999999
    ));




    polygonCoords.add(LatLng(-17.830435800099998,
        -63.2015566002
    ));




    polygonCoords.add(LatLng(-17.830649299600001,
        -63.201358800000001
    ));




    polygonCoords.add(LatLng(-17.832096799799999,
        -63.200036999799998
    ));




    polygonCoords.add(LatLng(-17.832579099899998,
        -63.199579700299999
    ));




    polygonCoords.add(LatLng(-17.8330701,
        -63.199104199600001
    ));




    polygonCoords.add(LatLng(-17.833407400199999,
        -63.198785299800001
    ));




    polygonCoords.add(LatLng(-17.8335757999,
        -63.198667499999999
    ));




    polygonCoords.add(LatLng(-17.834067900400001,
        -63.198207299899998
    ));




    polygonCoords.add(LatLng(-17.834931299600001,
        -63.197373799600001
    ));




    polygonCoords.add(LatLng(-17.835404799799999,
        -63.1969387002
    ));




    polygonCoords.add(LatLng(-17.8362902997,
        -63.197986499700001
    ));




    polygonCoords.add(LatLng(-17.8367301999,
        -63.198514800300003
    ));




    polygonCoords.add(LatLng(-17.837177500199999,
        -63.199015899700001
    ));




    polygonCoords.add(LatLng(-17.837655400100001,
        -63.199512299799999
    ));




    polygonCoords.add(LatLng(-17.838820299599998,
        -63.200869600200001
    ));




    polygonCoords.add(LatLng(-17.838936199999999,
        -63.201022299800002
    ));




    polygonCoords.add(LatLng(-17.839349500200001,
        -63.200135199999998
    ));




    polygonCoords.add(LatLng(-17.839486199700001,
        -63.200204599599999
    ));




    polygonCoords.add(LatLng(-17.839511000200002,
        -63.200223099699997
    ));




    polygonCoords.add(LatLng(-17.840020299900001,
        -63.200517399900001
    ));




    polygonCoords.add(LatLng(-17.840193299599999,
        -63.200590499800001
    ));




    polygonCoords.add(LatLng(-17.840801899900001,
        -63.200920100200001
    ));




    polygonCoords.add(LatLng(-17.840854500399999,
        -63.2009469001
    ));




    polygonCoords.add(LatLng(-17.842343700299999,
        -63.201708300200004
    ));




    polygonCoords.add(LatLng(-17.842944700299999,
        -63.202002300399997
    ));




    polygonCoords.add(LatLng(-17.843318100299999,
        -63.201218299799997
    ));




    polygonCoords.add(LatLng(-17.843828399700001,
        -63.200122300499999
    ));




    polygonCoords.add(LatLng(-17.8444607996,
        -63.200451000299999
    ));




    polygonCoords.add(LatLng(-17.844704600299998,
        -63.200534899899999
    ));




    polygonCoords.add(LatLng(-17.845334600200001,
        -63.200885800199998
    ));




    polygonCoords.add(LatLng(-17.846440400300001,
        -63.201445399900003
    ));




    polygonCoords.add(LatLng(-17.846872699599999,
        -63.201656299900002
    ));




    polygonCoords.add(LatLng(-17.846979599699999,
        -63.201736900500002
    ));




    polygonCoords.add(LatLng(-17.847030800399999,
        -63.201776399800004
    ));




    polygonCoords.add(LatLng(-17.846836099600001,
        -63.202151300099999
    ));




    polygonCoords.add(LatLng(-17.846722199999999,
        -63.202403200100001
    ));




    polygonCoords.add(LatLng(-17.846752900399999,
        -63.202526600299997
    ));




    polygonCoords.add(LatLng(-17.846978800199999,
        -63.202661499999998
    ));




    polygonCoords.add(LatLng(-17.8472852001,
        -63.202849200000003
    ));




    polygonCoords.add(LatLng(-17.848377899799999,
        -63.203487600099997
    ));




    polygonCoords.add(LatLng(-17.848910500199999,
        -63.203824299899999
    ));




    polygonCoords.add(LatLng(-17.849157400300001,
        -63.204040699899998
    ));




    polygonCoords.add(LatLng(-17.849904199600001,
        -63.2027777001
    ));




    polygonCoords.add(LatLng(-17.8505833002,
        -63.201633200400003
    ));




    polygonCoords.add(LatLng(-17.851437499999999,
        -63.200190799600001
    ));




    polygonCoords.add(LatLng(-17.851963999799999,
        -63.200520999799998
    ));




    polygonCoords.add(LatLng(-17.8524387002,
        -63.200831499899998
    ));




    polygonCoords.add(LatLng(-17.8529198001,
        -63.201135299999997
    ));




    polygonCoords.add(LatLng(-17.852775600000001,
        -63.201416399999999
    ));




    polygonCoords.add(LatLng(-17.8534962998,
        -63.201970600199999
    ));




    polygonCoords.add(LatLng(-17.854355199699999,
        -63.202607999599998
    ));




    polygonCoords.add(LatLng(-17.8552749001,
        -63.203323300299999
    ));




    polygonCoords.add(LatLng(-17.8548603003,
        -63.203915499700003
    ));

    polygonCoords.add(LatLng(-17.854212280300001,
        -63.204138608800001));

    Set<Polygon> polygonSet = new Set();
    polygonSet.add(Polygon(
        polygonId: PolygonId('test'),
        points: polygonCoords,
        strokeWidth: 2,
        strokeColor: Colors.deepPurpleAccent));

    return polygonSet;
  }



