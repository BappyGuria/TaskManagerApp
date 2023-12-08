import 'package:flutter/material.dart';
import 'package:tastmanager/ui/screen/canceled_task_screen.dart';
import 'package:tastmanager/ui/screen/completed_task_screen.dart';
import 'package:tastmanager/ui/screen/new_task_screen.dart';
import 'package:tastmanager/ui/screen/progress_task_screen.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  late int _SelectedIndex = 0;

  final List<Widget> _screen = [
    const NewTaskScreen(),
    const ProgressTaskScreen(),
    const CompletedTaskScreen(),
    const CanceledTaskScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_SelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _SelectedIndex,
        onTap: (index) {
          _SelectedIndex = index;
          setState(() {});
        },
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.fingerprint), label: 'New'),
          BottomNavigationBarItem(
              icon: Icon(Icons.run_circle), label: 'Progress'),
          BottomNavigationBarItem(icon: Icon(Icons.cancel), label: 'Canceled'),
          BottomNavigationBarItem(
              icon: Icon(Icons.incomplete_circle_sharp), label: 'Completed'),
        ],
      ),
    );
  }
}
