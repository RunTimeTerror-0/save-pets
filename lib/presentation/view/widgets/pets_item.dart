import 'package:flutter/material.dart';
import 'package:save/core/utils/app_colors.dart';
import 'package:save/core/utils/media_query_values.dart';
import 'package:save/core/utils/style_manager.dart';

Widget buildpetsItem(BuildContext context) => Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Material(
            borderRadius: BorderRadius.circular(20),
            elevation: 10.0,
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(20)),
              width: double.infinity,
              height: context.height * 0.5,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/photos/okeykat-food.png"),
                    SizedBox(
                      height: context.height * 0.01,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Phone : 010000",
                        style: getRegularStyle(
                            color: AppColors.darkBrown, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Gender : Male",
                        style: getRegularStyle(
                            color: AppColors.darkBrown, fontSize: 18),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Address : MASOURA",
                            style: getRegularStyle(
                                color: AppColors.darkBrown, fontSize: 18),
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Aviable",
                            style:
                                getBoldStyle(color: Colors.green, fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
