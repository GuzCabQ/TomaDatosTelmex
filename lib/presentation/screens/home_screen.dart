// ignore_for_file: prefer_const_constructors
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:toma_datos_telmex/config/colors_app.dart';

class HomeScreen extends StatefulWidget {
  static const String name = 'home-screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _buttons = ['Zona', 'Postes', 'Pozos', 'Caja de distribucion', 'Cerntral telefonica'];
  final List<bool> _selected = [true, false, false, false, false];
  final CameraPosition exampleLocation = const CameraPosition(
    target: LatLng(19.43277756922185, -99.1332442678146),
    zoom: 16,
  );
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: SizedBox(
        width: MediaQuery.of(context).size.width * 1,
        child: Drawer(
          backgroundColor: ColorsApp.primaryColor,
          child: Column(
            children: <Widget>[
              Container(
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Menu',
                        style: TextStyle(
                            fontSize: 25, color: ColorsApp.primaryColor),
                      ),
                      Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                                              child: ClipOval(
                            child: Material(
                              color: Colors.white,
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: Icon(Icons.close, color: ColorsApp.primaryColor, size: 35,),
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(padding: EdgeInsets.symmetric(vertical: 50),
                child: ListView.builder(
                  itemCount: _buttons.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          for (int i = 0; i < _selected.length; i++) {
                            _selected[i] = i == index;
                          }
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 15, horizontal: 100),
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        decoration: BoxDecoration(
                          color: _selected[index] ? Colors.blueAccent : Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: ColorsApp.primaryColor,
                            width: 2,
                          ),
                        ),
                        child: Text(
                          _buttons[index],
                          style: TextStyle(
                            fontSize: 20,
                            color: _selected[index] ? Colors.white : ColorsApp.primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text('Zona'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 70),
              child: Text(
                'Mapa con Registros Realizados',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
          ),
        ),
        titleTextStyle:
            TextStyle(color: ColorsApp.primaryColor, fontSize: 25),
        backgroundColor: Colors.white,
      ),
      body: GoogleMap(
        myLocationEnabled: true,
        mapType: MapType.terrain,
        initialCameraPosition: exampleLocation,
        onTap: (argument) {},
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}
