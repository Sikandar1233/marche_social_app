import 'package:get/get.dart';
import 'package:marche_social_app/view/screens/auth/login/login.dart';
import 'package:marche_social_app/view/screens/auth/login/login_otp_verification_code.dart';
import 'package:marche_social_app/view/screens/auth/login/login_phone_otp.dart';
import 'package:marche_social_app/view/screens/auth/login/login_with-phone_number.dart';
import 'package:marche_social_app/view/screens/auth/register/language_option.dart';
import 'package:marche_social_app/view/screens/auth/register/otp.dart';
import 'package:marche_social_app/view/screens/auth/register/otp_code_verification.dart';
import 'package:marche_social_app/view/screens/auth/register/register_with_phone-number.dart';
import 'package:marche_social_app/view/screens/auth/register/registeration_options.dart';
import 'package:marche_social_app/view/screens/auth/register/signUp.dart';
import 'package:marche_social_app/view/screens/home/home.dart';
import 'package:marche_social_app/view/screens/launch/splash_screen.dart';

class AppRoutes {
  static final List<GetPage> pages = [
    GetPage(
      name: AppLinks.splash_screen,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: AppLinks.user_registration_options_screen,
      page: () => UserRegistrationOptionsScreen(),
    ),
    GetPage(
      name: AppLinks.signup_screen,
      page: () =>SignUpScreen(),
    ),
    GetPage(
      name: AppLinks.phone_number_screen,
      page: () =>PhoneNumberScreen(),
    ),
    GetPage(
      name: AppLinks.otp_screen,
      page: () =>OtpScreen(),
    ),
    GetPage(
      name: AppLinks.otp_screen,
      page: () =>OtpCodeverficationScreen(),
    ),
    GetPage(
      name: AppLinks.otp_screen,
      page: () =>LanguageScreen(),
    ),
    GetPage(
      name: AppLinks.login_screen,
      page: () =>LoginScreen(),
    ),
    GetPage(
      name: AppLinks.login_with_phone_num_screen,
      page: () =>LoginwithPhoneNumberScreen(),
    ),
    GetPage(
      name: AppLinks.login_phone_otp_screen,
      page: () =>LoginOtpScreen(),
    ),
    GetPage(
      name: AppLinks.login_otp_verification_code_screen,
      page: () =>LoginOtpCodeverficationScreen(),
    ),
    GetPage(
      name: AppLinks.login_otp_verification_code_screen,
      page: () => HomeScreen(),
    ),


  ];
}

class AppLinks {
  static const splash_screen = '/splash_screen';
  // user registration links

  static const user_registration_options_screen ='/registration_options_screen';
  static const signup_screen ='/signup_screen';
  static const phone_number_screen = '/phone_number_screen';
  static const otp_screen = '/otp_screen';
  static const otp_code_verification_screen = '/otp_code_verification_screen';
  static const language_selection_screen = '/language_selection_screen';
  // user login links

  static const login_screen ='/login_screen';
  static const login_with_phone_num_screen ='/login_with_pho_num_screen';
  static const login_phone_otp_screen = '/login_phone_otp_screen';
  static const login_otp_verification_code_screen ='/login_otp_verification_code_screen';

  // home links
  static const home_screen ='/home_screen';


}
