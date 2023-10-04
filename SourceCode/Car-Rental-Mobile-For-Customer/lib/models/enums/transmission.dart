enum TransmissionEnum {
  auto,
  manual,
}

extension TransmissionExtension on TransmissionEnum {
  String get displayName {
    switch (this) {
      case TransmissionEnum.auto:
        return 'Số tự động';
      case TransmissionEnum.manual:
        return 'Số sàn';
    }
  }
}
