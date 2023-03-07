import 'package:flutter/material.dart';

class ItemScreen extends StatelessWidget {
  final Function() onPressed;
  final String screenTitle;
  final String? developer;
  final Color status;
  final double size;
  const ItemScreen({
    Key? key,
    required this.size,
    required this.screenTitle,
    this.developer,
    required this.status,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: status,
        margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
        width: (size / 3) - 12,
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              screenTitle,
              textAlign: TextAlign.center,
            ),
            Text(
              developer ?? '',
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
