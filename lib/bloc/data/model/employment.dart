
class Employment {
  final String? title;
  final String? keySkill;
  const Employment({this.title, this.keySkill});
  Employment copyWith({String? title, String? keySkill}) {
    return Employment(
        title: title ?? this.title, keySkill: keySkill ?? this.keySkill);
  }

  Map<String, Object?> toJson() {
    return {'title': title, 'key_skill': keySkill};
  }

  factory Employment.fromJson(Map<String, Object?> json) {
    return Employment(
        title: json['title'] == null ? null : json['title'] as String,
        keySkill: json['key_skill'] == null ? null : json['key_skill'] as String);
  }

  @override
  String toString() {
    return '''Employment(
                title:$title,
key_skill:$keySkill
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Employment &&
        other.runtimeType == runtimeType &&
        other.title == title &&
        other.keySkill == keySkill;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, title, keySkill);
  }
}


