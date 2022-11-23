
class Subscription {
  final String? plan;
  final String? status;
  final String? paymentMethod;
  final String? term;
  const Subscription({this.plan, this.status, this.paymentMethod, this.term});
  Subscription copyWith(
      {String? plan, String? status, String? paymentMethod, String? term}) {
    return Subscription(
        plan: plan ?? this.plan,
        status: status ?? this.status,
        paymentMethod: paymentMethod ?? this.paymentMethod,
        term: term ?? this.term);
  }

  Map<String, Object?> toJson() {
    return {
      'plan': plan,
      'status': status,
      'payment_method': paymentMethod,
      'term': term
    };
  }

  factory Subscription.fromJson(Map<String, Object?> json) {
    return Subscription(
        plan: json['plan'] == null ? null : json['plan'] as String,
        status: json['status'] == null ? null : json['status'] as String,
        paymentMethod: json['payment_method'] == null
            ? null
            : json['payment_method'] as String,
        term: json['term'] == null ? null : json['term'] as String);
  }

  @override
  String toString() {
    return '''Subscription(
                plan:$plan,
status:$status,
payment_method:$paymentMethod,
term:$term
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Subscription &&
        other.runtimeType == runtimeType &&
        other.plan == plan &&
        other.status == status &&
        other.paymentMethod == paymentMethod &&
        other.term == term;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, plan, status, paymentMethod, term);
  }
}
