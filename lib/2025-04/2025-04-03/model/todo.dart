import 'package:json_annotation/json_annotation.dart';

part 'todo.g.dart';

@JsonSerializable(explicitToJson: true)
class Todo {
  final int id;
  final String title;
  final bool completed;

  Todo({required this.id, required this.title, required this.completed});

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);

  Map<String, dynamic> toJson() => _$TodoToJson(this);
}
