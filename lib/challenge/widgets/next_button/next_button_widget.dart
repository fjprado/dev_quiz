import 'package:dev_quiz/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NextButtonWidget extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color fontColor;
  final Color borderColor;
  final Color overlayColor;
  final ValueChanged<bool> onTap;
  const NextButtonWidget({
    Key? key,
    required this.label,
    required this.backgroundColor,
    required this.fontColor,
    required this.borderColor,
    required this.overlayColor,
    required this.onTap,
  }) : super(key: key);

  NextButtonWidget.green({
    required String label,
    required ValueChanged<bool> onTap,
  })  : this.backgroundColor = AppColors.darkGreen,
        this.fontColor = AppColors.white,
        this.borderColor = AppColors.green,
        this.overlayColor = Color(0xff00c853),
        this.label = label,
        this.onTap = onTap;

  NextButtonWidget.white({
    required String label,
    required ValueChanged<bool> onTap,
  })  : this.backgroundColor = AppColors.white,
        this.fontColor = AppColors.grey,
        this.borderColor = AppColors.border,
        this.overlayColor = AppColors.lightGrey,
        this.label = label,
        this.onTap = onTap;

  NextButtonWidget.purple({
    required String label,
    required ValueChanged<bool> onTap,
  })  : this.backgroundColor = AppColors.purple,
        this.fontColor = AppColors.white,
        this.borderColor = AppColors.border,
        this.overlayColor = Color(0xff9b72ea),
        this.label = label,
        this.onTap = onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            backgroundColor,
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          side: MaterialStateProperty.all(
            BorderSide(color: AppColors.border),
          ),
          overlayColor: MaterialStateProperty.all(
            overlayColor,
          ),
        ),
        onPressed: () {
          onTap(false);
        },
        child: Text(
          label,
          style: GoogleFonts.notoSans(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: fontColor,
          ),
        ),
      ),
    );
  }
}
