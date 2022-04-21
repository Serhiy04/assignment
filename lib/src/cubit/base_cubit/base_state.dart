import 'package:equatable/equatable.dart';

abstract class BaseState extends Equatable {
  @override
  List<Object?> get props => [];
}

class InitialState extends BaseState {}

class LoadingState extends BaseState {}

class ErrorState extends BaseState {
  final String error;
  ErrorState({required this.error});

  @override
  List<Object> get props => [error];
}

class SuccessModelState<Model extends Object> extends BaseState {
  final Model model;
  SuccessModelState({required this.model});

  @override
  List<Object> get props => [model];
}

class SuccessListState<Model extends Object> extends BaseState {
  final List<Model?> models;
  SuccessListState({required this.models});

  @override
  List<Object> get props => [models];
}
