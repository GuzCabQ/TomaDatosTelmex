import 'package:flutter/material.dart';

import '../../config/colors_app.dart';
import '../../config/widgets_app.dart';

class ListDuctsScreen extends StatelessWidget {
  const ListDuctsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.greyColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Lista de Ductos'),
      ),
      body: ListView(
        padding: EdgeInsets.all(
            ColorsApp.defaultPadding), // Agregar el padding al ListView
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(ColorsApp.defaultPadding),
                color: ColorsApp.whiteColor,
              ),
              child: Padding(
                padding: EdgeInsets.all(ColorsApp.defaultPadding),
                child: Column(
                  children: [
                    Container(
                      //primera fila
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Mini Poste',
                            style: ColorsApp.estiloTexto,
                          ),
                          CustomButton(
                            text: 'Help',
                            textColor: ColorsApp.primaryColor,
                            onPressed: () {
                              // Acciones cuando se presiona el botón
                            },
                            backgroundColor: ColorsApp.whiteColor,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      //segunda fila
                      child: Row(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomButton(
                            text: 'Si',
                            textColor: ColorsApp.primaryColor,
                            onPressed: () {
                              // Acciones cuando se presiona el botón
                            },
                            backgroundColor: ColorsApp.whiteColor,
                          ),
                          SizedBox(width: 10),
                          CustomButton(
                            text: 'No',
                            textColor: ColorsApp.whiteColor,
                            onPressed: () {
                              // Acciones cuando se presiona el botón
                            },
                            backgroundColor: ColorsApp.primaryColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
