import 'package:test/test.dart';
import 'package:petstore_api/petstore_api.dart';

/// tests for AuthenticationApi
void main() {
  final instance = PetstoreApi().getAuthenticationApi();

  group(AuthenticationApi, () {
    // Changes a users password.
    //
    //Future authenticationChangePasswordPut(AuthenticationChangePasswordRequestBody authenticationChangePasswordRequestBody) async
    test('test authenticationChangePasswordPut', () async {
      // TODO
    });

    // Authenticates the user and returns an access token.
    //
    //Future<AuthenticationLoginResponseBody> authenticationLoginPost(AuthenticationLoginRequestBody authenticationLoginRequestBody) async
    test('test authenticationLoginPost', () async {
      // TODO
    });
  });
}
