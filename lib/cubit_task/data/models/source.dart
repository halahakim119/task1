class Source {
  final dynamic id;
  final String? name;
  const Source({this.id, this.name});
  Source copyWith({dynamic? id, String? name}) {
    return Source(id: id ?? this.id, name: name ?? this.name);
  }

  Map<String, Object?> toJson() {
    return {'id': id, 'name': name};
  }

  static Source fromJson(Map<String, Object?> json) {
    return Source(
        id: json['id'] as dynamic,
        name: json['name'] == null ? null : json['name'] as String);
  }

  @override
  String toString() {
    return '''Source(
                id:$id,
name:$name
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Source &&
        other.runtimeType == runtimeType &&
        other.id == id &&
        other.name == name;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, id, name);
  }
}
