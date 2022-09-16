// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      username: json['username'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String,
      identityNumber: json['identityNumber'] as String,
      gender: json['gender'] as String,
      bloodGroup: json['bloodGroup'] as int,
      birthDate: json['birthDate'] as String,
      address: json['address'] as String,
      workplace: json['workplace'] as String,
      balance: json['balance'] as String,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phone': instance.phone,
      'email': instance.email,
      'identityNumber': instance.identityNumber,
      'gender': instance.gender,
      'bloodGroup': instance.bloodGroup,
      'birthDate': instance.birthDate,
      'address': instance.address,
      'workplace': instance.workplace,
      'balance': instance.balance,
    };
