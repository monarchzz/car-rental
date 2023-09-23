part of 'driver_detail_bloc.dart';

@freezed
class DriverDetailEvent with _$DriverDetailEvent {
  const factory DriverDetailEvent.started({
    required String driverId,
  }) = _Started;
}
