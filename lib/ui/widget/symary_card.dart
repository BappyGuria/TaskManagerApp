import 'package:flutter/material.dart';

class SumryCard extends StatelessWidget {
  const SumryCard({
    super.key, required this.count, required this.title,
  });

  final String count, title;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.00,horizontal: 32.00),
        child: Column(
          children: [
            Text(count,style: Theme.of(context).textTheme.titleLarge,),
            Text(title)
          ],
        ),
      ),
    );
  }
}