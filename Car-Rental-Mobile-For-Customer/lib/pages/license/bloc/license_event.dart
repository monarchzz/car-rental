part of 'license_bloc.dart';

@freezed
class LicenseEvent with _$LicenseEvent {
  const factory LicenseEvent.started() = _Started;
  const factory LicenseEvent.licenseUpdated({
    required List<XFile> images,
  }) = _LicenseUpdated;
}
