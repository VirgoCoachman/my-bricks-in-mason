import 'package:dartz/dartz.dart';
import '../../domain/entities/{{ feature_name }}_entity.dart';

class {{feature_name.pascalCase()}}Model extends {{feature_name.pascalCase()}}Entity {
  const {{feature_name.pascalCase()}}Model({required int id, required String name}) : super(id: id, name: name);

  factory {{feature_name.pascalCase()}}Model.fromMap(Map<String, dynamic> map) {
    return {{feature_name.pascalCase()}}Model(id: map['id'], name: map['name']);
  }

  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name};
  } 

  factory {{feature_name.pascalCase()}}Model.fromEntity({{feature_name.pascalCase()}}Entity entity) {
    return {{feature_name.pascalCase()}}Model(id: entity.id, name: entity.name);
  }

  {{feature_name.pascalCase()}}Entity toEntity() =>
     {{feature_name.pascalCase()}}Entity(id: id, name: name);

  {{feature_name.pascalCase()}}Model copyWith({int? id, String? name}) {
    return {{feature_name.pascalCase()}}Model(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

}
