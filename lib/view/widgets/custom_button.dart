import 'package:flutter/material.dart';

import '../../constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.isLoading = false});
  final void Function()? onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 64),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          decoration: BoxDecoration(
              color: primatyColor, borderRadius: BorderRadius.circular(8)),
          child: Center(
            child: isLoading
                ? const CircularProgressIndicator()
                : const Text(
                    'ADD',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
          ),
        ),
      ),
    );
  }
}
