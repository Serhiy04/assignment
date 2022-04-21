import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injector.config.dart';

@InjectableInit(
  initializerName: r'$initLocator',
)
void _initialize(GetIt locator) {
  $initLocator(locator);
}

class Injector {
  static final _instance = Injector._();
  Injector._();
  static Injector get i => _instance;

  final _locator = GetIt.instance;
  var _initializationCompleter = Completer<void>();

  Future<void> initialize() async {
    if (!_initializationCompleter.isCompleted) {
      _initialize(_locator);
      _initializationCompleter.complete();
    }
  }

  Future<void> reset() async {
    await _locator.reset();
    _initializationCompleter = Completer();
  }

  D inject<D extends Object>({
    String? instanceName,
    dynamic param1,
    dynamic param2,
  }) {
    return _locator.get(
      instanceName: instanceName,
      param1: param1,
      param2: param2,
    );
  }

  bool isInitialized() => _initializationCompleter.isCompleted;
}
