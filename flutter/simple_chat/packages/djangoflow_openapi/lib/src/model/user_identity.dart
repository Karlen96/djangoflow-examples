import 'package:copy_with_extension/copy_with_extension.dart';
//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'user_identity.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserIdentity {
  /// Returns a new [UserIdentity] instance.
  UserIdentity({

     this.firstName,

     this.lastName,

     this.username,

     this.email,

     this.phoneNumber,

     this.id,
  });

  @JsonKey(
    
    name: r'first_name',
    required: false,
    includeIfNull: false
  )


  final String? firstName;



  @JsonKey(
    
    name: r'last_name',
    required: false,
    includeIfNull: false
  )


  final String? lastName;



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
    
    name: r'id',
    required: false,
    includeIfNull: false
  )


  final String? id;



  @override
  bool operator ==(Object other) => identical(this, other) || other is UserIdentity &&
     other.firstName == firstName &&
     other.lastName == lastName &&
     other.username == username &&
     other.email == email &&
     other.phoneNumber == phoneNumber &&
     other.id == id;

  @override
  int get hashCode =>
    firstName.hashCode +
    lastName.hashCode +
    username.hashCode +
    email.hashCode +
    phoneNumber.hashCode +
    id.hashCode;

  factory UserIdentity.fromJson(Map<String, dynamic> json) => _$UserIdentityFromJson(json);

  Map<String, dynamic> toJson() => _$UserIdentityToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

