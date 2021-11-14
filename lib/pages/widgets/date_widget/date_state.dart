import 'package:freezed_annotation/freezed_annotation.dart';

part 'date_state.freezed.dart';

@freezed
class NotifyDateState with _$NotifyDateState {
  const factory NotifyDateState(
      {@required DateTime? notifyDate}) = _NotifyDateState;
}
