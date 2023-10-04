import 'package:car_rental_for_customer/models/car.dart';
import 'package:car_rental_for_customer/models/car_location.dart';
import 'package:car_rental_for_customer/models/driver.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_detail.freezed.dart';
part 'order_detail.g.dart';

@freezed
class OrderDetail with _$OrderDetail {
  factory OrderDetail({
    required String id,
    required Car car,
    required DateTime startTime,
    required DateTime endTime,
    CarLocation? deliveryLocation,
    CarLocation? pickUpLocation,
    required DateTime deliveryTime,
    required DateTime pickUpTime,
    Driver? driver,
  }) = _OrderDetail;

  factory OrderDetail.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailFromJson(json);
}
