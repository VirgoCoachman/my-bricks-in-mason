# My Mason Bricks

This repository contains a collection of [Mason](https://github.com/felangel/mason) bricks to help you generate boilerplate code for your Flutter projects.

## Bricks

### `clean_flutter_feature`

This brick generates a complete feature for a Flutter application, following the principles of **Clean Architecture** and using the **BLoC** pattern for state management.

#### Usage

To use this brick, you need to have Mason installed. Then, from the root of your project, run the following command:

```sh
mason make clean_flutter_feature --feature_name "your_feature_name"
```

You can also use the interactive prompt by running:

```sh
mason make clean_flutter_feature
```

And the CLI will prompt you for the feature name:

```
What is the name of the feature? (e.g., login, user_profile)
```

#### Generated File Structure

When you run the brick, it will generate the following file structure under `lib/features/your_feature_name`:

```
lib/
└── features/
    └── your_feature_name/
        ├── data/
        │   ├── datasources/
        │   │   └── your_feature_name_remote_datasource.dart
        │   ├── models/
        │   │   └── your_feature_name_model.dart
        │   └── repositories/
        │       └── your_feature_name_repository_impl.dart
        ├── domain/
        │   ├── entities/
        │   │   └── your_feature_name_entity.dart
        │   ├── repositories/
        │   │   └── your_feature_name_repository.dart
        │   └── usecases/
        │       └── get_your_feature_name_usecase.dart
        └── presentation/
            ├── bloc/
            │   └── your_feature_name_bloc.dart
            └── screens/
                └── your_feature_name_screen.dart
```

#### Variables

This brick uses the following variable:

| Variable       | Description                                    | Type   | Default |
| -------------- | ---------------------------------------------- | ------ | ------- |
| `feature_name` | The name of the feature to generate.           | `string` | `example` |

---

## Contributing

Contributions are welcome! Please feel free to open an issue or submit a pull request.