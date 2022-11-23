class RandomJoke {
  final int? id;
  final String? type;
  final String? setup;
  final String? punchline;
  const RandomJoke({this.id, this.type, this.setup, this.punchline});
  RandomJoke copyWith(
      {int? id, String? type, String? setup, String? punchline}) {
    return RandomJoke(
        id: id ?? this.id,
        type: type ?? this.type,
        setup: setup ?? this.setup,
        punchline: punchline ?? this.punchline);
  }

  Map<String, Object?> toJson() {
    return {'id': id, 'type': type, 'setup': setup, 'punchline': punchline};
  }

  factory RandomJoke.fromJson(Map<String, Object?> json) {
    return RandomJoke(
        id: json['id'] == null ? null : json['id'] as int,
        type: json['type'] == null ? null : json['type'] as String,
        setup: json['setup'] == null ? null : json['setup'] as String,
        punchline:
            json['punchline'] == null ? null : json['punchline'] as String);
  }

  @override
  String toString() {
    return '''RandomJoke(
                id:$id,
type:$type,
setup:$setup,
punchline:$punchline
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is RandomJoke &&
        other.runtimeType == runtimeType &&
        other.id == id &&
        other.type == type &&
        other.setup == setup &&
        other.punchline == punchline;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, id, type, setup, punchline);
  }
}
