import 'package:flutter/material.dart';
import 'package:save/core/utils/media_query_values.dart';
import 'package:save/presentation/view/widgets/custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, context.height * 0.1),
        child: const CustomAppBar(title: "Paws"),
      ),
      body: Column(children: [Image.asset("")]),
    );
  }
}
