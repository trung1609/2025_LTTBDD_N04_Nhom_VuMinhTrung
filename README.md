# 💬 Ứng Dụng Chat - Chat Application


## 📋 Thông Tin Dự Án

**Đề tài:** Xây dựng ứng dụng Chat

---

## 👨‍🎓 Thông Tin Sinh Viên

| STT | Họ và Tên | MSSV | Vai trò | Email |
|-----|-----------|------|---------|-------|
| 1 | Vũ Minh Trung | 23010361 | Trưởng nhóm | [Email liên hệ] |

**Giảng viên hướng dẫn:** Thầy Nguyễn Xuân Quế

---

## 📝 Mô Tả Dự Án

Ứng dụng chat đa nền tảng được xây dựng bằng Flutter và Firebase, cung cấp các tính năng giao tiếp và trao đổi thông tin trực tuyến hiện đại.

### ✨ Tính Năng Chính

#### 🔐 Xác Thực & Bảo Mật
- ✅ Đăng ký tài khoản mới với email/mật khẩu
- ✅ Đăng nhập an toàn
- ✅ Xác thực email
- ✅ Đặt lại mật khẩu
- ✅ Đăng xuất

#### 💬 Giao Tiếp
- ✅ Danh sách cuộc trò chuyện
- ✅ Giao diện chi tiết tin nhắn (văn bản, hình ảnh, âm thanh)
- ✅ Danh bạ người dùng với trạng thái online/offline
- ✅ Lịch sử cuộc gọi (tất cả/nhỡ)

#### 🎨 Tùy Chỉnh
- ✅ Chế độ sáng/tối (Light/Dark Mode)
- ✅ Đa ngôn ngữ (Tiếng Việt/English)
- ✅ Giao diện thân thiện, hiện đại

---

## 🛠️ Công Nghệ Sử Dụng

### Frontend
- **Flutter** - Framework phát triển đa nền tảng
- **Dart** - Ngôn ngữ lập trình chính

### Backend & Services
- **Firebase Authentication** - Xác thực người dùng
- **Cloud Firestore** - Cơ sở dữ liệu NoSQL
- **Firebase Storage** - Lưu trữ file/media
- **Firebase Cloud Messaging (FCM)** - Thông báo đẩy

### Tools & IDE
- **Android Studio / Visual Studio Code** - Môi trường phát triển
- **Git & GitHub** - Quản lý phiên bản

---

## 📦 Cài Đặt & Chạy Dự Án

### Yêu Cầu Hệ Thống

- Flutter SDK >= 3.0.0
- Dart SDK >= 3.0.0
- Android Studio / Xcode (cho iOS)
- Git

### Các Bước Cài Đặt

#### 1. Clone Repository

```bash
git clone https://github.com/trung1609/2025_LTTBDD_N04_Nhom_VuMinhTrung.git
cd 2025_LTTBDD_N04_Nhom_VuMinhTrung
```

#### 2. Kiểm Tra Flutter

```bash
flutter doctor
```

Đảm bảo tất cả các thành phần cần thiết đã được cài đặt.

#### 3. Cài Đặt Dependencies

```bash
flutter pub get
```

#### 4. Cấu Hình Firebase

**Bước 4.1:** Tạo project Firebase tại [Firebase Console](https://console.firebase.google.com/)

**Bước 4.2:** Thêm Android/iOS app vào project

**Bước 4.3:** Tải file cấu hình:
- Android: `google-services.json` → Đặt vào `android/app/`
- iOS: `GoogleService-Info.plist` → Đặt vào `ios/Runner/`

**Bước 4.4:** Kích hoạt các dịch vụ Firebase:
- Authentication (Email/Password)
- Cloud Firestore
- Firebase Storage
- Cloud Messaging

#### 5. Chạy Ứng Dụng

**Trên Android:**
```bash
flutter run
```

**Trên iOS (macOS only):**
```bash
flutter run -d ios
```

**Trên Web:**
```bash
flutter run -d chrome
```

---

## 📁 Cấu Trúc Thư Mục

```
lib/
├── main.dart                          
├── components/                         
│   ├── drawer.dart                    
│   ├── drawer_wrapper.dart           
│   ├── filled_outline_button.dart     
│   └── primary_button.dart          
├── l10n/                              
│   ├── app_en.arb                   
│   ├── app_vi.arb                    
│   ├── app_localization.dart          
│   └── app_localization_en.dart      
│   └── app_localization_vi.dart      
├── models/                            
│   ├── Calls.dart                     
│   ├── Chat.dart                    
│   ├── chat_message.dart              
│   └── People.dart                    
├── screen/                           
│   ├── auth/                       
│   │   ├── auth_wrapper.dart         
│   │   ├── forgot_password.dart       
│   │   ├── login_screen.dart          
│   │   ├── sign_up.dart               
│   │   └── verify_email.dart          
│   ├── calls/                      
│   │   ├── components/
│   │   │   └── body.dart           
│   │   └── calls_screen.dart          
│   ├── chats/                         
│   │   ├── components/
│   │   │   ├── body.dart            
│   │   │   ├── chat_card.dart       
│   │   │   └── chats_screen.dart      
│   ├── messages/                   
│   │   ├── components/
│   │   │   ├── audio_message.dart
│   │   │   ├── body.dart             
│   │   │   ├── chat_input_field.dart  
│   │   │   ├── message.dart           
│   │   │   ├── text_message.dart  
│   │   │   └── video_message.dart   
│   │   └── messages_screen.dart       
│   ├── people/                        
│   │   ├── components/
│   │   │   └── new_contact.dart  
│   │   └── people_screen.dart       
│   ├── profile/                      
│   │   └── profile_screen.dart        
│   ├── signin_or_signup/              
│   │   └── signin_or_signup_screen.dart
│   └── welcome/                      
│       └── welcome_screen.dart       
└── utils/                             
    ├── time_ago_format.dart          
    ├── constants.dart             
    ├── firebase_options.dart        
    └── themes.dart                  
```

## 🚀 Hướng Phát Triển

### Giai Đoạn Hiện Tại ✅
- [x] Hoàn thiện luồng xác thực
- [x] Xây dựng giao diện đầy đủ
- [x] Tích hợp chế độ sáng/tối
- [x] Hỗ trợ đa ngôn ngữ

### Giai Đoạn Tiếp Theo 🔄
- [ ] Tích hợp Cloud Firestore với dữ liệu thực
- [ ] Triển khai chức năng nhắn tin thời gian thực
- [ ] Cập nhật trạng thái online/offline
- [ ] Tích hợp Firebase Cloud Messaging
- [ ] Gửi/nhận hình ảnh và file
- [ ] Chat nhóm
- [ ] Cuộc gọi thoại/video
- [ ] Tìm kiếm tin nhắn
- [ ] Mã hóa end-to-end

---

## 🐛 Known Issues & Limitations

### Hạn Chế Hiện Tại
1. **Dữ liệu tĩnh:** Sử dụng mock data cho danh sách chat, danh bạ, và cuộc gọi
2. **Chưa có real-time:** Chưa kết nối với Firestore để sync dữ liệu thời gian thực
3. **Chức năng chưa hoàn thiện:** Một số action buttons chưa có logic xử lý
4. **Platform:** Chủ yếu test trên Android

### Khắc Phục
- Đang trong quá trình phát triển các tính năng còn thiếu
- Sẽ được cập nhật trong các phiên bản tiếp theo

---

## 📚 Tài Liệu Tham Khảo

- [Flutter Documentation](https://docs.flutter.dev/)
- [Firebase Documentation](https://firebase.google.com/docs)
- [Dart Documentation](https://dart.dev/guides)
- [Material Design Guidelines](https://m3.material.io/)

---


## 🙏 Lời Cảm Ơn

Xin chân thành cảm ơn **Thầy Nguyễn Xuân Quế** đã tận tình hướng dẫn và truyền đạt kiến thức trong suốt quá trình học tập và thực hiện đề tài này.

---

## 📞 Liên Hệ

- **Student:** Vũ Minh Trung
- **MSSV:** 23010361
- **GitHub:** [trung1609](https://github.com/trung1609)
- **Repository:** [2025_LTTBDD_N04_Nhom_VuMinhTrung](https://github.com/trung1609/2025_LTTBDD_N04_Nhom_VuMinhTrung)

---
