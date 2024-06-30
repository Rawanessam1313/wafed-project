import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String imagePath;
  final String buttonText;
  final Function onPressed;
  final Color textColor;

  const CustomButton({
    required this.imagePath,
    required this.buttonText,
    required this.onPressed,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      style: ElevatedButton.styleFrom(
        primary: Color.fromARGB(255, 252, 251, 251),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Image.asset(
                imagePath,
                width: 30,
                height: 30,
              ),
            ),
            Text(
              buttonText,
              style: TextStyle(
                fontSize: 15,
                color: textColor, // Use the textColor parameter here
              ),
            ),
          ],
        ),
      ),
    );
  }
}
