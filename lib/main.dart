import 'package:assignment/application.dart';
import 'package:assignment/config/di/injector.dart';
import 'package:assignment/features/presenter/cubit/versions_cubit/versions_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Injector.i.initialize();
  runApp(
    MultiBlocProvider(
      providers: _providers,
      child: const Application(),
    ),
  );
}

List<BlocProvider> _providers = [
  BlocProvider<VersionsCubit>(create: (context) => Injector.i.inject()),
];
