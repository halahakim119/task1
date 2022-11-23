import 'package:equatable/equatable.dart';
import 'package:task1/cubit_task/data/models/articles.dart';

class DataModel extends Equatable {
  final String? status;
  final int? totalResults;
  final List<Articles>? articles;
  const DataModel({this.status, this.totalResults, this.articles});
  DataModel copyWith(
      {String? status, int? totalResults, List<Articles>? articles}) {
    return DataModel(
        status: status ?? this.status,
        totalResults: totalResults ?? this.totalResults,
        articles: articles ?? this.articles);
  }

  Map<String, Object?> toJson() {
    return {
      'status': status,
      'totalResults': totalResults,
      'articles':
          articles?.map<Map<String, dynamic>>((data) => data.toJson()).toList()
    };
  }

  static DataModel fromJson(Map<String, Object?> json) {
    return DataModel(
        status: json['status'] == null ? null : json['status'] as String,
        totalResults:
            json['totalResults'] == null ? null : json['totalResults'] as int,
        articles: json['articles'] == null
            ? null
            : (json['articles'] as List)
                .map<Articles>(
                    (data) => Articles.fromJson(data as Map<String, Object?>))
                .toList());
  }

  @override
  String toString() {
    return '''DataModel(
                status:$status,
totalResults:$totalResults,
articles:${articles.toString()}
    ) ''';
  }

  @override
  List<Object?> get props => [status, totalResults, articles];

  @override
  bool operator ==(Object other) {
    return other is DataModel &&
        other.runtimeType == runtimeType &&
        other.status == status &&
        other.totalResults == totalResults &&
        other.articles == articles;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, status, totalResults, articles);
  }
}
