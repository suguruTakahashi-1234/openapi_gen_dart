# petstore_api.api.AuthenticationApi

## Load the API package
```dart
import 'package:petstore_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authenticationChangePasswordPut**](AuthenticationApi.md#authenticationchangepasswordput) | **PUT** /authentication/changePassword | Changes a users password.
[**authenticationLoginPost**](AuthenticationApi.md#authenticationloginpost) | **POST** /authentication/login | Authenticates the user and returns an access token.


# **authenticationChangePasswordPut**
> authenticationChangePasswordPut(authenticationChangePasswordRequestBody)

Changes a users password.

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = PetstoreApi().getAuthenticationApi();
final AuthenticationChangePasswordRequestBody authenticationChangePasswordRequestBody = ; // AuthenticationChangePasswordRequestBody | 

try {
    api.authenticationChangePasswordPut(authenticationChangePasswordRequestBody);
} catch on DioException (e) {
    print('Exception when calling AuthenticationApi->authenticationChangePasswordPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authenticationChangePasswordRequestBody** | [**AuthenticationChangePasswordRequestBody**](AuthenticationChangePasswordRequestBody.md)|  | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authenticationLoginPost**
> AuthenticationLoginResponseBody authenticationLoginPost(authenticationLoginRequestBody)

Authenticates the user and returns an access token.

### Example
```dart
import 'package:petstore_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = PetstoreApi().getAuthenticationApi();
final AuthenticationLoginRequestBody authenticationLoginRequestBody = ; // AuthenticationLoginRequestBody | 

try {
    final response = api.authenticationLoginPost(authenticationLoginRequestBody);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthenticationApi->authenticationLoginPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authenticationLoginRequestBody** | [**AuthenticationLoginRequestBody**](AuthenticationLoginRequestBody.md)|  | 

### Return type

[**AuthenticationLoginResponseBody**](AuthenticationLoginResponseBody.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

