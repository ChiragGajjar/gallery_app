import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/failure/failure.dart';
import 'base_state.dart';

typedef _PreHandleData<T> = bool Function(T data);
typedef _PreHandleFailure = bool Function(Failure failure);
typedef EitherFailureOr<T> = Future<Either<Failure, T>>;

class BaseStateNotifier<DataState, OtherStates>
    extends StateNotifier<BaseState<DataState, OtherStates>> {
  BaseStateNotifier({
    BaseState<DataState, OtherStates> initialState = const BaseState.initial(),
  }) : super(initialState);

  @protected
  Future execute(
    EitherFailureOr<DataState> function, {
    _PreHandleData<DataState>? onDataRecieved,
    _PreHandleFailure? onFailureOccured,
    bool withLoading = true,
  }) async {
    if (withLoading) state = const BaseState.loading();

    final either = await function;
    either.fold(
      (failure) => _onFailure(failure, onFailureOccured),
      (data) => _onData(data, onDataRecieved),
    );
  }

  void _onFailure(Failure failure, _PreHandleFailure? onFailureOccured) {
    if (onFailureOccured != null) {
      final shouldUpdateState = onFailureOccured(failure);
      if (shouldUpdateState) state = BaseState.errorOccured(failure);
    } else {
      state = BaseState.errorOccured(failure);
    }
  }

  void _onData(DataState data, _PreHandleData<DataState>? onDataRecieved) {
    if (onDataRecieved != null) {
      final shouldUpdateState = onDataRecieved(data);
      if (shouldUpdateState) state = BaseState.data(data);
    } else {
      state = BaseState.data(data);
    }
  }
}
