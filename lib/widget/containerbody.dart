import 'package:flutter/material.dart';

class Containerbody extends StatelessWidget {
  const Containerbody(
      {super.key, required this.colour, required this.cardChild, required this.onPress});

  final Color colour;
  final Widget cardChild;
  final void Function() onPress;

  // Containerbody({
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
        child: cardChild,
      ),
    );
  }
}
