import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../{{feature_name}}/domain/entities/{{ feature_name }}_entity.dart';
import '../../../{{feature_name}}/domain/usecases/get_{{ feature_name }}_usecase.dart';

class {{feature_name.pascalCase()}}Cubit extends Cubit<List<{{feature_name.pascalCase()}}Entity>> {
  final Get{{feature_name.pascalCase()}}UseCase get{{feature_name.pascalCase()}}UseCase;

  {{feature_name.pascalCase()}}Cubit(this.get{{feature_name.pascalCase()}}UseCase) : super([]);

  Future<void> fetch{{feature_name.pascalCase()}}() async {
    final result = await get{{feature_name.pascalCase()}}UseCase.call();
    result.fold(
      (error) => emit([]),
      (data) => emit(data),
    );
  }
}
