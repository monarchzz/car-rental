part of 'license_bloc.dart';

@freezed
class LicenseState with _$LicenseState {
  const factory LicenseState.initial() = _Initial;
  const factory LicenseState.loading() = _Loading;
  const factory LicenseState.success({
    required User user,
  }) = _Success;
  const factory LicenseState.failure({
    required String message,
  }) = _Failure;
}
