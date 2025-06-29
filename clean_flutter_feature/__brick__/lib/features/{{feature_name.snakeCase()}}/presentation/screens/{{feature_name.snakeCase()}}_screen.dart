import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../{{feature_name}}/presentation/bloc/{{ feature_name }}_bloc.dart';

class {{feature_name.pascalCase()}}Screen extends StatelessWidget {
  const {{feature_name.pascalCase()}}Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('{{feature_name.pascalCase()}} Page')),
      body: BlocBuilder<{{feature_name.pascalCase()}}Cubit, List<dynamic>>(
        builder: (context, state) {
          if (state.isEmpty) {
            return const Center(child: Text('No data available.'));
          }
          return ListView.builder(
            itemCount: state.length,
            itemBuilder: (context, index) {
              return ListTile(title: Text(state[index].name));
            },
          );
        },
      ),
    );
  }
}
