import 'package:flutter/material.dart';
import 'package:save/core/utils/app_colors.dart';
import 'package:save/core/utils/media_query_values.dart';
import 'package:save/presentation/view/widgets/custom_appbar.dart';
import 'package:save/presentation/view/widgets/pets_item.dart';

class PetsScreen extends StatelessWidget {
  const PetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, context.height * 0.1),
        child: CustomAppBar(
          isIcon: true,
          title: "Pets",
          onTap: () {
            Navigator.pop(context);
          },
          iconColors: AppColors.white,
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => buildpetsItem(
          context: context,
          imgUrl: '',
          phone: '',
          gender: '',
          address: '',
        ),
        itemCount: 3,
      ),
    );
  }
}
