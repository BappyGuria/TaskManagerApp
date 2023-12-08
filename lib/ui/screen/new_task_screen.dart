import 'package:flutter/material.dart';
import '../widget/profile_samry.dart';
import '../widget/symary_card.dart';
import '../widget/task_item_card.dart';
import 'add_new_task_screen.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddNewTaskScreen()));
          }, icon: const Icon(Icons.add),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const ProfileSamry(),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(left: 16.0,right: 16.0),
                child: Row(
                  children: [
                    SumryCard(
                      count: '09',
                      title: 'New',
                    ),
                    SumryCard(
                      count: '09',
                      title: 'Completed',
                    ),
                    SumryCard(
                      count: '09',
                      title: 'Canceled',
                    ),
                    SumryCard(
                      count: '09',
                      title: 'Progress',
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const TaskItemCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


