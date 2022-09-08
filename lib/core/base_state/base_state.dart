import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ridesharingv1/app/failure.dart';

part 'base_state.freezed.dart';

@freezed

///
class BaseState<T> with _$BaseState<T> {
  /* initial state */
  const factory BaseState.initial() = BaseInitial<T>;

  /* loading state */
  const factory BaseState.loading() = BaseLoading<T>;

  /* error state  */
  const factory BaseState.error(Failure failure) = BaseError<T>;

  /* success state */
  const factory BaseState.success({T? data}) = BaseSuccess<T>;
}
