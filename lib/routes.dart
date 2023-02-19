import 'package:flutter/material.dart';
import 'package:united/pages/registration/registration.dart';
import 'package:united/pages/registration/signin/signin_page.dart';
import 'package:united/pages/registration/signup/signup_page.dart';
import 'package:united/pages/registration/signup/signup_interests.dart';
import 'package:united/pages/registration/signup/signup_privacy.dart';

const String registration = '/registration';
const String signin = '/registration/signin';
const String signup = '/registration/signup';
const String singupInterest = '/registration/singup/interests';
const String signupPrivacy = '/registration/signup/privacy';
const String home = '/app/home';
const String discover = '/app/discover';
const String leaderboard = '/app/leaderboard';
const String profile = 'app/profile';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/registration':
      return MaterialPageRoute(builder: (_) => const Registration());
    case '/registration/signin':
      return MaterialPageRoute(builder: (_) => const SignInPage());
    case '/registration/signup':
      return MaterialPageRoute(builder: (_) => const SignUpPage());
    case '/registration/signup/interests':
      return MaterialPageRoute(builder: (_) => const SignUpPageInterests());
    case '/registration/signup/privacy':
      return MaterialPageRoute(builder: (_) => const SignUpPagePrivacy());
    // case '/app/home':
    // return MaterialPageRoute(builder: (_) => const HomePage());
    // case '/app/discover':
    // return MaterialPageRoute(builder: (_) => const DiscoverPage());
    // case '/app/leaderboard':
    // return MaterialPageRoute(builder: (_) => const LeaderboardPage());
    // case '/app/profile':
    // return MaterialPageRoute(builder: (_) => const ProfilePage());
    default:
      return MaterialPageRoute(builder: (_) => const Registration());
  }
}
