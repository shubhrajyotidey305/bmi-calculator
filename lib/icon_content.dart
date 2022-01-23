import 'package:flutter/material.dart';
import 'constants.dart';

class GenderCard extends StatelessWidget {
  final IconData? icon;
  final String? text;

  const GenderCard({Key? key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: kIconHeight,
        ),
        const SizedBox(
          height: kSizedBoxHeight,
        ),
        Text(
          text ?? ' ',
          style: kLabelStyle,
        ),
      ],
    );
  }
}
