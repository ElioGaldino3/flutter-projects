import 'package:flutter/material.dart';
import 'package:hasura_connect/hasura_connect.dart';

import 'profile.dart';

class ProfileList extends StatelessWidget {
  final Snapshot<List<Profile>>? profilesSnapshot;
  const ProfileList({
    this.profilesSnapshot,
  });

  @override
  Widget build(BuildContext context) {
    if (profilesSnapshot == null) return Container();

    return StreamBuilder(
      stream: profilesSnapshot,
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.active)
          return Center(child: CircularProgressIndicator());

        final profiles = snapshot.data as List<Profile>;

        return ListView.separated(
          itemCount: profiles.length,
          separatorBuilder: (_, __) => SizedBox(height: 8),
          itemBuilder: (context, index) =>
              ListTile(title: Text(profiles[index].name)),
        );
      },
    );
  }
}
