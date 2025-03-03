import 'package:test/test.dart';
import 'package:petstore_api/petstore_api.dart';

/// tests for ServiceApi
void main() {
  final instance = PetstoreApi().getServiceApi();

  group(ServiceApi, () {
    // Checks the connection to the server.
    //
    //Future<String> servicePingGet() async
    test('test servicePingGet', () async {
      // TODO
    });
  });
}
