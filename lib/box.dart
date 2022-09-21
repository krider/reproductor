

// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class neuBox extends StatelessWidget {
  final child;
  const neuBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(15),
          boxShadow:[
            //box oscuro
            BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 15,
              offset: const Offset(5,5),
            ),
            //box claro
            const BoxShadow(
              color: Colors.white,
              blurRadius: 15,
              offset: Offset(-5,-5),
            ),
          ],
          ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Center(child: child),
      ),
          );
  }
}