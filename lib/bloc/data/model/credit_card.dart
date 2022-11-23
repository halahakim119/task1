
class CreditCard {
  final String? ccNumber;
  const CreditCard({this.ccNumber});
  CreditCard copyWith({String? ccNumber}) {
    return CreditCard(ccNumber: ccNumber ?? this.ccNumber);
  }

  Map<String, Object?> toJson() {
    return {'cc_number': ccNumber};
  }

  factory CreditCard.fromJson(Map<String, Object?> json) {
    return CreditCard(
        ccNumber: json['cc_number'] == null ? null : json['cc_number'] as String);
  }

  @override
  String toString() {
    return '''CreditCard(
                cc_number:$ccNumber
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is CreditCard &&
        other.runtimeType == runtimeType &&
        other.ccNumber == ccNumber;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, ccNumber);
  }
}