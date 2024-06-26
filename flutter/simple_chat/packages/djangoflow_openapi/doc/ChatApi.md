# djangoflow_openapi.api.ChatApi

## Load the API package
```dart
import 'package:djangoflow_openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chatRoomsCreate**](ChatApi.md#chatroomscreate) | **POST** /api/v1/chat/rooms/ | 
[**chatRoomsDestroy**](ChatApi.md#chatroomsdestroy) | **DELETE** /api/v1/chat/rooms/{id}/ | 
[**chatRoomsList**](ChatApi.md#chatroomslist) | **GET** /api/v1/chat/rooms/ | 
[**chatRoomsMemberCreate**](ChatApi.md#chatroomsmembercreate) | **POST** /api/v1/chat/rooms/{id}/member/ | 
[**chatRoomsMembersRetrieve**](ChatApi.md#chatroomsmembersretrieve) | **GET** /api/v1/chat/rooms/{id}/members/ | 
[**chatRoomsMessagesCreate**](ChatApi.md#chatroomsmessagescreate) | **POST** /api/v1/chat/rooms/{room_id}/messages/ | 
[**chatRoomsMessagesDestroy**](ChatApi.md#chatroomsmessagesdestroy) | **DELETE** /api/v1/chat/rooms/{room_id}/messages/{id}/ | 
[**chatRoomsMessagesList**](ChatApi.md#chatroomsmessageslist) | **GET** /api/v1/chat/rooms/{room_id}/messages/ | 
[**chatRoomsMessagesPartialUpdate**](ChatApi.md#chatroomsmessagespartialupdate) | **PATCH** /api/v1/chat/rooms/{room_id}/messages/{id}/ | 
[**chatRoomsMessagesRetrieve**](ChatApi.md#chatroomsmessagesretrieve) | **GET** /api/v1/chat/rooms/{room_id}/messages/{id}/ | 
[**chatRoomsMessagesUpdate**](ChatApi.md#chatroomsmessagesupdate) | **PUT** /api/v1/chat/rooms/{room_id}/messages/{id}/ | 
[**chatRoomsPartialUpdate**](ChatApi.md#chatroomspartialupdate) | **PATCH** /api/v1/chat/rooms/{id}/ | 
[**chatRoomsRetrieve**](ChatApi.md#chatroomsretrieve) | **GET** /api/v1/chat/rooms/{id}/ | 
[**chatRoomsUpdate**](ChatApi.md#chatroomsupdate) | **PUT** /api/v1/chat/rooms/{id}/ | 


# **chatRoomsCreate**
> ChatRoom chatRoomsCreate(chatRoomRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final ChatRoomRequest chatRoomRequest = ; // ChatRoomRequest | 

try {
    final response = api.chatRoomsCreate(chatRoomRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ChatApi->chatRoomsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chatRoomRequest** | [**ChatRoomRequest**](ChatRoomRequest.md)|  | 

### Return type

[**ChatRoom**](ChatRoom.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsDestroy**
> Object chatRoomsDestroy(id)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final String id = id_example; // String | 

try {
    final response = api.chatRoomsDestroy(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ChatApi->chatRoomsDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

**Object**

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsList**
> PaginatedChatRoomList chatRoomsList(limit, offset)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final int limit = 56; // int | Number of results to return per page.
final int offset = 56; // int | The initial index from which to return the results.

try {
    final response = api.chatRoomsList(limit, offset);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ChatApi->chatRoomsList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Number of results to return per page. | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 

### Return type

[**PaginatedChatRoomList**](PaginatedChatRoomList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsMemberCreate**
> ChatRoomMembers chatRoomsMemberCreate(id, chatRoomMembersRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final String id = id_example; // String | 
final ChatRoomMembersRequest chatRoomMembersRequest = ; // ChatRoomMembersRequest | 

try {
    final response = api.chatRoomsMemberCreate(id, chatRoomMembersRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ChatApi->chatRoomsMemberCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **chatRoomMembersRequest** | [**ChatRoomMembersRequest**](ChatRoomMembersRequest.md)|  | 

### Return type

[**ChatRoomMembers**](ChatRoomMembers.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsMembersRetrieve**
> ChatRoomMemberList chatRoomsMembersRetrieve(id)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final String id = id_example; // String | 

try {
    final response = api.chatRoomsMembersRetrieve(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ChatApi->chatRoomsMembersRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ChatRoomMemberList**](ChatRoomMemberList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsMessagesCreate**
> ChatMessage chatRoomsMessagesCreate(roomId, chatMessageRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final int roomId = 56; // int | 
final ChatMessageRequest chatMessageRequest = ; // ChatMessageRequest | 

try {
    final response = api.chatRoomsMessagesCreate(roomId, chatMessageRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ChatApi->chatRoomsMessagesCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roomId** | **int**|  | 
 **chatMessageRequest** | [**ChatMessageRequest**](ChatMessageRequest.md)|  | 

### Return type

[**ChatMessage**](ChatMessage.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsMessagesDestroy**
> Object chatRoomsMessagesDestroy(id, roomId)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final int id = 56; // int | A unique integer value identifying this chat message.
final int roomId = 56; // int | 

try {
    final response = api.chatRoomsMessagesDestroy(id, roomId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ChatApi->chatRoomsMessagesDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this chat message. | 
 **roomId** | **int**|  | 

### Return type

**Object**

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsMessagesList**
> PaginatedChatMessageList chatRoomsMessagesList(roomId, limit, offset)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final int roomId = 56; // int | 
final int limit = 56; // int | Number of results to return per page.
final int offset = 56; // int | The initial index from which to return the results.

try {
    final response = api.chatRoomsMessagesList(roomId, limit, offset);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ChatApi->chatRoomsMessagesList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roomId** | **int**|  | 
 **limit** | **int**| Number of results to return per page. | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 

### Return type

[**PaginatedChatMessageList**](PaginatedChatMessageList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsMessagesPartialUpdate**
> ChatMessage chatRoomsMessagesPartialUpdate(id, roomId, patchedChatMessageRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final int id = 56; // int | A unique integer value identifying this chat message.
final int roomId = 56; // int | 
final PatchedChatMessageRequest patchedChatMessageRequest = ; // PatchedChatMessageRequest | 

try {
    final response = api.chatRoomsMessagesPartialUpdate(id, roomId, patchedChatMessageRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ChatApi->chatRoomsMessagesPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this chat message. | 
 **roomId** | **int**|  | 
 **patchedChatMessageRequest** | [**PatchedChatMessageRequest**](PatchedChatMessageRequest.md)|  | [optional] 

### Return type

[**ChatMessage**](ChatMessage.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsMessagesRetrieve**
> ChatMessage chatRoomsMessagesRetrieve(id, roomId)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final int id = 56; // int | A unique integer value identifying this chat message.
final int roomId = 56; // int | 

try {
    final response = api.chatRoomsMessagesRetrieve(id, roomId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ChatApi->chatRoomsMessagesRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this chat message. | 
 **roomId** | **int**|  | 

### Return type

[**ChatMessage**](ChatMessage.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsMessagesUpdate**
> ChatMessage chatRoomsMessagesUpdate(id, roomId, chatMessageRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final int id = 56; // int | A unique integer value identifying this chat message.
final int roomId = 56; // int | 
final ChatMessageRequest chatMessageRequest = ; // ChatMessageRequest | 

try {
    final response = api.chatRoomsMessagesUpdate(id, roomId, chatMessageRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ChatApi->chatRoomsMessagesUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this chat message. | 
 **roomId** | **int**|  | 
 **chatMessageRequest** | [**ChatMessageRequest**](ChatMessageRequest.md)|  | 

### Return type

[**ChatMessage**](ChatMessage.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsPartialUpdate**
> ChatRoom chatRoomsPartialUpdate(id, patchedChatRoomRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final String id = id_example; // String | 
final PatchedChatRoomRequest patchedChatRoomRequest = ; // PatchedChatRoomRequest | 

try {
    final response = api.chatRoomsPartialUpdate(id, patchedChatRoomRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ChatApi->chatRoomsPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **patchedChatRoomRequest** | [**PatchedChatRoomRequest**](PatchedChatRoomRequest.md)|  | [optional] 

### Return type

[**ChatRoom**](ChatRoom.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsRetrieve**
> ChatRoom chatRoomsRetrieve(id)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final String id = id_example; // String | 

try {
    final response = api.chatRoomsRetrieve(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ChatApi->chatRoomsRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ChatRoom**](ChatRoom.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRoomsUpdate**
> ChatRoom chatRoomsUpdate(id, chatRoomRequest)



### Example
```dart
import 'package:djangoflow_openapi/api.dart';

final api = DjangoflowOpenapi().getChatApi();
final String id = id_example; // String | 
final ChatRoomRequest chatRoomRequest = ; // ChatRoomRequest | 

try {
    final response = api.chatRoomsUpdate(id, chatRoomRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ChatApi->chatRoomsUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **chatRoomRequest** | [**ChatRoomRequest**](ChatRoomRequest.md)|  | 

### Return type

[**ChatRoom**](ChatRoom.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

