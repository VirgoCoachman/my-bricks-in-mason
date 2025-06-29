import '../models/{{feature_name.snakeCase()}}_model.dart';

abstract class {{feature_name.pascalCase()}}RemoteDataSource {
  // Define methods for remote data source here
  // For example, fetching data from an API

  Future<List<{{feature_name.pascalCase()}}Model>> getAll() async {
    // Simulate a network call
    await Future.delayed(Duration(seconds: 2));
    
    // Return mocked data
    return [
      {{feature_name.pascalCase()}}Model(id: 1, name: 'Sample {{feature_name.pascalCase()}} 1'),
      {{feature_name.pascalCase()}}Model(id: 2, name: 'Sample {{feature_name.pascalCase()}} 2'),
    ];
  }
}