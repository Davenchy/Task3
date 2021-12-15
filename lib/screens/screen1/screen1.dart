import 'package:flutter/material.dart';
import 'package:task3/colors.dart';

import 'components/asset_fade_back_image.dart';
import 'components/custom_button.dart';
import 'components/section_indicator.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  static const String routeName = '/screen1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // skip button
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomButton(
                  'Skip',
                  margin: EdgeInsets.all(16),
                  padding: const EdgeInsets.symmetric(
                    vertical: 6,
                    horizontal: 12,
                  ),
                ),
              ],
            ),
            // sections
            Column(
              children: [
                // section image
                AssetFadeBackImage(
                  'assets/images/3d-jar-mockup.jpg',
                  topColor: Color(0xFFCECFCA),
                  backgroundColor: kPrimaryColor,

                  // viewHeight: 310,
                  // topColor: Colors.blue,
                  // backgroundColor: Colors.green,
                  // bottomColor: Colors.red,
                ),
                SizedBox(height: 20),
                // section title
                Text(
                  'Track your work.\nGet Results',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                // section indicator
                SectionIndicator(
                  index: 0,
                  length: 4,
                  selectedColor: Colors.black,
                  unSelectedColor: Colors.grey,
                ),
              ],
            ),
            // next button
            CustomButton(
              'Ok, got it',
              fontSize: 24,
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
            ),
          ],
        ),
      ),
    );
  }
}
