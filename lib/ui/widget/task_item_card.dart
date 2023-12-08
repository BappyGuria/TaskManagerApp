import 'package:flutter/material.dart';

class TaskItemCard extends StatelessWidget {
  const TaskItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6.0,horizontal: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Lorem Ipsum is simply dummy',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600
            ),),
            const Text('Discretion'),
            const Text('Date : 12-12-2030'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Chip(label: Text('New',style: TextStyle(
                  color: Colors.white
                ),),backgroundColor: Colors.blue),
                Wrap(
                  children: [
                    IconButton(onPressed: (){}, icon: const Icon(Icons.delete_forever_outlined)),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.edit))
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}