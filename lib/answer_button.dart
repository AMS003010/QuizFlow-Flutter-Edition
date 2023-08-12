import "package:flutter/material.dart";

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key,required this.textBut,required this.onTap});
  final String textBut;
  final void Function() onTap;
  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40),
        backgroundColor: const Color.fromARGB(255, 26, 5, 143),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(40))
      ),
      child: Text(
        textBut,
        textAlign: TextAlign.center,
        )
      );
  }
} 