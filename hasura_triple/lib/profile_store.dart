import 'package:flutter_triple/flutter_triple.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:hasura_triple/queries.dart';

import 'profile.dart';

class ProfileStore extends StreamStore<Exception, List<Profile>> {
  ProfileStore() : super([]) {
    getProfiles();
  }

  final _hasuraConnect = HasuraConnect('http://localhost:8080/v1/graphql',
      headers: {'x-hasura-admin-secret': 'PogChamp'});

  void getProfiles() async {
    setLoading(true);

    try {
      final result = await _hasuraConnect.query(getProfilesQuery);
      await Future.delayed(Duration(seconds: 2));
      update(Profile.fromMapList(result['data']['profile']));
    } catch (e) {
      setError(e as Exception);
    } finally {
      setLoading(false);
    }
  }
}
