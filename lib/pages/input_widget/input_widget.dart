import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final Widget child;
  const InputWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: Padding(padding: const EdgeInsets.only(left: 7), child: child));
  }
}
