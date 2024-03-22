import 'package:get/get.dart';

import '../views/exam/create_exam_screen.dart';
// import '../views/exam/input_info_exam_screen.dart';
// import '../views/exam/loading_screen.dart';
import '../views/exam/view_exam_screen.dart';
import '../views/login_view/accuracy_otp_screen.dart';
import '../views/login_view/forgot_password_screen.dart';
import '../views/login_view/new_password_screen.dart';
import '../views/login_view/register_screen.dart';
import '../views/login_view/signup_screen.dart';
// import '../views/login_view/splash_screen.dart';
import '../views/tab_view/exam_result_screen.dart';
import '../views/tab_view/main_wrapper.dart';
import '../views/tab_view/result_screen.dart';
import '../views/test_2.dart';

class Routes {
  static const splashScreen = '/';
  static const home = '/home';
  static const register = '/register';
  static const signup = '/signup';
  static const forgotPassword = '/forgot_password';
  static const accuracyOTP = '/accuracyOTP';
  static const newPassword = '/newPassword';
  static const examResult = '/examResult';
  static const result = '/result';
  static const create = '/create';
  static const viewExam = '/view-exam';
  static const loading = '/loading';
  static const inputInfoExam = '/input-info-exam';

  static final routes = [
    GetPage(name: splashScreen, page: () => const Test2()),
    // GetPage(name: splashScreen, page: () => ViewExamScreen()),
    // GetPage(name: splashScreen, page: () => SplashScreen()),
    GetPage(name: home, page: () => MainWrapper()),
    GetPage(name: create, page: () => CreateExamScreen()),
    GetPage(name: register, page: () => RegisterScreen()),
    GetPage(name: signup, page: () => SignUpScreen()),
    GetPage(name: forgotPassword, page: () => ForgotPasswordScreen()),
    GetPage(name: accuracyOTP, page: () => AccuracyOTPScreen()),
    GetPage(name: newPassword, page: () => NewPasswordScreen()),
    GetPage(name: examResult, page: () => const ExamResultScreen()),
    GetPage(name: result, page: () => const ResultScreen()),
    GetPage(name: viewExam, page: () => ViewExamScreen()),
  ];
}
