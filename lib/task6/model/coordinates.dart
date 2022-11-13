
class Coordinates {
  final double? lat;
  final double? lng;
  const Coordinates({this.lat, this.lng});
  Coordinates copyWith({double? lat, double? lng}) {
    return Coordinates(lat: lat ?? this.lat, lng: lng ?? this.lng);
  }

  Map<String, Object?> toJson() {
    return {'lat': lat, 'lng': lng};
  }

  static Coordinates fromJson(Map<String, Object?> json) {
    return Coordinates(
        lat: json['lat'] == null ? null : json['lat'] as double,
        lng: json['lng'] == null ? null : json['lng'] as double);
  }

  @override
  String toString() {
    return '''Coordinates(
                lat:$lat,
lng:$lng
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Coordinates &&
        other.runtimeType == runtimeType &&
        other.lat == lat &&
        other.lng == lng;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, lat, lng);
  }
}
