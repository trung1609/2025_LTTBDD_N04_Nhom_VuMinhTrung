// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localization.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appTitle => 'Ứng dụng Trò chuyện';

  @override
  String get welcomeTitle => 'Chào mừng bạn đến với ứng dụng trò chuyện tự do';

  @override
  String get welcomeSubtitle =>
      'Tự do nói chuyện với bất kỳ ai bằng ngôn ngữ của bạn';

  @override
  String get skip => 'Bỏ qua';

  @override
  String get report => 'Báo cáo';

  @override
  String get chats => 'Trò chuyện';

  @override
  String get people => 'Mọi người';

  @override
  String get calls => 'Cuộc gọi';

  @override
  String get profile => 'Hồ sơ';

  @override
  String get changeTheme => 'Chuyển chế độ sáng/tối';

  @override
  String get changeLanguage => 'Thay đổi ngôn ngữ';

  @override
  String get signin => 'Đăng nhập';

  @override
  String get signup => 'Đăng ký';

  @override
  String get recentMessage => 'Tin nhắn gần đây';

  @override
  String get active => 'Hoạt động';

  @override
  String get homeDrawer => 'T R A N G  C H Ủ';

  @override
  String get peopleDrawer => 'M Ọ I  N G Ư Ờ I';

  @override
  String get callsDrawer => 'C U Ộ C  G Ọ I';

  @override
  String get profileDrawer => 'T H Ô N G  T I N';

  @override
  String get logout => 'Đ Ă N G  X U Ấ T';

  @override
  String get active3mago => 'Hoạt động 3 phút trước';

  @override
  String get typeMessage => 'Nhập tin nhắn';

  @override
  String get nameProfile => 'Tên: Vũ Minh Trung';

  @override
  String get classProfile => 'Lớp: Lập trình thiết bị di động_N04';

  @override
  String get member => 'Thành viên: 1 thành viên';

  @override
  String get studentCode => 'Mã sinh viên';

  @override
  String get phone => 'Số điện thoại';

  @override
  String get aboutMe => 'Thông tin về dự án của tôi và nhóm của tôi';

  @override
  String get detailAboutMe =>
      'Đây là một dự án Flutter về ứng dụng nhắn tin hiện đại với giao diện tinh gọn và thân thiện.\nỨng dụng bao gồm chức năng xác thực người dùng với các màn hình Đăng nhập và Đăng ký.\nTrang chào mừng giới thiệu cho người dùng về mục đích của ứng dụng.\nMàn hình danh sách trò chuyện hiển thị các cuộc hội thoại gần đây và đang hoạt động.\nNgười dùng có thể gửi tin nhắn văn bản, tin nhắn thoại, hình ảnh và video.\nỨng dụng còn cho phép người dùng theo dõi được nhật ký cuộc gọi và 1 vài chức năng khác\nTất cả các thành phần giao diện đều có độ tương thích cao và được thiết kế đồng nhất.\nToàn bộ dự án này do chính tôi phát triển.';

  @override
  String get justNow => 'Vừa xong';

  @override
  String minutesAgo(Object count) {
    return '$count phút trước';
  }

  @override
  String hoursAgo(Object count) {
    return 'khoảng $count giờ trước';
  }

  @override
  String daysAgo(Object count) {
    return '$count ngày trước';
  }

  @override
  String get comeBack => 'Quay lại';

  @override
  String get all => 'Tất cả';

  @override
  String get missed => 'Bị lỡ';

  @override
  String get outgoing => 'cuộc gọi đi';

  @override
  String get incoming => 'cuộc gọi đến';

  @override
  String get missedDetail => 'cuộc gọi bị lỡ';

  @override
  String get callBack => 'Gọi lại';

  @override
  String get sendMessage => 'Gửi tin nhắn';

  @override
  String get addContact => 'Thêm liên hệ mới';

  @override
  String get delete => 'Xóa';

  @override
  String get addPeople => 'Thêm moi người gần đây';

  @override
  String get addContacts => 'Thêm liên hệ có sẵn';

  @override
  String get cancel => 'Hủy';

  @override
  String get newContact => 'Liên hệ mới';

  @override
  String get create => 'Tạo';

  @override
  String get firstName => 'Họ';

  @override
  String get lastName => 'Tên';

  @override
  String get mobile => 'Di động';

  @override
  String get addPhone => 'Thêm điện thoại mới';

  @override
  String get online => 'đang trực tuyến';

  @override
  String get lastSeenRecently => 'vừa mới truy cập';

  @override
  String lastSeenMinutesAgo(Object count) {
    return 'truy cập $count phút trước';
  }

  @override
  String lastSeenHourAgo(Object count) {
    return 'truy cập $count giờ trước';
  }

  @override
  String lastSeenHoursAgo(Object count) {
    return 'truy cập $count giờ trước';
  }

  @override
  String get password => 'Mật khẩu';

  @override
  String get resetPassword => 'Đặt lại mật khẩu';

  @override
  String get forgotPassWord => 'Quên mật khẩu?';

  @override
  String get dontHaveAccount => 'Chưa có tài khoản? Đăng ký ngay';

  @override
  String get alreadyHaveAccount => 'Đã có tài khoản? Đăng nhập ngay';

  @override
  String get enterEmail => 'Nhập email của bạn';

  @override
  String get sendResetEmail => 'Đặt lại mật khẩu';

  @override
  String get verifyMessage =>
      'Một email xác nhận đã được gửi đến địa chỉ email của bạn.\nVui lòng kiểm tra hộp thư của bạn và xác thực email của bạn.';

  @override
  String get verified => 'Tôi đã xác nhận';

  @override
  String get resendEmail => 'Gửi lại email xác nhận';

  @override
  String get verifiedEmail => 'Xác nhận email';

  @override
  String get emailInvalid => 'Vui lòng nhập một địa chỉ email hợp lệ';

  @override
  String get passwordTooShort => 'Mật khẩu phải có ít nhất 8 ký tự';

  @override
  String get passwordMissingUppercase =>
      'Mật khẩu phải chứa ít nhất một chữ hoa';

  @override
  String get passwordMissingLowercase =>
      'Mật khẩu phải chứa ít nhất một chữ thường';

  @override
  String get passwordMissingDigit => 'Mật khẩu phải chứa ít nhất một con số';

  @override
  String get passwordMissingSpecial =>
      'Mật khẩu phải chứa ít nhất một ký tự đặc biệt';

  @override
  String get fillAllFields => 'Vui lòng điền đầy đủ thông tin';

  @override
  String get emailInUse => 'Địa chỉ email này đã được sử dụng';

  @override
  String get userNotFound => 'Không tìm thấy người dùng với email này';

  @override
  String get wrongPassword => 'Mật khẩu không chính xác';

  @override
  String get loginFailed =>
      'Đăng nhập thất bại. Vui lòng kiểm tra lại thông tin';

  @override
  String get somethingWentWrong => 'Đã có lỗi xảy ra, vui lòng thử lại';

  @override
  String get verificationEmailSent =>
      'Email xác thực đã được gửi! Vui lòng kiểm tra hòm thư';

  @override
  String get resetEmailSent =>
      'Email đặt lại mật khẩu đã được gửi! Vui lòng kiểm tra hòm thư';

  @override
  String get resetEmailFailed => 'Lỗi khi gửi email đặt lại mật khẩu';
}
