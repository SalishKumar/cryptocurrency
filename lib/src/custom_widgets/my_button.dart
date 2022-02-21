import 'package:flutter/material.dart';

class myButton extends StatelessWidget {
  const myButton({
    Key? key,
    required this.label,
    required this.onTap,
  }) : super(key: key);
  final String label;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: ElevatedButton(
          onPressed: () {
            onTap();
          },
          child: Text(label)),
    );
  }
}
