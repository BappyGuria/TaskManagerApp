import 'package:flutter/material.dart';
import 'package:tastmanager/ui/widget/profile_samry.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({super.key});

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const ProfileSamry(),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 32.0,),
                      Text('Add New Task',style: Theme.of(context).textTheme.titleLarge,),
                      const SizedBox(height: 16.0,),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Subject'
                        ),
                      ),
                      const SizedBox(height: 16.0,),
                      TextFormField(
                        maxLines: 8,
                        decoration: const InputDecoration(
                            hintText: 'Message'
                        ),
                      ),
                      SizedBox(height: 16.0,),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          child: Icon(Icons.arrow_circle_right_outlined),
                          onPressed: (){},
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
