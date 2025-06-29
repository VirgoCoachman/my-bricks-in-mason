import 'package:equatable/equatable.dart';
import '../../data/models/{{feature_name.snakeCase()}}_model.dart';


class {{feature_name.pascalCase()}}Entity extends Equatable{
  const {{feature_name.pascalCase()}}Entity({required this.uid, required this.name});

  final int uid;
  final String name;

  {{feature_name.pascalCase()}}Model toModel() => {{feature_name.pascalCase()}}Model(
    uid: uid, name: name
  );

    @override
  // TODO: implement props
  List<Object?> get props => [uid, name];
}
