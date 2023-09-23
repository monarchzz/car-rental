enum Gender {
  // @JsonValue('Male')
  male,
  // @JsonValue('Female')
  female,
  // @JsonValue('Other')
  other,
}

extension GenderName on Gender {
  String getDisplayName() {
    switch (this) {
      case Gender.male:
        return 'Nam';
      case Gender.female:
        return 'Nữ';
      case Gender.other:
        return 'Khác';
    }
  }
}
