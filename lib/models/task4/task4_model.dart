class Album {
  final int? userId;
  final int? id;
  final String? title;
  const Album({this.userId, this.id, this.title});
  Album copyWith({int? userId, int? id, String? title}) {
    return Album(
        userId: userId ?? this.userId,
        id: id ?? this.id,
        title: title ?? this.title);
  }

  Map<String, Object?> toJson() {
    return {'userId': userId, 'id': id, 'title': title};
  }

  factory Album.fromJson(Map<String, Object?> json) {
    return Album(
        userId: json['userId'] == null ? null : json['userId'] as int,
        id: json['id'] == null ? null : json['id'] as int,
        title: json['title'] == null ? null : json['title'] as String);
  }

  @override
  String toString() {
    return '''Album(
                userId:$userId,
id:$id,
title:$title
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Album &&
        other.runtimeType == runtimeType &&
        other.userId == userId &&
        other.id == id &&
        other.title == title;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, userId, id, title);
  }
}
