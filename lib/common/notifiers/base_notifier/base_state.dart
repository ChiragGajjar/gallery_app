import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/failure/failure.dart';

part 'base_state.freezed.dart';

@freezed
class BaseState<State, OtherStates> with _$BaseState<State, OtherStates> {
  const factory BaseState.initial() = _Initial;
  const factory BaseState.data(State data) = _Data;
  const factory BaseState.loading() = _Loading;
  const factory BaseState.other(OtherStates otherStates) = _Other;
  const factory BaseState.errorOccured(Failure failure) = _ErrorOccured;
}
