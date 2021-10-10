/// in dart there is no interface keyword, so we use this logic instead.
/// Using an [abstract] class and [implements] keyword instead of [extends]

abstract class DataRepository {
  double? fetchTemperature(String city);

  /// [factory] [Constructor]
  factory DataRepository() => FakeWebServer();
}

class FakeWebServer implements DataRepository {
  @override
  double? fetchTemperature(String city) {
    print(city);
    return 42.0;
  }
}

void main() {
  // final DataRepository fakeWebServer = FakeWebServer();
  // final printing = fakeWebServer.fetchTemperature('London');
  // print(printing);

  /// If we use factory constructor, we can call it directly
  final repo = DataRepository();
  final temps = repo.fetchTemperature('Dublin');
  print(temps);
}
