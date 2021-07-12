import 'dart:async';

import 'package:app_livraison/components/chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DetailsChaffeur extends StatefulWidget {
  const DetailsChaffeur({Key? key}) : super(key: key);

  @override
  _DetailsChaffeurState createState() => _DetailsChaffeurState();
}

class _DetailsChaffeurState extends State<DetailsChaffeur> {
  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(45.521563, -122.677433);

  final Set<Marker> _markers = {};

  LatLng _lastMapPosition = _center;

  MapType _currentMapType = MapType.normal;

  void _onMapTypeButtonPressed() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
    });
  }

  void _onAddMarkerButtonPressed() {
    setState(() {
      _markers.add(Marker(
        // This marker id can be anything that uniquely identifies each marker.
        markerId: MarkerId(_lastMapPosition.toString()),
        position: _lastMapPosition,

        icon: BitmapDescriptor.defaultMarker,
      ));
    });
  }

  void _onCameraMove(CameraPosition position) {
    _lastMapPosition = position.target;
  }

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _markers.add(Marker(
      // This marker id can be anything that uniquely identifies each marker.
      markerId: MarkerId(_lastMapPosition.toString()),
      position: _lastMapPosition,

      icon: BitmapDescriptor.defaultMarker,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfff3e5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                child: GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: _center,
                    zoom: 11.0,
                  ),
                  mapType: _currentMapType,
                  markers: _markers,
                  onCameraMove: _onCameraMove,
                ),
              ),
              Text(
                'Ahmed boslhami',
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xFFcf4c30),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Adresse : ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFFcf4c30),
                    ),
                  ),
                  Flexible(
                    child: Text(
                      ' 15 Rue Buzancy belvedere Casablanca',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFFcecac5),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Telephone : ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFFcf4c30),
                    ),
                  ),
                  Text(
                    '+212 603 861 321',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFFcecac5),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Email : ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFFcf4c30),
                    ),
                  ),
                  Text(
                    'hicham.b@digitaldynamics.ma',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFFcecac5),
                    ),
                  ),
                ],
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {
                    print('clicked');
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => Chat()));
                  },
                  child: Text(
                    'contacter',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  color: Color(0xFFcf4c30),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
