final getProfileSubscription = r'''
  subscription getProfileSubscription($limit: Int!) {
    profile(limit: $limit) {
      id
      name
    }
  }
''';
