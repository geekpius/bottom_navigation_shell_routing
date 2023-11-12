import 'package:flutter/material.dart';

class SubHomeDetailView extends StatelessWidget {
  const SubHomeDetailView({super.key, required this.index,});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(index.toString()),
        const SizedBox(height: 20,),
        Text('This is the details of index $index'),
      ],
    );
  }
}
