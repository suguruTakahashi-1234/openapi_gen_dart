import 'package:test/test.dart';
import 'package:petstore_api/petstore_api.dart';

/// tests for CredentialsApi
void main() {
  final instance = PetstoreApi().getCredentialsApi();

  group(CredentialsApi, () {
    // Creates a new credential object.
    //
    //Future credentialsCreatePost(CredentialsCreateRequestBody credentialsCreateRequestBody) async
    test('test credentialsCreatePost', () async {
      // TODO
    });

    // Deletes an existing credential object.
    //
    //Future credentialsDeleteDelete(String credentialUuid) async
    test('test credentialsDeleteDelete', () async {
      // TODO
    });

    // Gets all available credential objects for this user.
    //
    //Future<CredentialsGetAllResponseBody> credentialsGetAllGet() async
    test('test credentialsGetAllGet', () async {
      // TODO
    });

    // Gets information on a credential object.
    //
    //Future<CredentialsGetResponseBody> credentialsGetGet(String credentialUuid) async
    test('test credentialsGetGet', () async {
      // TODO
    });

    // SoftDeletes an existing credential object.
    //
    //Future credentialsSoftDeletePut(String credentialUuid) async
    test('test credentialsSoftDeletePut', () async {
      // TODO
    });

    // SoftUndeletes an existing credential object.
    //
    //Future credentialsSoftUndeletePut(String credentialUuid) async
    test('test credentialsSoftUndeletePut', () async {
      // TODO
    });

    // Updates a credential object.
    //
    //Future<CredentialsUpdateResponseBody> credentialsUpdatePut(CredentialsUpdateRequestBody credentialsUpdateRequestBody) async
    test('test credentialsUpdatePut', () async {
      // TODO
    });
  });
}
