import 'package:flutter/material.dart';
import 'package:nnoteapp/view/widgets/search_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          'NOTE',
          style: TextStyle(fontSize: 32),
        ),
        Spacer(),
        SearchIcon(),
      ],
    );
  }
}
