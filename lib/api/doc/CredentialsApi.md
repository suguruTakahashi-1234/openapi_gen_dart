# petstore_api.api.CredentialsApi

## Load the API package
```dart
import 'package:petstore_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**credentialsCreatePost**](CredentialsApi.md#credentialscreatepost) | **POST** /credentials/create | Creates a new credential object.
[**credentialsDeleteDelete**](CredentialsApi.md#credentialsdeletedelete) | **DELETE** /credentials/delete | Deletes an existing credential object.
[**credentialsGetAllGet**](CredentialsApi.md#credentialsgetallget) | **GET** /credentials/getAll | Gets all available credential objects for this user.
[**credentialsGetGet**](CredentialsApi.md#credentialsgetget) | **GET** /credentials/get | Gets information on a credential object.
[**credentialsSoftDeletePut**](CredentialsApi.md#credentialssoftdeleteput) | **PUT** /credentials/soft-delete | SoftDeletes an existing credential object.
[**credentialsSoftUndeletePut**](CredentialsApi.md#credentialssoftundeleteput) | **PUT** /credentials/soft-undelete | SoftUndeletes an existing credential object.
[**credentialsUpdatePut**](CredentialsApi.md#credentialsupdateput) | **PUT** /credentials/update | Updates a credential object.


# **credentialsCreatePost**
> credentialsCreatePost(credentialsCreateRequestBody)

Creates a new credential object.

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = PetstoreApi().getCredentialsApi();
final CredentialsCreateRequestBody credentialsCreateRequestBody = ; // CredentialsCreateRequestBody | 

try {
    api.credentialsCreatePost(credentialsCreateRequestBody);
} catch on DioException (e) {
    print('Exception when calling CredentialsApi->credentialsCreatePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credentialsCreateRequestBody** | [**CredentialsCreateRequestBody**](CredentialsCreateRequestBody.md)|  | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **credentialsDeleteDelete**
> credentialsDeleteDelete(credentialUuid)

Deletes an existing credential object.

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = PetstoreApi().getCredentialsApi();
final String credentialUuid = credentialUuid_example; // String | 

try {
    api.credentialsDeleteDelete(credentialUuid);
} catch on DioException (e) {
    print('Exception when calling CredentialsApi->credentialsDeleteDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credentialUuid** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **credentialsGetAllGet**
> CredentialsGetAllResponseBody credentialsGetAllGet()

Gets all available credential objects for this user.

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = PetstoreApi().getCredentialsApi();

try {
    final response = api.credentialsGetAllGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling CredentialsApi->credentialsGetAllGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CredentialsGetAllResponseBody**](CredentialsGetAllResponseBody.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **credentialsGetGet**
> CredentialsGetResponseBody credentialsGetGet(credentialUuid)

Gets information on a credential object.

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = PetstoreApi().getCredentialsApi();
final String credentialUuid = credentialUuid_example; // String | 

try {
    final response = api.credentialsGetGet(credentialUuid);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CredentialsApi->credentialsGetGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credentialUuid** | **String**|  | 

### Return type

[**CredentialsGetResponseBody**](CredentialsGetResponseBody.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **credentialsSoftDeletePut**
> credentialsSoftDeletePut(credentialUuid)

SoftDeletes an existing credential object.

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = PetstoreApi().getCredentialsApi();
final String credentialUuid = credentialUuid_example; // String | 

try {
    api.credentialsSoftDeletePut(credentialUuid);
} catch on DioException (e) {
    print('Exception when calling CredentialsApi->credentialsSoftDeletePut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credentialUuid** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **credentialsSoftUndeletePut**
> credentialsSoftUndeletePut(credentialUuid)

SoftUndeletes an existing credential object.

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = PetstoreApi().getCredentialsApi();
final String credentialUuid = credentialUuid_example; // String | 

try {
    api.credentialsSoftUndeletePut(credentialUuid);
} catch on DioException (e) {
    print('Exception when calling CredentialsApi->credentialsSoftUndeletePut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credentialUuid** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **credentialsUpdatePut**
> CredentialsUpdateResponseBody credentialsUpdatePut(credentialsUpdateRequestBody)

Updates a credential object.

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = PetstoreApi().getCredentialsApi();
final CredentialsUpdateRequestBody credentialsUpdateRequestBody = ; // CredentialsUpdateRequestBody | 

try {
    final response = api.credentialsUpdatePut(credentialsUpdateRequestBody);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CredentialsApi->credentialsUpdatePut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credentialsUpdateRequestBody** | [**CredentialsUpdateRequestBody**](CredentialsUpdateRequestBody.md)|  | 

### Return type

[**CredentialsUpdateResponseBody**](CredentialsUpdateResponseBody.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

