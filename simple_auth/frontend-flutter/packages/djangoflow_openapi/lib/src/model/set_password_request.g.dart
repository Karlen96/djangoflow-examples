// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SetPasswordRequest _$SetPasswordRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'SetPasswordRequest',
      json,
      ($checkedConvert) {
        final val = SetPasswordRequest(
          email: $checkedConvert('email', (v) => v as String?),
          phoneNumber: $checkedConvert('phone_number', (v) => v as String?),
          otp: $checkedConvert('otp', (v) => v as String?),
          password: $checkedConvert('password', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'phoneNumber': 'phone_number'},
    );

Map<String, dynamic> _$SetPasswordRequestToJson(SetPasswordRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  writeNotNull('phone_number', instance.phoneNumber);
  writeNotNull('otp', instance.otp);
  writeNotNull('password', instance.password);
  return val;
}
