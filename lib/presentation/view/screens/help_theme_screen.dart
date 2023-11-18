import 'package:flutter/material.dart';
import 'package:save/core/utils/app_colors.dart';
import 'package:save/core/utils/media_query_values.dart';
import 'package:save/presentation/view/widgets/custom_appbar.dart';
import 'package:save/presentation/view/widgets/custom_button.dart';
import 'package:save/presentation/view/widgets/text_form_field.dart';

class HelpScreen extends StatelessWidget {
  HelpScreen({super.key});

  final TextEditingController genderController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, context.height * 0.1),
        child: CustomAppBar(
          isIcon: true,
          title: "Help Pets",
          onTap: () {
            Navigator.pop(context);
          },
          iconColors: AppColors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
              height: context.width * 1.635,
              width: context.width * 0.9,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.black, width: 1.5),
                borderRadius: BorderRadius.circular(20),
                color: AppColors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.camera_alt,
                          size: 50,
                          color: AppColors.darkBrown,
                        )),
                    SizedBox(
                      height: context.height * 0.1,
                    ),
                    defualtFormField(
                        controller: genderController,
                        validate: () {},
                        label: "Gender",
                        type: TextInputType.text),
                    SizedBox(
                      height: context.height * 0.05,
                    ),
                    defualtFormField(
                        controller: genderController,
                        validate: () {},
                        label: "Phone",
                        type: TextInputType.text),
                    SizedBox(
                      height: context.height * 0.05,
                    ),
                    defualtFormField(
                        controller: genderController,
                        validate: () {},
                        label: "Phone",
                        type: TextInputType.text),
                    SizedBox(
                      height: context.height * .1,
                    ),
                    CustomButton(
                        lable: "Submit",
                        height: context.height * 0.07,
                        width: context.width * 0.8,
                        onTap: () {},
                        isOutlined: false,
                        backgroundColor: AppColors.darkBrown,
                        textColor: AppColors.offWhite)
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
