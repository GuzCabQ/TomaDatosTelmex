import 'package:flutter/material.dart';
import '../../config/colors_app.dart';

class PoleDetailScreen extends StatefulWidget {
  const PoleDetailScreen({Key? key}) : super(key: key);

  @override
  _PoleDetailScreenState createState() => _PoleDetailScreenState();
}

class _PoleDetailScreenState extends State<PoleDetailScreen> {
  // Variables para el menú desplegable numérico
  int _selectedValue = 0;
  final List<int> _dropdownValues = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.greyColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Detalle de Poste'),
      ),
      body: ListView(
        padding: EdgeInsets.all(ColorsApp.defaultPadding),
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(ColorsApp.defaultPadding),
              color: ColorsApp.whiteColor,
            ),
            child: Padding(
              padding: EdgeInsets.all(ColorsApp.defaultPadding),
              child: Column(
                children: [
                  Text(
                    '¿Con cuantas lineas cuenta?',
                    style: ColorsApp.estiloTexto,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                      color: ColorsApp
                          .greyColor, // Agregamos el color de fondo azul
                    ),
                    child: DropdownButtonFormField<int>(
                      decoration:
                          InputDecoration.collapsed(hintText: 'Fernando'),
                      value: _selectedValue,
                      onChanged: (int? newValue) {
                        setState(() {
                          _selectedValue = newValue!;
                        });
                      },
                      items: _dropdownValues
                          .map<DropdownMenuItem<int>>((int value) {
                        return DropdownMenuItem<int>(
                          value: value,
                          child: Text(value.toString()),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
