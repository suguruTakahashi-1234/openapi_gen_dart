import 'package:test/test.dart';
import 'package:petstore_api/petstore_api.dart';

/// tests for FoldersApi
void main() {
  final instance = PetstoreApi().getFoldersApi();

  group(FoldersApi, () {
    // Creates a new folder.
    //
    //Future<FoldersCreateResponseBody> foldersCreatePost(FoldersCreateRequestBody foldersCreateRequestBody) async
    test('test foldersCreatePost', () async {
      // TODO
    });

    // Deletes an existing folder.
    //
    //Future foldersDeleteDelete(String folderUuid, bool recursive) async
    test('test foldersDeleteDelete', () async {
      // TODO
    });

    // Gets all folders for a user.
    //
    //Future<FoldersGetAllResponseBody> foldersGetAllGet() async
    test('test foldersGetAllGet', () async {
      // TODO
    });

    // Gets information on an existing folder.
    //
    //Future<FoldersGetResponseBody> foldersGetGet(String folderUuid) async
    test('test foldersGetGet', () async {
      // TODO
    });

    // Updates an existing folder object.
    //
    //Future<FoldersUpdateResponseBody> foldersUpdatePut(FoldersUpdateRequestBody foldersUpdateRequestBody) async
    test('test foldersUpdatePut', () async {
      // TODO
    });
  });
}
