import 'package:officer/core/widgets/colors.dart';
import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final bool isLoading;
  final ButtonStyle? style;

  const GradientButton({
    super.key,
    required this.onPressed,
    required this.child,
    required this.isLoading,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        gradient: LinearGradient(
          colors: [
            Colors.black,
            Colors.black87,
          ],
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      // child: TextButton(
      //   onPressed: onPressed,
      //   style: style,
      //   child: child,
      // ),
      // ignore: todo
      // TODO https://www.kindacode.com/article/flutter-create-a-button-with-a-loading-indicator-inside/
      child: TextButton.icon(
        icon: isLoading
            ? const CircularProgressIndicator()
            : const Icon(Icons.navigate_next),
        // label: Text(
        //   isLoading ? 'Loading...' : 'Start',
        //   style: const TextStyle(fontSize: 30),
        // ),
        label: child,
        onPressed: isLoading ? null : onPressed,
        style: style,
      ),
    );
  }
}
