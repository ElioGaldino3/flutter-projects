import 'package:flutter/material.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:hasura_triple/profile_list.dart';
import 'package:hasura_triple/profile_store.dart';

import 'profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScopedBuilder<ProfileStore, Exception, List<Profile>>(
        store: ProfileStore(),
        onLoading: (_) => Center(child: CircularProgressIndicator()),
        onState: (_, state) => ProfileList(profiles: state),
        onError: (_, e) => Center(child: Text('Erro ao buscar dados')),
      ),
    );
  }
}
