import 'package:flutter/material.dart';
import 'package:save/core/utils/app_colors.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    this.controller,
    required this.hint,
    this.widget,
    required this.textInputType,
    this.height = 50.0,
  }) : super(key: key);
  final TextEditingController? controller;
  final String hint;
  final Widget? widget;
  final TextInputType textInputType;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: const EdgeInsets.only(
        left: 14.0,
      ),
      margin: const EdgeInsets.only(bottom: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.3),
            blurRadius: 2,
            offset: const Offset(1, 3),
            blurStyle: BlurStyle.normal,
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: controller,
              keyboardType: textInputType,
              autofocus: false,
              readOnly: widget != null ? true : false,
              cursorColor: AppColors.black,
              decoration: InputDecoration(
                hintText: hint,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.white),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
          ),
          widget ?? Container(),
        ],
      ),
    );
  }
}
