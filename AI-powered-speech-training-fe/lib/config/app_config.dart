/// Cấu hình API endpoint cho từng môi trường
///
/// Có thể override bằng `--dart-define=API_BASE_URL=<url>/api`:
/// - Local            : http://localhost:3000/api
/// - Emulator Android : http://10.0.2.2:3000/api
/// - Device vật lý   : http://192.168.1.5:3000/api (thay bằng IP máy tính)
class AppConfig {
  static const String baseUrl = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: 'https://prm-app-kx3v.onrender.com/api',
  );

  // Timeout mặc định cho HTTP requests
  static const Duration requestTimeout = Duration(seconds: 15);
}
