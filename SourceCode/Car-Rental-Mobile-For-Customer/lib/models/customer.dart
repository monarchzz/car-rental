import 'package:car_rental_for_customer/models/enums/gender.dart';
import 'package:car_rental_for_customer/models/image.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:car_rental_for_customer/models/converters/gender_from_json.dart';

part 'customer.freezed.dart';
part 'customer.g.dart';

@freezed
class Customer with _$Customer {
  factory Customer({
    required String id,
    required String name,
    required String phone,
    @JsonKey(fromJson: genderFromJson) required Gender gender,
    // required Wallet wallet,
    String? bankAccountNumber,
    String? bankName,
    String? avatarUrl,
    String? address,
    @Default(false) bool isLicenseValid,
    List<ImageModel>? images,
  }) = _Customer;

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);
}
