import 'package:flutter/material.dart';

import 'profile.dart';

class ProfileList extends StatelessWidget {
  final List<Profile> profiles;

  const ProfileList({Key? key, required this.profiles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: profiles.length,
      separatorBuilder: (_, __) => SizedBox(height: 8),
      itemBuilder: (context, index) => ListTile(
        title: Text(profiles[index].name),
      ),
    );
  }
}
