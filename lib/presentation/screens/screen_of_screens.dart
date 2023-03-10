import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toma_datos_telmex/config/colors_app.dart';
import 'package:toma_datos_telmex/presentation/screens/home_screen.dart';
import '../widgets/widgets.dart';

class ScreenOfScreens extends StatelessWidget {
  const ScreenOfScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
        child: LayoutBuilder(
          builder: (context, c) {
            return ListView(
              children: [
                const Center(child: Text('Pantallas')),
                Wrap(
                  children: [
                    const SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: Text('Pantallas Generales'),
                      ),
                    ),
                    ItemScreen(
                      size: c.maxWidth,
                      onPressed: () {
                        Get.to(() => const HomeScreen());
                      },
                      screenTitle: 'Home Screen',
                      developer: 'Gustavo',
                      status: StatusScreen.inProcess,
                    ),
                  ],
                ),
ElevatedButton(
  onPressed: () {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Icon(
                Icons.error,
                size: 140,
                color: Colors.red,
              ),
              const SizedBox(height: 8),
              const Text(
                'Espera un momento', style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          content: const Text(
            'Tienes algunas opciones sin seleccionar, por favor regresa y revisa tu formulario', style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          actions: [
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                // ignore: sort_child_properties_last
                child: const Text(
                  'Cerrar',
                  style: TextStyle(color: Colors.white),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: ColorsApp.primaryColor,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 5,
                ),
              ),
            ),
          ],
        );
      },
    );
  },
  child: const Text('alerta'),
),
              ],
            );
          },
        ),
      ),
    );
  }
}

class StatusScreen {
  static const Color inProcess = Colors.blue;
  static const Color pending = Colors.grey;
  static const Color inReview = Colors.purple;
  static const Color finished = Colors.green;
}
