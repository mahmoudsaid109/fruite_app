// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome to `
  String get welcome {
    return Intl.message(
      'Welcome to ',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Discover a unique shopping experience with FruitHUB. Explore our wide selection of premium fresh fruits and enjoy the best deals and top quality.`
  String get discoverAppTitle1 {
    return Intl.message(
      'Discover a unique shopping experience with FruitHUB. Explore our wide selection of premium fresh fruits and enjoy the best deals and top quality.',
      name: 'discoverAppTitle1',
      desc: '',
      args: [],
    );
  }

  /// `We offer you the finest carefully selected fruits. Check out the details, photos, and reviews to make sure you choose the perfect fruit.`
  String get discoverAppTitle2 {
    return Intl.message(
      'We offer you the finest carefully selected fruits. Check out the details, photos, and reviews to make sure you choose the perfect fruit.',
      name: 'discoverAppTitle2',
      desc: '',
      args: [],
    );
  }

  /// `Search and Shop`
  String get searcAndShop {
    return Intl.message(
      'Search and Shop',
      name: 'searcAndShop',
      desc: '',
      args: [],
    );
  }

  /// `Start Now`
  String get startNow {
    return Intl.message(
      'Start Now',
      name: 'startNow',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `New Account`
  String get register {
    return Intl.message(
      'New Account',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullName {
    return Intl.message(
      'Full Name',
      name: 'fullName',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get dontHaveAnAccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'dontHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get createAccount {
    return Intl.message(
      'Create Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or {
    return Intl.message(
      'Or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Login with Google`
  String get loginWithGoogle {
    return Intl.message(
      'Login with Google',
      name: 'loginWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Login with Apple`
  String get loginWithApple {
    return Intl.message(
      'Login with Apple',
      name: 'loginWithApple',
      desc: '',
      args: [],
    );
  }

  /// `Login with Facebook`
  String get loginWithFacebook {
    return Intl.message(
      'Login with Facebook',
      name: 'loginWithFacebook',
      desc: '',
      args: [],
    );
  }

  /// `By creating an account, you agree to`
  String get byCreatingAccount {
    return Intl.message(
      'By creating an account, you agree to',
      name: 'byCreatingAccount',
      desc: '',
      args: [],
    );
  }

  /// `our Terms and Conditions`
  String get ourTermsAndConditions {
    return Intl.message(
      'our Terms and Conditions',
      name: 'ourTermsAndConditions',
      desc: '',
      args: [],
    );
  }

  /// `Create New Account`
  String get createNewAccount {
    return Intl.message(
      'Create New Account',
      name: 'createNewAccount',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get haveAnAccount {
    return Intl.message(
      'Already have an account?',
      name: 'haveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `This field is required`
  String get fieldRequired {
    return Intl.message(
      'This field is required',
      name: 'fieldRequired',
      desc: '',
      args: [],
    );
  }

  /// `The password you provided is too weak`
  String get passwordIsTooWeak {
    return Intl.message(
      'The password you provided is too weak',
      name: 'passwordIsTooWeak',
      desc: '',
      args: [],
    );
  }

  /// `Please accept the terms and conditions`
  String get pleaseAcceptTerms {
    return Intl.message(
      'Please accept the terms and conditions',
      name: 'pleaseAcceptTerms',
      desc: '',
      args: [],
    );
  }

  /// `Good Morning !..`
  String get goodMorning {
    return Intl.message(
      'Good Morning !..',
      name: 'goodMorning',
      desc: '',
      args: [],
    );
  }

  /// `Search for......`
  String get searchFor {
    return Intl.message(
      'Search for......',
      name: 'searchFor',
      desc: '',
      args: [],
    );
  }

  /// `Shop Now`
  String get shoppingNow {
    return Intl.message(
      'Shop Now',
      name: 'shoppingNow',
      desc: '',
      args: [],
    );
  }

  /// `Eid Offers`
  String get eidOffers {
    return Intl.message(
      'Eid Offers',
      name: 'eidOffers',
      desc: '',
      args: [],
    );
  }

  /// `25% Discount`
  String get discount25 {
    return Intl.message(
      '25% Discount',
      name: 'discount25',
      desc: '',
      args: [],
    );
  }

  /// `Best Selling`
  String get bestSelling {
    return Intl.message(
      'Best Selling',
      name: 'bestSelling',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get more {
    return Intl.message(
      'More',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `Pound`
  String get pound {
    return Intl.message(
      'Pound',
      name: 'pound',
      desc: '',
      args: [],
    );
  }

  /// `Kilo`
  String get kilo {
    return Intl.message(
      'Kilo',
      name: 'kilo',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Shopping Cart`
  String get cart {
    return Intl.message(
      'Shopping Cart',
      name: 'cart',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Products`
  String get products {
    return Intl.message(
      'Products',
      name: 'products',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
