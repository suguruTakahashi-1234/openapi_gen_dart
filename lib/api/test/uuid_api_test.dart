import 'package:test/test.dart';
import 'package:petstore_api/petstore_api.dart';

/// tests for UUIDApi
void main() {
  final instance = PetstoreApi().getUUIDApi();

  group(UUIDApi, () {
    // Returns a new UUID for several endpoints.
    //
    //Future<String> uuidNewGet() async
    test('test uuidNewGet', () async {
      // TODO
    });
  });
}
