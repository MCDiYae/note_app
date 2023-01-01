import 'package:flutter/material.dart';
import 'package:nnoteapp/view/widgets/custom_textfield.dart';

import 'custom_button.dart';

class AddBottom extends StatelessWidget {
  const AddBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: Column(
        children: const [
          SizedBox(
            height: 16,
          ),
          CustomTextField(hint: 'Titre '),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'note',
            maxLines: 3,
          ),
          CustomButton(),
        ],
      ),
    );
  }
}
