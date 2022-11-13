class Photo {
  final int? albumId;
  final int? id;
  final String? title;
  final String? url;
  final String? thumbnailUrl;
  const Photo({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});
  Photo copyWith(
      {int? albumId,
      int? id,
      String? title,
      String? url,
      String? thumbnailUrl}) {
    return Photo(
        albumId: albumId ?? this.albumId,
        id: id ?? this.id,
        title: title ?? this.title,
        url: url ?? this.url,
        thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl);
  }

  Map<String, Object?> toJson() {
    return {
      'albumId': albumId,
      'id': id,
      'title': title,
      'url': url,
      'thumbnailUrl': thumbnailUrl
    };
  }

  factory Photo.fromJson(Map<String, Object?> json) {
    return Photo(
        albumId: json['albumId'] == null ? null : json['albumId'] as int,
        id: json['id'] == null ? null : json['id'] as int,
        title: json['title'] == null ? null : json['title'] as String,
        url: json['url'] == null ? null : json['url'] as String,
        thumbnailUrl: json['thumbnailUrl'] == null
            ? null
            : json['thumbnailUrl'] as String);
  }

  @override
  String toString() {
    return '''Photo(
                albumId:$albumId,
id:$id,
title:$title,
url:$url,
thumbnailUrl:$thumbnailUrl
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Photo &&
        other.runtimeType == runtimeType &&
        other.albumId == albumId &&
        other.id == id &&
        other.title == title &&
        other.url == url &&
        other.thumbnailUrl == thumbnailUrl;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, albumId, id, title, url, thumbnailUrl);
  }
}
