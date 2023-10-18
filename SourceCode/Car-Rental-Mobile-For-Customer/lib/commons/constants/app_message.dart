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
  static const String occurredErrorWhenCreateOrder =
      'Xảy ra lỗi trong quá trình đặt xe';
  static const String orderIsPending = 'Bạn có đơn hàng đang chờ duyệt';
  static const String notEnoughMoney = 'Bạn không đủ tiền để đặt xe';
  static const String missingRequiredField = 'Vui lòng nhập đầy đủ thông tin';
  static const String success = 'Thành công';
  static const String failed = 'Thất bại';
  static const String thankYouForYourFeedback = 'Cảm ơn bạn đã gửi phản hồi';
  static const String updateDriverLicense =
      'Bạn phải cập nhật giấy phép lái xe mới có thể thuê xe không tài xế';
  static const String paymentFailed = 'Nạp tiền thất bại';
  static const String paymentFailedMessage = 'Bạn đã nạp tiền thất bại';
}
