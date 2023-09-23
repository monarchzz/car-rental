import 'package:car_rental_for_customer/models/enums/gender.dart';

Gender genderFromJson(String value) {
  switch (value.toLowerCase()) {
    case 'nam':
    case 'male':
      return Gender.male;
    case 'nữ':
    case 'female':
      return Gender.female;
    default:
      return Gender.other;
  }
}
