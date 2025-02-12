import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.onSubmitted});
  final void Function(String) onSubmitted;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
        hintText: 'Search',
        prefixIcon: const Icon(
          FontAwesomeIcons.magnifyingGlass,
        ),
        enabledBorder: customBorder(),
        disabledBorder: customBorder(),
        focusedBorder: customBorder(),
      ),
    );
  }

  OutlineInputBorder customBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
}
