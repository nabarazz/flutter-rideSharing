// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RideRequest _$$_RideRequestFromJson(Map<String, dynamic> json) =>
    _$_RideRequest(
      pick_up_address: json['pick_up_address'] as String,
      drop_off_address: json['drop_off_address'] as String,
      price: json['price'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$_RideRequestToJson(_$_RideRequest instance) =>
    <String, dynamic>{
      'pick_up_address': instance.pick_up_address,
      'drop_off_address': instance.drop_off_address,
      'price': instance.price,
      'status': instance.status,
    };
