import 'package:dev_quiz/challenge/widgets/next_button/next_button_widget.dart';
import 'package:dev_quiz/core/app_images.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String title;
  final int length;
  final int result;
  const ResultPage(
      {Key? key,
      required this.title,
      required this.length,
      required this.result})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Image.asset(AppImages.trophy),
                SizedBox(height: 20),
                Text(
                  "Congratulations!",
                  style: AppTextStyles.heading40,
                ),
                SizedBox(height: 16),
                Text.rich(
                  TextSpan(
                      text: "You finished",
                      style: AppTextStyles.body,
                      children: [
                        TextSpan(
                            text: "\n$title", style: AppTextStyles.bodyBold),
                        TextSpan(
                            text: "\nwith $result of $length right answers.",
                            style: AppTextStyles.body)
                      ]),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 68),
                      child: NextButtonWidget.purple(
                          label: "Share", onTap: (_) {}),
                    )),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 68),
                      child: NextButtonWidget.white(
                          label: "Go to Home",
                          onTap: (_) {
                            Navigator.pop(context);
                          }),
                    )),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
