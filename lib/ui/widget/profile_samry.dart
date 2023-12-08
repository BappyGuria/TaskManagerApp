import 'package:flutter/material.dart';
import 'package:tastmanager/ui/screen/edite_profile_screen.dart';

class ProfileSamry extends StatelessWidget {
  const ProfileSamry({
    super.key,this.enableOnTap = true,
  });

  final bool enableOnTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        if(enableOnTap == true){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditeProfileScreen(),
            ),
          );
        }
      },
      title: Text(
        'Bappy Guria',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
      ),
      subtitle: Text(
        'guriabappye8@gmail.com',
        style: TextStyle(color: Colors.white),
      ),
      trailing: enableOnTap ? Icon(Icons.arrow_forward) : null,
      tileColor: Colors.green,
      leading: CircleAvatar(
        child: Icon(Icons.person),
      ),
    );
  }
}
