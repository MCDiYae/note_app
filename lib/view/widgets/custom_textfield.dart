import 'package:flutter/material.dart';

import '../../constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: primatyColor,
      decoration: InputDecoration(
        hintText: 'Title',
        hintStyle: const TextStyle(color: primatyColor),
        border: buildborder(),
        enabledBorder: buildborder(),
        focusedBorder: buildborder(primatyColor),
      ),
    );
  }

  OutlineInputBorder buildborder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
