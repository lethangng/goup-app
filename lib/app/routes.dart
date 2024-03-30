import 'package:get/get.dart';

import '../views/exam/create_exam_2_screen.dart';
import '../views/exam/create_exam_screen.dart';
// import '../views/exam/input_info_exam_screen.dart';
// import '../views/exam/loading_screen.dart';
import '../views/exam/export_exam_success.dart';
// import '../views/exam/input_info_exam_screen.dart';
import '../views/exam/search_result_view.dart';
import '../views/exam/search_view_screen.dart';
import '../views/exam/view_exam_screen.dart';
import '../views/login_view/accuracy_otp_screen.dart';
import '../views/login_view/forgot_password_screen.dart';
import '../views/login_view/new_password_screen.dart';
import '../views/login_view/register_2_screen.dart';
import '../views/login_view/register_screen.dart';
import '../views/login_view/signup_screen.dart';
import '../views/login_view/splash_screen.dart';
import '../views/tab_view/exam_result_screen.dart';
import '../views/tab_view/main_wrapper.dart';
import '../views/tab_view/result_screen.dart';

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
  static const exportExamSusscess = '/export-exam-susscess';
  static const searchView = '/search-view';
  static const resultSearch = '/result-search';
  static const createExam2 = '/create-exam-2';

  static final routes = [
    GetPage(name: splashScreen, page: () => Resgiter2Screen()),
    GetPage(name: splashScreen, page: () => SplashScreen()),
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
    GetPage(name: exportExamSusscess, page: () => const ExportExamSusscess()),
    GetPage(name: searchView, page: () => SearchViewScreen()),
    GetPage(name: resultSearch, page: () => SearchResultView()),
    GetPage(name: createExam2, page: () => const CreateExam2Screen()),
  ];
}
