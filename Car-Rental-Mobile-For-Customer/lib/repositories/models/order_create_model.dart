class OrderCreateModel {
  int rentalTime;
  String? promotionId;
  bool isPaid;
  double unitPrice;
  double deliveryFee;
  double deliveryDistance;
  double deposit;
  double amount;
  String? description;
  List<OrderDetailsCreateModel> orderDetails;

  OrderCreateModel({
    required this.rentalTime,
    this.promotionId,
    required this.isPaid,
    required this.unitPrice,
    required this.deliveryFee,
    required this.deliveryDistance,
    required this.deposit,
    required this.amount,
    this.description,
    required this.orderDetails,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['rentalTime'] = rentalTime.toString();
    data['promotionId'] = promotionId;
    data['isPaid'] = isPaid.toString();
    data['unitPrice'] = unitPrice.toString();
    data['deliveryFee'] = deliveryFee.toString();
    data['deliveryDistance'] = deliveryDistance.toString();
    data['deposit'] = deposit.toString();
    data['amount'] = amount.toString();
    data['description'] = description;
    data['orderDetails'] = orderDetails.map((v) => v.toJson()).toList();
    return data;
  }
}

class OrderDetailsCreateModel {
  String carId;
  bool hasDriver;
  DeliveryLocationCreateModel? deliveryLocation;
  DeliveryLocationCreateModel? pickUpLocation;
  DateTime deliveryTime;
  DateTime pickUpTime;
  DateTime startTime;
  DateTime endTime;

  OrderDetailsCreateModel({
    required this.carId,
    required this.hasDriver,
    this.deliveryLocation,
    this.pickUpLocation,
    required this.deliveryTime,
    required this.pickUpTime,
    required this.startTime,
    required this.endTime,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['carId'] = carId;
    data['hasDriver'] = hasDriver.toString();
    if (deliveryLocation != null) {
      data['deliveryLocation'] = deliveryLocation!.toJson();
    }
    if (pickUpLocation != null) {
      data['pickUpLocation'] = pickUpLocation!.toJson();
    }
    data['deliveryTime'] = deliveryTime.toIso8601String();
    data['pickUpTime'] = pickUpTime.toIso8601String();
    data['startTime'] = startTime.toIso8601String();
    data['endTime'] = endTime.toIso8601String();
    return data;
  }
}

class DeliveryLocationCreateModel {
  double longitude;
  double latitude;

  DeliveryLocationCreateModel({
    required this.longitude,
    required this.latitude,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['longitude'] = longitude.toString();
    data['latitude'] = latitude.toString();
    return data;
  }
}
