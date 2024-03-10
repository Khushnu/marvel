import 'package:flutter/material.dart';

class CommonContainerWidget extends StatelessWidget {
  final double height; 
  final double width; 
  final Widget child;
  const CommonContainerWidget({super.key, required this.height, required this.width, required this.child});

  @override
  Widget build(BuildContext context) {
    return  Container(
                height: height,
                width: width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffE4E4E4)),
                    borderRadius: BorderRadius.circular(14)),
                child: child
              );
  }
}