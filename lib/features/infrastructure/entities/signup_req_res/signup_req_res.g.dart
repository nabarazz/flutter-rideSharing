// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_req_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignUpReqRes _$$_SignUpReqResFromJson(Map<String, dynamic> json) =>
    _$_SignUpReqRes(
      id: json['id'] as int? ?? 0,
      username: json['username'] as String,
      password1: json['password1'] as String? ?? '',
      password2: json['password2'] as String? ?? '',
      email: json['email'] as String,
      first_name: json['first_name'] as String,
      last_name: json['last_name'] as String,
      group: json['group'] as String? ?? '',
      photo: json['photo'] as String?,
    );

Map<String, dynamic> _$$_SignUpReqResToJson(_$_SignUpReqRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password1': instance.password1,
      'password2': instance.password2,
      'email': instance.email,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'group': instance.group,
      'photo': instance.photo,
    };
