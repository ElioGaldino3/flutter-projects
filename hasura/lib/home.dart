import 'package:flutter/material.dart';
import 'package:hasura/profile.dart';
import 'package:hasura/profile_list.dart';
import 'package:hasura_connect/hasura_connect.dart';

import 'queries.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _hasuraConnect = HasuraConnect('http://localhost:8080/v1/graphql',
      headers: {'x-hasura-admin-secret': 'PogChamp'});

  Snapshot<List<Profile>>? profilesSnapshot;
  int pagination = 1;

  @override
  void initState() {
    _init();
    super.initState();
  }

  _init() async {
    profilesSnapshot = (await _hasuraConnect.subscription(
            getProfileSubscription,
            variables: {"limit": pagination}))
        .map((event) {
      return Profile.fromMapList(event['data']['profile']);
    });
    setState(() {});
  }

  _carregarMais() {
    pagination++;
    Map<String, dynamic> variables = {'limit': pagination};
    profilesSnapshot?.changeVariables(variables);
  }

  @override
  void dispose() {
    profilesSnapshot?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ProfileList(profilesSnapshot: profilesSnapshot),
          ),
          ElevatedButton(onPressed: _carregarMais, child: Text('Carregar mais'))
        ],
      ),
    );
  }
}
