import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData? icon;
  final void Function()? onPress;
  const RoundIconButton({Key? key, this.icon, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      elevation: 6.0,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      onPressed: onPress,
    );
  }
}
