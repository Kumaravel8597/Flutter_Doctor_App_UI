// import '../../../util/export.dart';


// class GoogleMapUi extends StatefulWidget {
//   const GoogleMapUi({Key? key}) : super(key: key);

//   @override
//   State<GoogleMapUi> createState() => _GoogleMapUiState();
// }

// class _GoogleMapUiState extends State<GoogleMapUi> {
//   late GoogleMapController mapController;

//   final LatLng _center = const LatLng(45.521563, -122.677433);

//   void _onMapCreated(GoogleMapController controller) {
//     mapController = controller;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 150,
//       decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
//       child: GoogleMap(
//         onMapCreated: _onMapCreated,
//         initialCameraPosition: CameraPosition(
//           target: _center,
//           zoom: 11.0,
//         ),
//       ),
//     );
//   }
// }
