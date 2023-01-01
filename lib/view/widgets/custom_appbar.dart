import 'package:flutter/material.dart';
import 'package:nnoteapp/view/widgets/search_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.texte, required this.icon});
  final String texte;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          texte,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
        SearchIcon(
          icon: icon,
        ),
      ],
    );
  }
}
