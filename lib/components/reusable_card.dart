import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color? color;
  final Widget? cardChild;
  final void Function()? onPressed;

  const ReusableCard({
    Key? key,
    @required this.color,
    this.cardChild,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
