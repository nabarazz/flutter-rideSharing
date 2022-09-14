// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResuestlistResponse _$$_ResuestlistResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ResuestlistResponse(
      reuestedRideData: (json['reuestedRideData'] as List<dynamic>)
          .map((e) => ResuestlistResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResuestlistResponseToJson(
        _$_ResuestlistResponse instance) =>
    <String, dynamic>{
      'reuestedRideData': instance.reuestedRideData,
    };

_$_Resuestlist _$$_ResuestlistFromJson(Map<String, dynamic> json) =>
    _$_Resuestlist(
      id: json['id'] as String,
      created: json['created'] as String,
      updated: json['updated'] as String,
      pick_up_address: json['pick_up_address'] as String,
      drop_off_address: json['drop_off_address'] as String,
      price: json['price'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$_ResuestlistToJson(_$_Resuestlist instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': instance.created,
      'updated': instance.updated,
      'pick_up_address': instance.pick_up_address,
      'drop_off_address': instance.drop_off_address,
      'price': instance.price,
      'status': instance.status,
    };
