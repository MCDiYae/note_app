import 'package:flutter/material.dart';
import 'package:nnoteapp/view/widgets/search_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar(
      {super.key, required this.texte, required this.icon, this.onPressed});
  final String texte;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          texte,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
        SearchIcon(
          onPressed: onPressed,
          icon: icon,
        ),
      ],
    );
  }
}
