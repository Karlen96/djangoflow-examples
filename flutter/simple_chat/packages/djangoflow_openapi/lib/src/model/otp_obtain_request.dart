import 'package:copy_with_extension/copy_with_extension.dart';
//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'otp_obtain_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OTPObtainRequest {
  /// Returns a new [OTPObtainRequest] instance.
  OTPObtainRequest({

     this.username,

     this.email,

     this.phoneNumber,

     this.otp,

     this.password,

     this.redirectPath,
  });

  @JsonKey(
    
    name: r'username',
    required: false,
    includeIfNull: false
  )


  final String? username;



  @JsonKey(
    
    name: r'email',
    required: false,
    includeIfNull: false
  )


  final String? email;



  @JsonKey(
    
    name: r'phone_number',
    required: false,
    includeIfNull: false
  )


  final String? phoneNumber;



  @JsonKey(
    
    name: r'otp',
    required: false,
    includeIfNull: false
  )


  final String? otp;



  @JsonKey(
    
    name: r'password',
    required: false,
    includeIfNull: false
  )


  final String? password;



  @JsonKey(
    
    name: r'redirect_path',
    required: false,
    includeIfNull: false
  )


  final String? redirectPath;



  @override
  bool operator ==(Object other) => identical(this, other) || other is OTPObtainRequest &&
     other.username == username &&
     other.email == email &&
     other.phoneNumber == phoneNumber &&
     other.otp == otp &&
     other.password == password &&
     other.redirectPath == redirectPath;

  @override
  int get hashCode =>
    username.hashCode +
    email.hashCode +
    phoneNumber.hashCode +
    otp.hashCode +
    password.hashCode +
    redirectPath.hashCode;

  factory OTPObtainRequest.fromJson(Map<String, dynamic> json) => _$OTPObtainRequestFromJson(json);

  Map<String, dynamic> toJson() => _$OTPObtainRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

