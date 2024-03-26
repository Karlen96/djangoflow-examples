import 'package:djangoflow_openapi/src/model/change_password_request.dart';
import 'package:djangoflow_openapi/src/model/chat_message.dart';
import 'package:djangoflow_openapi/src/model/chat_message_request.dart';
import 'package:djangoflow_openapi/src/model/chat_message_update.dart';
import 'package:djangoflow_openapi/src/model/chat_message_update_request.dart';
import 'package:djangoflow_openapi/src/model/chat_room.dart';
import 'package:djangoflow_openapi/src/model/chat_room_member_list.dart';
import 'package:djangoflow_openapi/src/model/chat_room_members.dart';
import 'package:djangoflow_openapi/src/model/chat_room_members_request.dart';
import 'package:djangoflow_openapi/src/model/chat_room_request.dart';
import 'package:djangoflow_openapi/src/model/error.dart';
import 'package:djangoflow_openapi/src/model/error_response.dart';
import 'package:djangoflow_openapi/src/model/otp_device.dart';
import 'package:djangoflow_openapi/src/model/otp_device_confirm_request.dart';
import 'package:djangoflow_openapi/src/model/otp_device_request.dart';
import 'package:djangoflow_openapi/src/model/otp_obtain.dart';
import 'package:djangoflow_openapi/src/model/otp_obtain_request.dart';
import 'package:djangoflow_openapi/src/model/paginated_chat_message_list.dart';
import 'package:djangoflow_openapi/src/model/paginated_chat_room_list.dart';
import 'package:djangoflow_openapi/src/model/paginated_otp_device_list.dart';
import 'package:djangoflow_openapi/src/model/patched_chat_message_update_request.dart';
import 'package:djangoflow_openapi/src/model/patched_chat_room_request.dart';
import 'package:djangoflow_openapi/src/model/patched_user2_fa_request.dart';
import 'package:djangoflow_openapi/src/model/patched_user_identity_request.dart';
import 'package:djangoflow_openapi/src/model/social_token_obtain_request.dart';
import 'package:djangoflow_openapi/src/model/token.dart';
import 'package:djangoflow_openapi/src/model/token_blacklist_request.dart';
import 'package:djangoflow_openapi/src/model/token_obtain_request.dart';
import 'package:djangoflow_openapi/src/model/token_refresh_request.dart';
import 'package:djangoflow_openapi/src/model/token_verify_request.dart';
import 'package:djangoflow_openapi/src/model/user.dart';
import 'package:djangoflow_openapi/src/model/user2_fa.dart';
import 'package:djangoflow_openapi/src/model/user_identity.dart';
import 'package:djangoflow_openapi/src/model/user_identity_request.dart';
import 'package:djangoflow_openapi/src/model/user_request.dart';

final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

  ReturnType deserialize<ReturnType, BaseType>(dynamic value, String targetType, {bool growable= true}) {
      switch (targetType) {
        case 'String':
          return '$value' as ReturnType;
        case 'int':
          return (value is int ? value : int.parse('$value')) as ReturnType;
        case 'bool':
          if (value is bool) {
            return value as ReturnType;
          }
          final valueString = '$value'.toLowerCase();
          return (valueString == 'true' || valueString == '1') as ReturnType;
        case 'double':
          return (value is double ? value : double.parse('$value')) as ReturnType;
        case 'ActionEnum':
          
          
        case 'ChangePasswordRequest':
          return ChangePasswordRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ChatMessage':
          return ChatMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ChatMessageRequest':
          return ChatMessageRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ChatMessageUpdate':
          return ChatMessageUpdate.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ChatMessageUpdateRequest':
          return ChatMessageUpdateRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ChatRoom':
          return ChatRoom.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ChatRoomMemberList':
          return ChatRoomMemberList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ChatRoomMembers':
          return ChatRoomMembers.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ChatRoomMembersRequest':
          return ChatRoomMembersRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ChatRoomRequest':
          return ChatRoomRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ChatTypeEnum':
          
          
        case 'Error':
          return Error.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ErrorResponse':
          return ErrorResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'OTPDevice':
          return OTPDevice.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'OTPDeviceConfirmRequest':
          return OTPDeviceConfirmRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'OTPDeviceRequest':
          return OTPDeviceRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'OTPObtain':
          return OTPObtain.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'OTPObtainRequest':
          return OTPObtainRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedChatMessageList':
          return PaginatedChatMessageList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedChatRoomList':
          return PaginatedChatRoomList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedOTPDeviceList':
          return PaginatedOTPDeviceList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedChatMessageUpdateRequest':
          return PatchedChatMessageUpdateRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedChatRoomRequest':
          return PatchedChatRoomRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedUser2FARequest':
          return PatchedUser2FARequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedUserIdentityRequest':
          return PatchedUserIdentityRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SocialTokenObtainRequest':
          return SocialTokenObtainRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Token':
          return Token.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TokenBlacklistRequest':
          return TokenBlacklistRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TokenObtainRequest':
          return TokenObtainRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TokenRefreshRequest':
          return TokenRefreshRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TokenVerifyRequest':
          return TokenVerifyRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TypeEnum':
          
          
        case 'User':
          return User.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'User2FA':
          return User2FA.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UserIdentity':
          return UserIdentity.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UserIdentityRequest':
          return UserIdentityRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UserRequest':
          return UserRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        default:
          RegExpMatch? match;

          if (value is List && (match = _regList.firstMatch(targetType)) != null) {
            targetType = match![1]!; // ignore: parameter_assignments
            return value
              .map<BaseType>((dynamic v) => deserialize<BaseType, BaseType>(v, targetType, growable: growable))
              .toList(growable: growable) as ReturnType;
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)) != null) {
            targetType = match![1]!; // ignore: parameter_assignments
            return value
              .map<BaseType>((dynamic v) => deserialize<BaseType, BaseType>(v, targetType, growable: growable))
              .toSet() as ReturnType;
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)) != null) {
            targetType = match![1]!; // ignore: parameter_assignments
            return Map<dynamic, BaseType>.fromIterables(
              value.keys,
              value.values.map((dynamic v) => deserialize<BaseType, BaseType>(v, targetType, growable: growable)),
            ) as ReturnType;
          }
          break;
    } 
    throw Exception('Cannot deserialize');
  }