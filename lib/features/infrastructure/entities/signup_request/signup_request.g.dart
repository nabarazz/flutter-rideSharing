// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignUpRequest _$$_SignUpRequestFromJson(Map<String, dynamic> json) =>
    _$_SignUpRequest(
      username: json['username'] as String,
      password1: json['password1'] as String,
      password2: json['password2'] as String,
      email: json['email'] as String,
      first_name: json['first_name'] as String,
      last_name: json['last_name'] as String,
      group: json['group'] as String,
    );

Map<String, dynamic> _$$_SignUpRequestToJson(_$_SignUpRequest instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password1': instance.password1,
      'password2': instance.password2,
      'email': instance.email,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'group': instance.group,
    };
