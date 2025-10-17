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
      'Đây là một dự án Flutter về ứng dụng nhắn tin hiện đại với giao diện tinh gọn và thân thiện.\nỨng dụng bao gồm chức năng xác thực người dùng với các màn hình Đăng nhập và Đăng ký.\nTrang chào mừng giới thiệu cho người dùng về mục đích của ứng dụng.\nMàn hình danh sách trò chuyện hiển thị các cuộc hội thoại gần đây và đang hoạt động.\nNgười dùng có thể gửi tin nhắn văn bản, tin nhắn thoại, hình ảnh và video.\nMàn hình trò chuyện hỗ trợ chỉ báo trạng thái tin nhắn và xem trước các tệp đa phương tiện.\nTất cả các thành phần giao diện đều có độ tương thích cao và được thiết kế đồng nhất.\nToàn bộ dự án này do chính tôi phát triển.';

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
}
