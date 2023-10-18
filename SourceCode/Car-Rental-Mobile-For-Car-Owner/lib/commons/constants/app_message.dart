mixin AppMessages {
  static const String unknown = 'Lỗi không xác định';
  static const String orderNotFound = 'Không tìm thấy đơn hàng';
  static const String transactionNotFound = 'Không tìm thấy giao dịch';
  static const String error = 'Lỗi';
  static const String startTimeMustBeBeforeEndTime =
      'Thời gian bắt đầu phải trước thời gian kết thúc';
  static const String endTimeMustBeAfterStartTime =
      'Thời gian kết thúc phải sau thời gian bắt đầu';
  static const String updateStatusFailed = 'Cập nhật trạng thái thất bại';
  static const String paymentSuccess = 'Nạp tiền thành công';
  static const String paymentSuccessMessage = 'Bạn đã nạp tiền thành công';
  static const String payment = 'Nạp tiền';
  static const String updateSuccess = 'Cập nhật thành công';
  static const String updateFailed = 'Cập nhật thất bại';
  static const String occurredErrorMessage = 'Có lỗi xảy ra, vui lòng thử lại';
  static const String notify = 'Thông báo';
  static const String createFormSuccess = 'Tạo phiếu đăng kí thành công';
  static const String usernameOrPasswordIncorrect =
      'Tên đăng nhập hoặc mật khẩu không chính xác';
  static const String carNotFound = 'Không tìm thấy xe';
  static const String userNotFound = 'Không tìm thấy người dùng';
  // message for Vui lòng nhập hãng xe
  static const String pleaseEnterCarBrand = 'Vui lòng nhập hãng xe';
  // message for Vui lòng nhập tên xe
  static const String pleaseEnterCarName = 'Vui lòng nhập tên xe';
  // message for Vui lòng nhập biển số xe
  static const String pleaseEnterCarLicensePlate = 'Vui lòng nhập biển số xe';
  // message for Biển số xe không hợp lệ
  static const String invalidCarLicensePlate = 'Biển số xe không hợp lệ';
  // message for Vui long nhập nắm sản xuất
  static const String pleaseEnterCarYearOfManufacture =
      'Vui lòng nhập năm sản xuất';
  // message for Vui lòng nhập số chỗ ngồi
  static const String pleaseEnterCarNumberOfSeats = 'Vui lòng nhập số chỗ ngồi';
  // message for Vui lòng nhập mức tiêu thụ xăng dầu
  static const String pleaseEnterCarFuelConsumption =
      'Vui lòng nhập mức tiêu thụ xăng dầu';
  // message for Vui long nhập vị trí
  static const String pleaseEnterCarLocation = 'Vui lòng nhập vị trí';
  // message for Vui lòng nhập giá thuê
  static const String pleaseEnterCarPrice = 'Vui lòng nhập giá thuê';
  // message for Vui lòng nhập giới hạn quãng đường
  static const String pleaseEnterCarLimitDistance =
      'Vui lòng nhập giới hạn quãng đường';
  // message for Vui lòng nhập phụ phí vượt quãng đường
  static const String pleaseEnterCarOverLimitDistanceFee =
      'Vui lòng nhập phụ phí vượt quãng đường';
  // message for Vui lòng nhập phụ phí vượt quá giờ
  static const String pleaseEnterCarOverTimeFee =
      'Vui lòng nhập phụ phí vượt quá giờ';
}
