import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ConfirmationCodeInput extends StatelessWidget {
  ConfirmationCodeInput({super.key});
  List<TextEditingController> controllers = List.generate(
    4,
    (index) => TextEditingController(),
  );
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        4,
        (index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
          width: 60.0,
          child: TextField(
            controller: controllers[index],
            keyboardType: TextInputType.number,
            maxLength: 1,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            decoration: const InputDecoration(
              counterText: "",
              border: OutlineInputBorder(),
            ),
            onChanged: (value) {
              // Move to the next text field when a digit is entered
              if (value.isNotEmpty) {
                FocusScope.of(context).nextFocus();
              }
            },
          ),
        ),
      ),
    );
  }
}
