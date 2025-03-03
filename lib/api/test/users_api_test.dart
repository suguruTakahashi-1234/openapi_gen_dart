import 'package:test/test.dart';
import 'package:petstore_api/petstore_api.dart';

/// tests for UsersApi
void main() {
  final instance = PetstoreApi().getUsersApi();

  group(UsersApi, () {
    // Creates a new user.
    //
    //Future<UsersCreateResponseBody> userCreatePost(UsersCreateRequestBody usersCreateRequestBody) async
    test('test userCreatePost', () async {
      // TODO
    });

    // Deletes an existing user.
    //
    //Future userDeleteDelete() async
    test('test userDeleteDelete', () async {
      // TODO
    });

    // Gets information for an existing user.
    //
    //Future<UsersGetResponseBody> userGetGet() async
    test('test userGetGet', () async {
      // TODO
    });

    // Updates an existing user.
    //
    //Future userUpdatePut(UsersUpdateRequestBody usersUpdateRequestBody) async
    test('test userUpdatePut', () async {
      // TODO
    });
  });
}
