import 'package:flutter/material.dart';
import 'package:save/core/utils/app_colors.dart';

class AwarenessScreen extends StatelessWidget {
  const AwarenessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Awareness"),
        backgroundColor: AppColors.darkBrown,
      ),
    );
  }
}
