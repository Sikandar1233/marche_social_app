import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_fonts.dart';

// ignore: must_be_immutable
class MyTextField extends StatelessWidget {
  MyTextField({
    Key? key,
    this.controller,
    this.hint,
    this.bordercolor,
    this.label,
    this.onChanged,
    this.isObSecure = false,
    this.marginBottom = 15.0,
    this.maxLines,
    this.isFilled = true,
    this.prefixIcon,
    this.filledColor,
    this.hintColor,
    this.haveLabel = true,
    this.labelSize,
  }) : super(key: key);
  String? label, hint;

  TextEditingController? controller;
  ValueChanged<String>? onChanged;
  bool? isObSecure, haveLabel, isFilled;
  double? marginBottom;
  int? maxLines;
  double? labelSize;
  Color? filledColor, hintColor;
  Color? bordercolor;
  Widget? prefixIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: marginBottom!),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            maxLines: maxLines ?? 1,
            controller: controller,
            onChanged: onChanged,
            textInputAction: TextInputAction.next,
            obscureText: isObSecure!,
            obscuringCharacter: '*',
            style: const TextStyle(
              fontFamily: 'montr',
              fontSize: 12,
              color: KTertiaryColor,
            ),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              // filled: isFilled,
              // fillColor: filledColor ?? kTertiaryColor,
              hintText: hint,
              prefixIcon: prefixIcon,
              hintStyle: const TextStyle(
                fontFamily: AppFonts.OUTFit_DISPLAY,
                fontSize: 12,
                color: kGrey7Color,
              ),
              filled: true,
              fillColor: kWhiteColor,
              enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: bordercolor ?? kGrey9Color, width: 1.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 1.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
