// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginResponse _$$_LoginResponseFromJson(Map<String, dynamic> json) =>
    _$_LoginResponse(
      refresh: json['refresh'] as String,
      access: json['access'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      group: json['group'] as String?,
    );

Map<String, dynamic> _$$_LoginResponseToJson(_$_LoginResponse instance) =>
    <String, dynamic>{
      'refresh': instance.refresh,
      'access': instance.access,
      'username': instance.username,
      'email': instance.email,
      'group': instance.group,
    };
