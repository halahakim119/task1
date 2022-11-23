


import 'package:task1/bloc/data/model/coordinates.dart';

class Address {
  final String? city;
  final String? streetName;
  final String? streetAddress;
  final String? zipCode;
  final String? state;
  final String? country;
  final Coordinates? coordinates;
  const Address(
      {this.city,
      this.streetName,
      this.streetAddress,
      this.zipCode,
      this.state,
      this.country,
      this.coordinates});
  Address copyWith(
      {String? city,
      String? streetName,
      String? streetAddress,
      String? zipCode,
      String? state,
      String? country,
      Coordinates? coordinates}) {
    return Address(
        city: city ?? this.city,
        streetName: streetName ?? this.streetName,
        streetAddress: streetAddress ?? this.streetAddress,
        zipCode: zipCode ?? this.zipCode,
        state: state ?? this.state,
        country: country ?? this.country,
        coordinates: coordinates ?? this.coordinates);
  }

  Map<String, Object?> toJson() {
    return {
      'city': city,
      'street_name': streetName,
      'street_address': streetAddress,
      'zip_code': zipCode,
      'state': state,
      'country': country,
      'coordinates': coordinates?.toJson()
    };
  }

  factory Address.fromJson(Map<String, Object?> json) {
    return Address(
        city: json['city'] == null ? null : json['city'] as String,
        streetName:
            json['street_name'] == null ? null : json['street_name'] as String,
        streetAddress: json['street_address'] == null
            ? null
            : json['street_address'] as String,
        zipCode: json['zip_code'] == null ? null : json['zip_code'] as String,
        state: json['state'] == null ? null : json['state'] as String,
        country: json['country'] == null ? null : json['country'] as String,
        coordinates: json['coordinates'] == null
            ? null
            : Coordinates.fromJson(
                json['coordinates'] as Map<String, Object?>));
  }

  @override
  String toString() {
    return '''Address(
                city:$city,
street_name:$streetName,
street_address:$streetAddress,
zip_code:$zipCode,
state:$state,
country:$country,
coordinates:${coordinates.toString()}
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Address &&
        other.runtimeType == runtimeType &&
        other.city == city &&
        other.streetName == streetName &&
        other.streetAddress == streetAddress &&
        other.zipCode == zipCode &&
        other.state == state &&
        other.country == country &&
        other.coordinates == coordinates;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, city, streetName, streetAddress, zipCode,
        state, country, coordinates);
  }
}
