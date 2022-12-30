import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailedContainerWidget extends StatelessWidget {
  final double width;
  Color color;
  Widget child;

  DetailedContainerWidget({
    required this.width,
    required this.color,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: child,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        shape: BoxShape.rectangle,
        boxShadow: [
          const BoxShadow(
            color: Colors.grey,
            blurRadius: 4, // Shadow position
          ),
        ],
        color: color,
      ),
    );
  }
}
