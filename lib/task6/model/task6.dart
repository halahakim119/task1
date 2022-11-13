

import 'package:task1/task6/model/adress.dart';
import 'package:task1/task6/model/credit_card.dart';
import 'package:task1/task6/model/employment.dart';
import 'package:task1/task6/model/subscription.dart';

class Task6 {
  final int? id;
  final String? uid;
  final String? password;
  final String? firstName;
  final String? lastName;
  final String? username;
  final String? email;
  final String? avatar;
  final String? gender;
  final String? phoneNumber;
  final String? socialInsuranceNumber;
  final String? dateOfBirth;
  final Employment? employment;
  final Address? address;
  final CreditCard? creditCard;
  final Subscription? subscription;
  const Task6(
      {this.id,
      this.uid,
      this.password,
      this.firstName,
      this.lastName,
      this.username,
      this.email,
      this.avatar,
      this.gender,
      this.phoneNumber,
      this.socialInsuranceNumber,
      this.dateOfBirth,
      this.employment,
      this.address,
      this.creditCard,
      this.subscription});
  Task6 copyWith(
      {int? id,
      String? uid,
      String? password,
      String? firstName,
      String? lastName,
      String? username,
      String? email,
      String? avatar,
      String? gender,
      String? phoneNumber,
      String? socialInsuranceNumber,
      String? dateOfBirth,
      Employment? employment,
      Address? address,
      CreditCard? creditCard,
      Subscription? subscription}) {
    return Task6(
        id: id ?? this.id,
        uid: uid ?? this.uid,
        password: password ?? this.password,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        username: username ?? this.username,
        email: email ?? this.email,
        avatar: avatar ?? this.avatar,
        gender: gender ?? this.gender,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        socialInsuranceNumber:
            socialInsuranceNumber ?? this.socialInsuranceNumber,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        employment: employment ?? this.employment,
        address: address ?? this.address,
        creditCard: creditCard ?? this.creditCard,
        subscription: subscription ?? this.subscription);
  }

  Map<String, Object?> toJson() {
    return {
      'id': id,
      'uid': uid,
      'password': password,
      'first_name': firstName,
      'last_name': lastName,
      'username': username,
      'email': email,
      'avatar': avatar,
      'gender': gender,
      'phone_number': phoneNumber,
      'social_insurance_number': socialInsuranceNumber,
      'date_of_birth': dateOfBirth,
      'employment': employment?.toJson(),
      'address': address?.toJson(),
      'credit_card': creditCard?.toJson(),
      'subscription': subscription?.toJson()
    };
  }

  static  Task6 fromJson(Map<String, Object?> json) {
    return Task6(
        id: json['id'] == null ? null : json['id'] as int,
        uid: json['uid'] == null ? null : json['uid'] as String,
        password: json['password'] == null ? null : json['password'] as String,
        firstName: json['first_name'] == null ? null : json['first_name'] as String,
        lastName: json['last_name'] == null ? null : json['last_name'] as String,
        username: json['username'] == null ? null : json['username'] as String,
        email: json['email'] == null ? null : json['email'] as String,
        avatar: json['avatar'] == null ? null : json['avatar'] as String,
        gender: json['gender'] == null ? null : json['gender'] as String,
        phoneNumber:
            json['phone_number'] == null ? null : json['phone_number'] as String,
        socialInsuranceNumber: json['social_insurance_number'] == null
            ? null
            : json['social_insurance_number'] as String,
        dateOfBirth:
            json['date_of_birth'] == null ? null : json['date_of_birth'] as String,
        employment: json['employment'] == null
            ? null
            : Employment.fromJson(json['employment'] as Map<String, Object?>),
        address: json['address'] == null
            ? null
            : Address.fromJson(json['address'] as Map<String, Object?>),
        creditCard: json['credit_card'] == null
            ? null
            : CreditCard.fromJson(json['credit_card'] as Map<String, Object?>),
        subscription: json['subscription'] == null
            ? null
            : Subscription.fromJson(
                json['subscription'] as Map<String, Object?>));
  }

  @override
  String toString() {
    return '''Task6(
                id:$id,
uid:$uid,
password:$password,
first_name:$firstName,
last_name:$lastName,
username:$username,
email:$email,
avatar:$avatar,
gender:$gender,
phone_number:$phoneNumber,
social_insurance_number:$socialInsuranceNumber,
dateOfBirth:$dateOfBirth,
employment:${employment.toString()},
address:${address.toString()},
credit_card:${creditCard.toString()},
subscription:${subscription.toString()}
    ) ''';
  }


  @override
  bool operator ==(Object other) {
    return other is Task6 &&
        other.runtimeType == runtimeType &&
        other.id == id &&
        other.uid == uid &&
        other.password == password &&
        other.firstName == firstName &&
        other.lastName == lastName &&
        other.username == username &&
        other.email == email &&
        other.avatar == avatar &&
        other.gender == gender &&
        other.phoneNumber == phoneNumber &&
        other.socialInsuranceNumber == socialInsuranceNumber &&
        other.dateOfBirth == dateOfBirth &&
        other.employment == employment &&
        other.address == address &&
        other.creditCard == creditCard &&
        other.subscription == subscription;
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        id,
        uid,
        password,
        firstName,
        lastName,
        username,
        email,
        avatar,
        gender,
        phoneNumber,
        socialInsuranceNumber,
        dateOfBirth,
        employment,
        address,
        creditCard,
        subscription);
  }
}

