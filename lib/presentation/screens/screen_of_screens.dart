import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toma_datos_telmex/presentation/screens/home_screen.dart';
import 'package:toma_datos_telmex/presentation/screens/list_of_ducts_screen.dart';
import 'package:toma_datos_telmex/presentation/screens/pole_detail_screen.dart';
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
                    ItemScreen(
                      size: c.maxWidth,
                      onPressed: () {
                        Get.to(() => const ListDuctsScreen());
                      },
                      screenTitle: 'Lista de Ductos',
                      developer: 'Fernando',
                      status: StatusScreen.inProcess,
                    ),
                    ItemScreen(
                      size: c.maxWidth,
                      onPressed: () {
                        Get.to(() => PoleDetailScreen());
                      },
                      screenTitle: 'Detalle de Poste',
                      developer: 'Fernando',
                      status: StatusScreen.inProcess,
                    ),
                  ],
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
