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

  /// `STARIFLY`
  String get appTitle {
    return Intl.message(
      'STARIFLY',
      name: 'appTitle',
      desc: '',
      args: [],
    );
  }

  /// `Login STARIFLY`
  String get loginAppBarTitle {
    return Intl.message(
      'Login STARIFLY',
      name: 'loginAppBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Setting`
  String get profileMenuTitle {
    return Intl.message(
      'Setting',
      name: 'profileMenuTitle',
      desc: '',
      args: [],
    );
  }

  /// `App Language`
  String get pmAppLanguageTitle {
    return Intl.message(
      'App Language',
      name: 'pmAppLanguageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Please choose your language`
  String get pmAppLanguageBodyText {
    return Intl.message(
      'Please choose your language',
      name: 'pmAppLanguageBodyText',
      desc: '',
      args: [],
    );
  }

  /// `Traditional Chinese`
  String get chineseLanguage {
    return Intl.message(
      'Traditional Chinese',
      name: 'chineseLanguage',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get englishLanguage {
    return Intl.message(
      'English',
      name: 'englishLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Suggest a language`
  String get suggestLanguageText {
    return Intl.message(
      'Suggest a language',
      name: 'suggestLanguageText',
      desc: '',
      args: [],
    );
  }

  /// `What is the next language to be supported?`
  String get suggestLanguageBody {
    return Intl.message(
      'What is the next language to be supported?',
      name: 'suggestLanguageBody',
      desc: '',
      args: [],
    );
  }

  /// `Type your suggestion...`
  String get suggestLanguageHint {
    return Intl.message(
      'Type your suggestion...',
      name: 'suggestLanguageHint',
      desc: '',
      args: [],
    );
  }

  /// `Display Mode`
  String get pmThemeModeTitle {
    return Intl.message(
      'Display Mode',
      name: 'pmThemeModeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Select your favourite display mode`
  String get pmThemeModeBodyText {
    return Intl.message(
      'Select your favourite display mode',
      name: 'pmThemeModeBodyText',
      desc: '',
      args: [],
    );
  }

  /// `Select your favourite font style`
  String get pmFontFamilyBodyText {
    return Intl.message(
      'Select your favourite font style',
      name: 'pmFontFamilyBodyText',
      desc: '',
      args: [],
    );
  }

  /// `Default Font`
  String get defaultfont {
    return Intl.message(
      'Default Font',
      name: 'defaultfont',
      desc: '',
      args: [],
    );
  }

  /// `Smooth Font`
  String get roundfont {
    return Intl.message(
      'Smooth Font',
      name: 'roundfont',
      desc: '',
      args: [],
    );
  }

  /// `Light Mode`
  String get displayModeLight {
    return Intl.message(
      'Light Mode',
      name: 'displayModeLight',
      desc: '',
      args: [],
    );
  }

  /// `Dark Mode`
  String get displayModeDark {
    return Intl.message(
      'Dark Mode',
      name: 'displayModeDark',
      desc: '',
      args: [],
    );
  }

  /// `System Preference`
  String get displayModeSystem {
    return Intl.message(
      'System Preference',
      name: 'displayModeSystem',
      desc: '',
      args: [],
    );
  }

  /// `Account Security`
  String get pmsecurity {
    return Intl.message(
      'Account Security',
      name: 'pmsecurity',
      desc: '',
      args: [],
    );
  }

  /// `Set to Public Account`
  String get privateac {
    return Intl.message(
      'Set to Public Account',
      name: 'privateac',
      desc: '',
      args: [],
    );
  }

  /// `Changed To Private Account`
  String get changetoprivate {
    return Intl.message(
      'Changed To Private Account',
      name: 'changetoprivate',
      desc: '',
      args: [],
    );
  }

  /// `Changed To Public Account`
  String get changetoopen {
    return Intl.message(
      'Changed To Public Account',
      name: 'changetoopen',
      desc: '',
      args: [],
    );
  }

  /// `Blacklisted Users`
  String get blacklisteduser {
    return Intl.message(
      'Blacklisted Users',
      name: 'blacklisteduser',
      desc: '',
      args: [],
    );
  }

  /// `Blacklisted for {days}`
  String blacklistedfor(Object days) {
    return Intl.message(
      'Blacklisted for $days',
      name: 'blacklistedfor',
      desc: '',
      args: [days],
    );
  }

  /// `No User Has Been Blacklisted Yet`
  String get notblacklistuseryet {
    return Intl.message(
      'No User Has Been Blacklisted Yet',
      name: 'notblacklistuseryet',
      desc: '',
      args: [],
    );
  }

  /// `Unblock`
  String get unblockuser {
    return Intl.message(
      'Unblock',
      name: 'unblockuser',
      desc: '',
      args: [],
    );
  }

  /// `App Setting`
  String get pmAppSetting {
    return Intl.message(
      'App Setting',
      name: 'pmAppSetting',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get pmAppAccount {
    return Intl.message(
      'Account',
      name: 'pmAppAccount',
      desc: '',
      args: [],
    );
  }

  /// `Help`
  String get pmAppHelp {
    return Intl.message(
      'Help',
      name: 'pmAppHelp',
      desc: '',
      args: [],
    );
  }

  /// `Edit Your Profile`
  String get pmProfile {
    return Intl.message(
      'Edit Your Profile',
      name: 'pmProfile',
      desc: '',
      args: [],
    );
  }

  /// `Edit Financial Setting`
  String get pmFinance {
    return Intl.message(
      'Edit Financial Setting',
      name: 'pmFinance',
      desc: '',
      args: [],
    );
  }

  /// `Submit For Approval`
  String get submitfinance {
    return Intl.message(
      'Submit For Approval',
      name: 'submitfinance',
      desc: '',
      args: [],
    );
  }

  /// `Submitted`
  String get submitted {
    return Intl.message(
      'Submitted',
      name: 'submitted',
      desc: '',
      args: [],
    );
  }

  /// `We have receive your application. Please wait for review.`
  String get submittedfinance {
    return Intl.message(
      'We have receive your application. Please wait for review.',
      name: 'submittedfinance',
      desc: '',
      args: [],
    );
  }

  /// `Edit Privacy`
  String get pmPrivacy {
    return Intl.message(
      'Edit Privacy',
      name: 'pmPrivacy',
      desc: '',
      args: [],
    );
  }

  /// `Terms of Use`
  String get pmTerm {
    return Intl.message(
      'Terms of Use',
      name: 'pmTerm',
      desc: '',
      args: [],
    );
  }

  /// `Joined: {joindate}`
  String pmJoinDate(Object joindate) {
    return Intl.message(
      'Joined: $joindate',
      name: 'pmJoinDate',
      desc: '',
      args: [joindate],
    );
  }

  /// `Edit Profile`
  String get editProfileTitle {
    return Intl.message(
      'Edit Profile',
      name: 'editProfileTitle',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get pmLogout {
    return Intl.message(
      'Logout',
      name: 'pmLogout',
      desc: '',
      args: [],
    );
  }

  /// `Welcome Back`
  String get authloginwelcome {
    return Intl.message(
      'Welcome Back',
      name: 'authloginwelcome',
      desc: '',
      args: [],
    );
  }

  /// `Login to share and learn!`
  String get authloginbody {
    return Intl.message(
      'Login to share and learn!',
      name: 'authloginbody',
      desc: '',
      args: [],
    );
  }

  /// `Enter Email`
  String get alemail {
    return Intl.message(
      'Enter Email',
      name: 'alemail',
      desc: '',
      args: [],
    );
  }

  /// `Enter Password`
  String get alpw {
    return Intl.message(
      'Enter Password',
      name: 'alpw',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get alforgot {
    return Intl.message(
      'Forgot Password?',
      name: 'alforgot',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get alconfirm {
    return Intl.message(
      'Login',
      name: 'alconfirm',
      desc: '',
      args: [],
    );
  }

  /// `Need an account? `
  String get alnoactext {
    return Intl.message(
      'Need an account? ',
      name: 'alnoactext',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get algoreg {
    return Intl.message(
      'Register',
      name: 'algoreg',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get forgotpw {
    return Intl.message(
      'Forgot Password',
      name: 'forgotpw',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get arappbartitle {
    return Intl.message(
      'Register',
      name: 'arappbartitle',
      desc: '',
      args: [],
    );
  }

  /// `Register Now`
  String get artitle {
    return Intl.message(
      'Register Now',
      name: 'artitle',
      desc: '',
      args: [],
    );
  }

  /// `Sign up to learn from the best creators`
  String get arbody {
    return Intl.message(
      'Sign up to learn from the best creators',
      name: 'arbody',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get arpwconfirm {
    return Intl.message(
      'Confirm Password',
      name: 'arpwconfirm',
      desc: '',
      args: [],
    );
  }

  /// `Next Step`
  String get nextstep {
    return Intl.message(
      'Next Step',
      name: 'nextstep',
      desc: '',
      args: [],
    );
  }

  /// `A verification email has been sent to:`
  String get sentconfirmemail {
    return Intl.message(
      'A verification email has been sent to:',
      name: 'sentconfirmemail',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Email`
  String get confirmtitle {
    return Intl.message(
      'Confirm Email',
      name: 'confirmtitle',
      desc: '',
      args: [],
    );
  }

  /// `Please check your mailbox and follow the guidelines`
  String get confirmbody {
    return Intl.message(
      'Please check your mailbox and follow the guidelines',
      name: 'confirmbody',
      desc: '',
      args: [],
    );
  }

  /// `Send me news and promotions from STARIFLY by email.`
  String get updateme {
    return Intl.message(
      'Send me news and promotions from STARIFLY by email.',
      name: 'updateme',
      desc: '',
      args: [],
    );
  }

  /// `I have read and agree to the `
  String get readterm {
    return Intl.message(
      'I have read and agree to the ',
      name: 'readterm',
      desc: '',
      args: [],
    );
  }

  /// `Terms and Private Policy`
  String get policy {
    return Intl.message(
      'Terms and Private Policy',
      name: 'policy',
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

  /// `Open Mailbox`
  String get openmailbox {
    return Intl.message(
      'Open Mailbox',
      name: 'openmailbox',
      desc: '',
      args: [],
    );
  }

  /// `No Mail Apps has been found`
  String get nomailbox {
    return Intl.message(
      'No Mail Apps has been found',
      name: 'nomailbox',
      desc: '',
      args: [],
    );
  }

  /// `Resend`
  String get resend {
    return Intl.message(
      'Resend',
      name: 'resend',
      desc: '',
      args: [],
    );
  }

  /// `New Verification Email has been sent. It may be mis-directed to trash mailbox.`
  String get resendmsg {
    return Intl.message(
      'New Verification Email has been sent. It may be mis-directed to trash mailbox.',
      name: 'resendmsg',
      desc: '',
      args: [],
    );
  }

  /// `Status`
  String get status {
    return Intl.message(
      'Status',
      name: 'status',
      desc: '',
      args: [],
    );
  }

  /// `Pending...`
  String get unconfirmed {
    return Intl.message(
      'Pending...',
      name: 'unconfirmed',
      desc: '',
      args: [],
    );
  }

  /// `Confirmed`
  String get confirmed {
    return Intl.message(
      'Confirmed',
      name: 'confirmed',
      desc: '',
      args: [],
    );
  }

  /// `Auto-update after {seconds} seconds`
  String reconfirm(Object seconds) {
    return Intl.message(
      'Auto-update after $seconds seconds',
      name: 'reconfirm',
      desc: '',
      args: [seconds],
    );
  }

  /// `Sync Account`
  String get syncac {
    return Intl.message(
      'Sync Account',
      name: 'syncac',
      desc: '',
      args: [],
    );
  }

  /// `You have joined the below courses at starifly.hk:`
  String get previouscourse {
    return Intl.message(
      'You have joined the below courses at starifly.hk:',
      name: 'previouscourse',
      desc: '',
      args: [],
    );
  }

  /// `Add to account`
  String get addtoac {
    return Intl.message(
      'Add to account',
      name: 'addtoac',
      desc: '',
      args: [],
    );
  }

  /// `User Account`
  String get ac {
    return Intl.message(
      'User Account',
      name: 'ac',
      desc: '',
      args: [],
    );
  }

  /// `Fill in the information`
  String get fillprofile {
    return Intl.message(
      'Fill in the information',
      name: 'fillprofile',
      desc: '',
      args: [],
    );
  }

  /// `Account Name`
  String get acname {
    return Intl.message(
      'Account Name',
      name: 'acname',
      desc: '',
      args: [],
    );
  }

  /// `Enter account name`
  String get enteracname {
    return Intl.message(
      'Enter account name',
      name: 'enteracname',
      desc: '',
      args: [],
    );
  }

  /// `Fans`
  String get follower {
    return Intl.message(
      'Fans',
      name: 'follower',
      desc: '',
      args: [],
    );
  }

  /// `Following`
  String get following {
    return Intl.message(
      'Following',
      name: 'following',
      desc: '',
      args: [],
    );
  }

  /// `Representing words`
  String get representword {
    return Intl.message(
      'Representing words',
      name: 'representword',
      desc: '',
      args: [],
    );
  }

  /// `Representing sentence`
  String get representsentence {
    return Intl.message(
      'Representing sentence',
      name: 'representsentence',
      desc: '',
      args: [],
    );
  }

  /// `Enter your {social} link`
  String sociallink(Object social) {
    return Intl.message(
      'Enter your $social link',
      name: 'sociallink',
      desc: '',
      args: [social],
    );
  }

  /// `Finish`
  String get finish {
    return Intl.message(
      'Finish',
      name: 'finish',
      desc: '',
      args: [],
    );
  }

  /// `Contact STARIFLY`
  String get contact {
    return Intl.message(
      'Contact STARIFLY',
      name: 'contact',
      desc: '',
      args: [],
    );
  }

  /// `Top Picks`
  String get specialcourse {
    return Intl.message(
      'Top Picks',
      name: 'specialcourse',
      desc: '',
      args: [],
    );
  }

  /// `For You`
  String get special {
    return Intl.message(
      'For You',
      name: 'special',
      desc: '',
      args: [],
    );
  }

  /// `Categories`
  String get category {
    return Intl.message(
      'Categories',
      name: 'category',
      desc: '',
      args: [],
    );
  }

  /// `Hits`
  String get hotcourse {
    return Intl.message(
      'Hits',
      name: 'hotcourse',
      desc: '',
      args: [],
    );
  }

  /// `Courses`
  String get course {
    return Intl.message(
      'Courses',
      name: 'course',
      desc: '',
      args: [],
    );
  }

  /// `Feeds`
  String get feed {
    return Intl.message(
      'Feeds',
      name: 'feed',
      desc: '',
      args: [],
    );
  }

  /// `Trevi Fountain`
  String get wish {
    return Intl.message(
      'Trevi Fountain',
      name: 'wish',
      desc: '',
      args: [],
    );
  }

  /// `Explore`
  String get explore {
    return Intl.message(
      'Explore',
      name: 'explore',
      desc: '',
      args: [],
    );
  }

  /// `Resource`
  String get resource {
    return Intl.message(
      'Resource',
      name: 'resource',
      desc: '',
      args: [],
    );
  }

  /// `Collabs`
  String get jobs {
    return Intl.message(
      'Collabs',
      name: 'jobs',
      desc: '',
      args: [],
    );
  }

  /// `Events`
  String get event {
    return Intl.message(
      'Events',
      name: 'event',
      desc: '',
      args: [],
    );
  }

  /// `Chat`
  String get chat {
    return Intl.message(
      'Chat',
      name: 'chat',
      desc: '',
      args: [],
    );
  }

  /// `{num} Likes`
  String like(Object num) {
    return Intl.message(
      '$num Likes',
      name: 'like',
      desc: '',
      args: [num],
    );
  }

  /// `{num} Pushes`
  String recommend(Object num) {
    return Intl.message(
      '$num Pushes',
      name: 'recommend',
      desc: '',
      args: [num],
    );
  }

  /// `Share`
  String get share {
    return Intl.message(
      'Share',
      name: 'share',
      desc: '',
      args: [],
    );
  }

  /// `Comments({num})`
  String comment(Object num) {
    return Intl.message(
      'Comments($num)',
      name: 'comment',
      desc: '',
      args: [num],
    );
  }

  /// `Editor's Choice`
  String get editchoice {
    return Intl.message(
      'Editor\'s Choice',
      name: 'editchoice',
      desc: '',
      args: [],
    );
  }

  /// `Courses`
  String get tutorial {
    return Intl.message(
      'Courses',
      name: 'tutorial',
      desc: '',
      args: [],
    );
  }

  /// `Record`
  String get record {
    return Intl.message(
      'Record',
      name: 'record',
      desc: '',
      args: [],
    );
  }

  /// `Media`
  String get media {
    return Intl.message(
      'Media',
      name: 'media',
      desc: '',
      args: [],
    );
  }

  /// `{tutor}'s Courses`
  String tutorcourse(Object tutor) {
    return Intl.message(
      '$tutor\'s Courses',
      name: 'tutorcourse',
      desc: '',
      args: [tutor],
    );
  }

  /// `Create Course`
  String get createcourse {
    return Intl.message(
      'Create Course',
      name: 'createcourse',
      desc: '',
      args: [],
    );
  }

  /// `{HH}HH {MM}MM`
  String hhmm(Object HH, Object MM) {
    return Intl.message(
      '${HH}HH ${MM}MM',
      name: 'hhmm',
      desc: '',
      args: [HH, MM],
    );
  }

  /// `{num}Units`
  String unit(Object num) {
    return Intl.message(
      '${num}Units',
      name: 'unit',
      desc: '',
      args: [num],
    );
  }

  /// `{tutor} also joined...`
  String joinedcourse(Object tutor) {
    return Intl.message(
      '$tutor also joined...',
      name: 'joinedcourse',
      desc: '',
      args: [tutor],
    );
  }

  /// `Show more`
  String get showmore {
    return Intl.message(
      'Show more',
      name: 'showmore',
      desc: '',
      args: [],
    );
  }

  /// `My StarCoins`
  String get mycoin {
    return Intl.message(
      'My StarCoins',
      name: 'mycoin',
      desc: '',
      args: [],
    );
  }

  /// `Top up`
  String get topup {
    return Intl.message(
      'Top up',
      name: 'topup',
      desc: '',
      args: [],
    );
  }

  /// `Withdraw`
  String get withdrawal {
    return Intl.message(
      'Withdraw',
      name: 'withdrawal',
      desc: '',
      args: [],
    );
  }

  /// `Earned Coins`
  String get earnedcoin {
    return Intl.message(
      'Earned Coins',
      name: 'earnedcoin',
      desc: '',
      args: [],
    );
  }

  /// `My Statistics`
  String get mydata {
    return Intl.message(
      'My Statistics',
      name: 'mydata',
      desc: '',
      args: [],
    );
  }

  /// `Hits (ACC)`
  String get hitsum {
    return Intl.message(
      'Hits (ACC)',
      name: 'hitsum',
      desc: '',
      args: [],
    );
  }

  /// `Likes (ACC)`
  String get likesum {
    return Intl.message(
      'Likes (ACC)',
      name: 'likesum',
      desc: '',
      args: [],
    );
  }

  /// `Comments (ACC)`
  String get commentsum {
    return Intl.message(
      'Comments (ACC)',
      name: 'commentsum',
      desc: '',
      args: [],
    );
  }

  /// `Course Review Status`
  String get courseapprovestatus {
    return Intl.message(
      'Course Review Status',
      name: 'courseapprovestatus',
      desc: '',
      args: [],
    );
  }

  /// `Need to Sign Up`
  String get webdatatitle {
    return Intl.message(
      'Need to Sign Up',
      name: 'webdatatitle',
      desc: '',
      args: [],
    );
  }

  /// `To provide a better learning experience`
  String get webdatabody1 {
    return Intl.message(
      'To provide a better learning experience',
      name: 'webdatabody1',
      desc: '',
      args: [],
    );
  }

  /// `All starifly.hk users are required to sign-up in STARIFLY app.`
  String get webdatabody2 {
    return Intl.message(
      'All starifly.hk users are required to sign-up in STARIFLY app.',
      name: 'webdatabody2',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Please confirm the input information`
  String get pleasecheck {
    return Intl.message(
      'Please confirm the input information',
      name: 'pleasecheck',
      desc: '',
      args: [],
    );
  }

  /// `Verify Account`
  String get verifyac {
    return Intl.message(
      'Verify Account',
      name: 'verifyac',
      desc: '',
      args: [],
    );
  }

  /// `Select Mailbox`
  String get selectmailbox {
    return Intl.message(
      'Select Mailbox',
      name: 'selectmailbox',
      desc: '',
      args: [],
    );
  }

  /// `Your Email`
  String get acemail {
    return Intl.message(
      'Your Email',
      name: 'acemail',
      desc: '',
      args: [],
    );
  }

  /// `Add Links`
  String get addlink {
    return Intl.message(
      'Add Links',
      name: 'addlink',
      desc: '',
      args: [],
    );
  }

  /// `This link cannot be opened.`
  String get malformLink {
    return Intl.message(
      'This link cannot be opened.',
      name: 'malformLink',
      desc: '',
      args: [],
    );
  }

  /// `Profile Theme`
  String get gradienttheme {
    return Intl.message(
      'Profile Theme',
      name: 'gradienttheme',
      desc: '',
      args: [],
    );
  }

  /// `Default`
  String get defaultcolor {
    return Intl.message(
      'Default',
      name: 'defaultcolor',
      desc: '',
      args: [],
    );
  }

  /// `Neon`
  String get neon {
    return Intl.message(
      'Neon',
      name: 'neon',
      desc: '',
      args: [],
    );
  }

  /// `Atlas`
  String get atlas {
    return Intl.message(
      'Atlas',
      name: 'atlas',
      desc: '',
      args: [],
    );
  }

  /// `Sky`
  String get skycolor {
    return Intl.message(
      'Sky',
      name: 'skycolor',
      desc: '',
      args: [],
    );
  }

  /// `Celestial`
  String get celestial {
    return Intl.message(
      'Celestial',
      name: 'celestial',
      desc: '',
      args: [],
    );
  }

  /// `Moonlit`
  String get moonlit {
    return Intl.message(
      'Moonlit',
      name: 'moonlit',
      desc: '',
      args: [],
    );
  }

  /// `Grey`
  String get grey {
    return Intl.message(
      'Grey',
      name: 'grey',
      desc: '',
      args: [],
    );
  }

  /// `Social Media Links`
  String get socialmedialink {
    return Intl.message(
      'Social Media Links',
      name: 'socialmedialink',
      desc: '',
      args: [],
    );
  }

  /// `Review Status`
  String get reviewstatus {
    return Intl.message(
      'Review Status',
      name: 'reviewstatus',
      desc: '',
      args: [],
    );
  }

  /// `Your Country`
  String get creatorCountry {
    return Intl.message(
      'Your Country',
      name: 'creatorCountry',
      desc: '',
      args: [],
    );
  }

  /// `Select Country`
  String get selectCountry {
    return Intl.message(
      'Select Country',
      name: 'selectCountry',
      desc: '',
      args: [],
    );
  }

  /// `Payee Type`
  String get payeeType {
    return Intl.message(
      'Payee Type',
      name: 'payeeType',
      desc: '',
      args: [],
    );
  }

  /// `Individual`
  String get individualpayee {
    return Intl.message(
      'Individual',
      name: 'individualpayee',
      desc: '',
      args: [],
    );
  }

  /// `Cooperation`
  String get companypayee {
    return Intl.message(
      'Cooperation',
      name: 'companypayee',
      desc: '',
      args: [],
    );
  }

  /// `Withdrawal Method`
  String get withdrawalmethod {
    return Intl.message(
      'Withdrawal Method',
      name: 'withdrawalmethod',
      desc: '',
      args: [],
    );
  }

  /// `FPS  (Only for Hong Kong)`
  String get fpsonlyhk {
    return Intl.message(
      'FPS  (Only for Hong Kong)',
      name: 'fpsonlyhk',
      desc: '',
      args: [],
    );
  }

  /// `Withdraw through FPS (Fill any one below)`
  String get fpshktitle {
    return Intl.message(
      'Withdraw through FPS (Fill any one below)',
      name: 'fpshktitle',
      desc: '',
      args: [],
    );
  }

  /// `FPS Service is only applicable to Hong Kong*`
  String get fpshkbody {
    return Intl.message(
      'FPS Service is only applicable to Hong Kong*',
      name: 'fpshkbody',
      desc: '',
      args: [],
    );
  }

  /// `Enter FPS ID`
  String get enterfpsid {
    return Intl.message(
      'Enter FPS ID',
      name: 'enterfpsid',
      desc: '',
      args: [],
    );
  }

  /// `Enter FPS Email`
  String get enterfpsemail {
    return Intl.message(
      'Enter FPS Email',
      name: 'enterfpsemail',
      desc: '',
      args: [],
    );
  }

  /// `Enter FPS Phone no.`
  String get enterfpsnumber {
    return Intl.message(
      'Enter FPS Phone no.',
      name: 'enterfpsnumber',
      desc: '',
      args: [],
    );
  }

  /// `Wire Transfer`
  String get wiretransfer {
    return Intl.message(
      'Wire Transfer',
      name: 'wiretransfer',
      desc: '',
      args: [],
    );
  }

  /// `By Wire Transfer`
  String get bywiretransfer {
    return Intl.message(
      'By Wire Transfer',
      name: 'bywiretransfer',
      desc: '',
      args: [],
    );
  }

  /// `Wire Transfer is applicable to all countries`
  String get wirebody {
    return Intl.message(
      'Wire Transfer is applicable to all countries',
      name: 'wirebody',
      desc: '',
      args: [],
    );
  }

  /// `The transfer fees are expected to be covered by the beneficiary of the funds`
  String get wirebodyfee {
    return Intl.message(
      'The transfer fees are expected to be covered by the beneficiary of the funds',
      name: 'wirebodyfee',
      desc: '',
      args: [],
    );
  }

  /// `Receiving Bank Country`
  String get wirebankcountry {
    return Intl.message(
      'Receiving Bank Country',
      name: 'wirebankcountry',
      desc: '',
      args: [],
    );
  }

  /// `Receiving Bank Name`
  String get wirebankname {
    return Intl.message(
      'Receiving Bank Name',
      name: 'wirebankname',
      desc: '',
      args: [],
    );
  }

  /// `Receiving Bank Account No.`
  String get wirebankac {
    return Intl.message(
      'Receiving Bank Account No.',
      name: 'wirebankac',
      desc: '',
      args: [],
    );
  }

  /// `Withdraw through PayPal`
  String get paypaltitle {
    return Intl.message(
      'Withdraw through PayPal',
      name: 'paypaltitle',
      desc: '',
      args: [],
    );
  }

  /// `PayPal is applicable to all countries`
  String get paypalbody {
    return Intl.message(
      'PayPal is applicable to all countries',
      name: 'paypalbody',
      desc: '',
      args: [],
    );
  }

  /// `Enter PayPal Email`
  String get enterpaypal {
    return Intl.message(
      'Enter PayPal Email',
      name: 'enterpaypal',
      desc: '',
      args: [],
    );
  }

  /// `Payee Address`
  String get payeeaddress {
    return Intl.message(
      'Payee Address',
      name: 'payeeaddress',
      desc: '',
      args: [],
    );
  }

  /// `The payee should file a tax declaration with the relevant regional tax authorities on their own`
  String get payeeaddressbody {
    return Intl.message(
      'The payee should file a tax declaration with the relevant regional tax authorities on their own',
      name: 'payeeaddressbody',
      desc: '',
      args: [],
    );
  }

  /// `Payee Residential Address`
  String get payeeaddressdetail {
    return Intl.message(
      'Payee Residential Address',
      name: 'payeeaddressdetail',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get payeeaddresscity {
    return Intl.message(
      'City',
      name: 'payeeaddresscity',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get payeeaddresscountry {
    return Intl.message(
      'Country',
      name: 'payeeaddresscountry',
      desc: '',
      args: [],
    );
  }

  /// `Contact Info`
  String get contactinfo {
    return Intl.message(
      'Contact Info',
      name: 'contactinfo',
      desc: '',
      args: [],
    );
  }

  /// `Payee Full Name`
  String get payeename {
    return Intl.message(
      'Payee Full Name',
      name: 'payeename',
      desc: '',
      args: [],
    );
  }

  /// `Code`
  String get phoneprefix {
    return Intl.message(
      'Code',
      name: 'phoneprefix',
      desc: '',
      args: [],
    );
  }

  /// `Phone No.`
  String get phoneno {
    return Intl.message(
      'Phone No.',
      name: 'phoneno',
      desc: '',
      args: [],
    );
  }

  /// `Business Registration Certificate`
  String get brimage {
    return Intl.message(
      'Business Registration Certificate',
      name: 'brimage',
      desc: '',
      args: [],
    );
  }

  /// `Explore More Info`
  String get knowmore {
    return Intl.message(
      'Explore More Info',
      name: 'knowmore',
      desc: '',
      args: [],
    );
  }

  /// `Contact STARIFLY`
  String get ifhvproblem {
    return Intl.message(
      'Contact STARIFLY',
      name: 'ifhvproblem',
      desc: '',
      args: [],
    );
  }

  /// `Creator's Revenue`
  String get aboutcreatormoney {
    return Intl.message(
      'Creator\'s Revenue',
      name: 'aboutcreatormoney',
      desc: '',
      args: [],
    );
  }

  /// `In-App Contact`
  String get inappcontact {
    return Intl.message(
      'In-App Contact',
      name: 'inappcontact',
      desc: '',
      args: [],
    );
  }

  /// `WhatsApp Us`
  String get whatsappus {
    return Intl.message(
      'WhatsApp Us',
      name: 'whatsappus',
      desc: '',
      args: [],
    );
  }

  /// `Email Us`
  String get emailus {
    return Intl.message(
      'Email Us',
      name: 'emailus',
      desc: '',
      args: [],
    );
  }

  /// `Report Problem`
  String get reportproblem {
    return Intl.message(
      'Report Problem',
      name: 'reportproblem',
      desc: '',
      args: [],
    );
  }

  /// `Suggestion`
  String get appfunctionsuggest {
    return Intl.message(
      'Suggestion',
      name: 'appfunctionsuggest',
      desc: '',
      args: [],
    );
  }

  /// `Contact STARIFLY`
  String get contactstarifly {
    return Intl.message(
      'Contact STARIFLY',
      name: 'contactstarifly',
      desc: '',
      args: [],
    );
  }

  /// `Edit Course`
  String get editcourse {
    return Intl.message(
      'Edit Course',
      name: 'editcourse',
      desc: '',
      args: [],
    );
  }

  /// `Draft`
  String get draft {
    return Intl.message(
      'Draft',
      name: 'draft',
      desc: '',
      args: [],
    );
  }

  /// `Published`
  String get published {
    return Intl.message(
      'Published',
      name: 'published',
      desc: '',
      args: [],
    );
  }

  /// `Banned`
  String get banned {
    return Intl.message(
      'Banned',
      name: 'banned',
      desc: '',
      args: [],
    );
  }

  /// `In Review`
  String get inreview {
    return Intl.message(
      'In Review',
      name: 'inreview',
      desc: '',
      args: [],
    );
  }

  /// `Require Changes`
  String get reviewedbanned {
    return Intl.message(
      'Require Changes',
      name: 'reviewedbanned',
      desc: '',
      args: [],
    );
  }

  /// `Removed`
  String get removed {
    return Intl.message(
      'Removed',
      name: 'removed',
      desc: '',
      args: [],
    );
  }

  /// `Enter Course Title`
  String get entercoursetitle {
    return Intl.message(
      'Enter Course Title',
      name: 'entercoursetitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter Course Description`
  String get entercoursedescription {
    return Intl.message(
      'Enter Course Description',
      name: 'entercoursedescription',
      desc: '',
      args: [],
    );
  }

  /// `Tags`
  String get tags {
    return Intl.message(
      'Tags',
      name: 'tags',
      desc: '',
      args: [],
    );
  }

  /// `Course Code`
  String get coursecode {
    return Intl.message(
      'Course Code',
      name: 'coursecode',
      desc: '',
      args: [],
    );
  }

  /// `Enter Course Code`
  String get entercoursecode {
    return Intl.message(
      'Enter Course Code',
      name: 'entercoursecode',
      desc: '',
      args: [],
    );
  }

  /// `About Course`
  String get aboutcourse {
    return Intl.message(
      'About Course',
      name: 'aboutcourse',
      desc: '',
      args: [],
    );
  }

  /// `Course Level`
  String get courselevel {
    return Intl.message(
      'Course Level',
      name: 'courselevel',
      desc: '',
      args: [],
    );
  }

  /// `Course Status`
  String get coursestatus {
    return Intl.message(
      'Course Status',
      name: 'coursestatus',
      desc: '',
      args: [],
    );
  }

  /// `Main Teaching Language`
  String get coursemainlanguage {
    return Intl.message(
      'Main Teaching Language',
      name: 'coursemainlanguage',
      desc: '',
      args: [],
    );
  }

  /// `Translated Language`
  String get coursesupportlanguage {
    return Intl.message(
      'Translated Language',
      name: 'coursesupportlanguage',
      desc: '',
      args: [],
    );
  }

  /// `Select Level`
  String get selectlevel {
    return Intl.message(
      'Select Level',
      name: 'selectlevel',
      desc: '',
      args: [],
    );
  }

  /// `Basic`
  String get basic {
    return Intl.message(
      'Basic',
      name: 'basic',
      desc: '',
      args: [],
    );
  }

  /// `Intermediate`
  String get intermediate {
    return Intl.message(
      'Intermediate',
      name: 'intermediate',
      desc: '',
      args: [],
    );
  }

  /// `Advanced`
  String get advanced {
    return Intl.message(
      'Advanced',
      name: 'advanced',
      desc: '',
      args: [],
    );
  }

  /// `Professional`
  String get professional {
    return Intl.message(
      'Professional',
      name: 'professional',
      desc: '',
      args: [],
    );
  }

  /// `Course Categories`
  String get coursecategory {
    return Intl.message(
      'Course Categories',
      name: 'coursecategory',
      desc: '',
      args: [],
    );
  }

  /// `Select Category`
  String get selectcategory {
    return Intl.message(
      'Select Category',
      name: 'selectcategory',
      desc: '',
      args: [],
    );
  }

  /// `Music`
  String get music {
    return Intl.message(
      'Music',
      name: 'music',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Photography`
  String get photography {
    return Intl.message(
      'Photography',
      name: 'photography',
      desc: '',
      args: [],
    );
  }

  /// `Arts`
  String get arts {
    return Intl.message(
      'Arts',
      name: 'arts',
      desc: '',
      args: [],
    );
  }

  /// `Design`
  String get design {
    return Intl.message(
      'Design',
      name: 'design',
      desc: '',
      args: [],
    );
  }

  /// `Humanity`
  String get humanity {
    return Intl.message(
      'Humanity',
      name: 'humanity',
      desc: '',
      args: [],
    );
  }

  /// `Marketing`
  String get marketing {
    return Intl.message(
      'Marketing',
      name: 'marketing',
      desc: '',
      args: [],
    );
  }

  /// `Programming`
  String get programming {
    return Intl.message(
      'Programming',
      name: 'programming',
      desc: '',
      args: [],
    );
  }

  /// `Investing`
  String get investing {
    return Intl.message(
      'Investing',
      name: 'investing',
      desc: '',
      args: [],
    );
  }

  /// `Workplace`
  String get workplace {
    return Intl.message(
      'Workplace',
      name: 'workplace',
      desc: '',
      args: [],
    );
  }

  /// `Handcraft`
  String get handcraft {
    return Intl.message(
      'Handcraft',
      name: 'handcraft',
      desc: '',
      args: [],
    );
  }

  /// `Lifestyle`
  String get lifestyle {
    return Intl.message(
      'Lifestyle',
      name: 'lifestyle',
      desc: '',
      args: [],
    );
  }

  /// `Pets`
  String get pets {
    return Intl.message(
      'Pets',
      name: 'pets',
      desc: '',
      args: [],
    );
  }

  /// `Finance`
  String get finance {
    return Intl.message(
      'Finance',
      name: 'finance',
      desc: '',
      args: [],
    );
  }

  /// `Cantonese`
  String get cantonese {
    return Intl.message(
      'Cantonese',
      name: 'cantonese',
      desc: '',
      args: [],
    );
  }

  /// `Mandarin`
  String get mandarin {
    return Intl.message(
      'Mandarin',
      name: 'mandarin',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Japanese`
  String get japanese {
    return Intl.message(
      'Japanese',
      name: 'japanese',
      desc: '',
      args: [],
    );
  }

  /// `Korean`
  String get korean {
    return Intl.message(
      'Korean',
      name: 'korean',
      desc: '',
      args: [],
    );
  }

  /// `Select Language`
  String get selectmainlangauge {
    return Intl.message(
      'Select Language',
      name: 'selectmainlangauge',
      desc: '',
      args: [],
    );
  }

  /// `Chinese`
  String get chinese {
    return Intl.message(
      'Chinese',
      name: 'chinese',
      desc: '',
      args: [],
    );
  }

  /// `Select Language`
  String get selectsupportlanguage {
    return Intl.message(
      'Select Language',
      name: 'selectsupportlanguage',
      desc: '',
      args: [],
    );
  }

  /// `Course Sale`
  String get salessetting {
    return Intl.message(
      'Course Sale',
      name: 'salessetting',
      desc: '',
      args: [],
    );
  }

  /// `Set as Presale Course`
  String get setpresale {
    return Intl.message(
      'Set as Presale Course',
      name: 'setpresale',
      desc: '',
      args: [],
    );
  }

  /// `Course Sale`
  String get coursesalesetting {
    return Intl.message(
      'Course Sale',
      name: 'coursesalesetting',
      desc: '',
      args: [],
    );
  }

  /// `Course Amount`
  String get courseamount {
    return Intl.message(
      'Course Amount',
      name: 'courseamount',
      desc: '',
      args: [],
    );
  }

  /// `Course Price`
  String get courseprice {
    return Intl.message(
      'Course Price',
      name: 'courseprice',
      desc: '',
      args: [],
    );
  }

  /// `Enalbe Discount`
  String get setdiscount {
    return Intl.message(
      'Enalbe Discount',
      name: 'setdiscount',
      desc: '',
      args: [],
    );
  }

  /// `Course Discounted Price`
  String get coursediscountprice {
    return Intl.message(
      'Course Discounted Price',
      name: 'coursediscountprice',
      desc: '',
      args: [],
    );
  }

  /// `Discounted Course`
  String get discountedcourse {
    return Intl.message(
      'Discounted Course',
      name: 'discountedcourse',
      desc: '',
      args: [],
    );
  }

  /// `Enable Coupon`
  String get providecoupon {
    return Intl.message(
      'Enable Coupon',
      name: 'providecoupon',
      desc: '',
      args: [],
    );
  }

  /// `Enabled Coupon`
  String get enabledcoupon {
    return Intl.message(
      'Enabled Coupon',
      name: 'enabledcoupon',
      desc: '',
      args: [],
    );
  }

  /// `Enter Coupon Code`
  String get couponcode {
    return Intl.message(
      'Enter Coupon Code',
      name: 'couponcode',
      desc: '',
      args: [],
    );
  }

  /// `Coupon Amount`
  String get couponamount {
    return Intl.message(
      'Coupon Amount',
      name: 'couponamount',
      desc: '',
      args: [],
    );
  }

  /// `Coupon Expired on`
  String get couponexpire {
    return Intl.message(
      'Coupon Expired on',
      name: 'couponexpire',
      desc: '',
      args: [],
    );
  }

  /// `Course Setting`
  String get coursebgsetting {
    return Intl.message(
      'Course Setting',
      name: 'coursebgsetting',
      desc: '',
      args: [],
    );
  }

  /// `Course Info`
  String get courseinfosetting {
    return Intl.message(
      'Course Info',
      name: 'courseinfosetting',
      desc: '',
      args: [],
    );
  }

  /// `Join to enjoy {amount} Starcoins discount`
  String coupondisplaybody(Object amount) {
    return Intl.message(
      'Join to enjoy $amount Starcoins discount',
      name: 'coupondisplaybody',
      desc: '',
      args: [amount],
    );
  }

  /// `Course Presale Mode`
  String get presalemode {
    return Intl.message(
      'Course Presale Mode',
      name: 'presalemode',
      desc: '',
      args: [],
    );
  }

  /// `Funding`
  String get fundmode {
    return Intl.message(
      'Funding',
      name: 'fundmode',
      desc: '',
      args: [],
    );
  }

  /// `Announcement`
  String get announcemode {
    return Intl.message(
      'Announcement',
      name: 'announcemode',
      desc: '',
      args: [],
    );
  }

  /// `Course Funding: Propose your course idea and recruit the first batch of course students. This is suitable for creators who are uncertain to the market reactions. If the course is not started at designated dates, all desposits will be refunded to students. This may affect your course successful rate.`
  String get fundtext {
    return Intl.message(
      'Course Funding: Propose your course idea and recruit the first batch of course students. This is suitable for creators who are uncertain to the market reactions. If the course is not started at designated dates, all desposits will be refunded to students. This may affect your course successful rate.',
      name: 'fundtext',
      desc: '',
      args: [],
    );
  }

  /// `Expected Student Count`
  String get targetstudentcount {
    return Intl.message(
      'Expected Student Count',
      name: 'targetstudentcount',
      desc: '',
      args: [],
    );
  }

  /// `Course Presale Price`
  String get presaleprice {
    return Intl.message(
      'Course Presale Price',
      name: 'presaleprice',
      desc: '',
      args: [],
    );
  }

  /// `Course Start Date`
  String get coursestartdate {
    return Intl.message(
      'Course Start Date',
      name: 'coursestartdate',
      desc: '',
      args: [],
    );
  }

  /// `Course Review Submission Deadline`
  String get coursereviewdeadline {
    return Intl.message(
      'Course Review Submission Deadline',
      name: 'coursereviewdeadline',
      desc: '',
      args: [],
    );
  }

  /// `This course should be submitted for review on or before the submission deadline. Students will be refunded if the course failed to pass the review process and your course successful rate may be affected.`
  String get coursereviewdealinetext {
    return Intl.message(
      'This course should be submitted for review on or before the submission deadline. Students will be refunded if the course failed to pass the review process and your course successful rate may be affected.',
      name: 'coursereviewdealinetext',
      desc: '',
      args: [],
    );
  }

  /// `Course Announcement: Inform all students about your coming course. This is suitable for creators who are producing a course. If the course is not started at designated dates, all desposits will be refunded to students. This may affect your course successful rate.`
  String get announcementtext {
    return Intl.message(
      'Course Announcement: Inform all students about your coming course. This is suitable for creators who are producing a course. If the course is not started at designated dates, all desposits will be refunded to students. This may affect your course successful rate.',
      name: 'announcementtext',
      desc: '',
      args: [],
    );
  }

  /// `Click to add content`
  String get addcontent {
    return Intl.message(
      'Click to add content',
      name: 'addcontent',
      desc: '',
      args: [],
    );
  }

  /// `Course Promo`
  String get coursepromosetting {
    return Intl.message(
      'Course Promo',
      name: 'coursepromosetting',
      desc: '',
      args: [],
    );
  }

  /// `Course Promotional Image`
  String get coursepromoimg {
    return Intl.message(
      'Course Promotional Image',
      name: 'coursepromoimg',
      desc: '',
      args: [],
    );
  }

  /// `for 16:9 ratio`
  String get add169img {
    return Intl.message(
      'for 16:9 ratio',
      name: 'add169img',
      desc: '',
      args: [],
    );
  }

  /// `displayed on horizontal scene`
  String get add169imgtext {
    return Intl.message(
      'displayed on horizontal scene',
      name: 'add169imgtext',
      desc: '',
      args: [],
    );
  }

  /// `for 4:5 ratio`
  String get add45img {
    return Intl.message(
      'for 4:5 ratio',
      name: 'add45img',
      desc: '',
      args: [],
    );
  }

  /// `displayed on vertical scene`
  String get add45text {
    return Intl.message(
      'displayed on vertical scene',
      name: 'add45text',
      desc: '',
      args: [],
    );
  }

  /// `Course Promotional Video`
  String get coursepromovid {
    return Intl.message(
      'Course Promotional Video',
      name: 'coursepromovid',
      desc: '',
      args: [],
    );
  }

  /// `Promotional Video to raise students' awareness and interests to join the course `
  String get coursepromovidtext {
    return Intl.message(
      'Promotional Video to raise students\' awareness and interests to join the course ',
      name: 'coursepromovidtext',
      desc: '',
      args: [],
    );
  }

  /// `Course Units`
  String get courseunitsetting {
    return Intl.message(
      'Course Units',
      name: 'courseunitsetting',
      desc: '',
      args: [],
    );
  }

  /// `Course Creators`
  String get coursetutor {
    return Intl.message(
      'Course Creators',
      name: 'coursetutor',
      desc: '',
      args: [],
    );
  }

  /// `Main Creator`
  String get maintutor {
    return Intl.message(
      'Main Creator',
      name: 'maintutor',
      desc: '',
      args: [],
    );
  }

  /// `Assistant`
  String get supplementtutor {
    return Intl.message(
      'Assistant',
      name: 'supplementtutor',
      desc: '',
      args: [],
    );
  }

  /// `Pre-join Quiz`
  String get preapplyquiz {
    return Intl.message(
      'Pre-join Quiz',
      name: 'preapplyquiz',
      desc: '',
      args: [],
    );
  }

  /// `Help creators to understand students' level prior to learning the course`
  String get preapplyquiztext {
    return Intl.message(
      'Help creators to understand students\' level prior to learning the course',
      name: 'preapplyquiztext',
      desc: '',
      args: [],
    );
  }

  /// `Instant Quiz`
  String get instantquiz {
    return Intl.message(
      'Instant Quiz',
      name: 'instantquiz',
      desc: '',
      args: [],
    );
  }

  /// `Course Units`
  String get courseteaching {
    return Intl.message(
      'Course Units',
      name: 'courseteaching',
      desc: '',
      args: [],
    );
  }

  /// `Section Title`
  String get sectiontitle {
    return Intl.message(
      'Section Title',
      name: 'sectiontitle',
      desc: '',
      args: [],
    );
  }

  /// `Section`
  String get section {
    return Intl.message(
      'Section',
      name: 'section',
      desc: '',
      args: [],
    );
  }

  /// `Units`
  String get teachingunit {
    return Intl.message(
      'Units',
      name: 'teachingunit',
      desc: '',
      args: [],
    );
  }

  /// `Assignments`
  String get assignment {
    return Intl.message(
      'Assignments',
      name: 'assignment',
      desc: '',
      args: [],
    );
  }

  /// `Asm`
  String get assignmentshort {
    return Intl.message(
      'Asm',
      name: 'assignmentshort',
      desc: '',
      args: [],
    );
  }

  /// `Enter section title`
  String get entersectiontitle {
    return Intl.message(
      'Enter section title',
      name: 'entersectiontitle',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message(
      'Add',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `Unit Title`
  String get unittitle {
    return Intl.message(
      'Unit Title',
      name: 'unittitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter unit title`
  String get enterunittitle {
    return Intl.message(
      'Enter unit title',
      name: 'enterunittitle',
      desc: '',
      args: [],
    );
  }

  /// `Unit Description`
  String get unitdescription {
    return Intl.message(
      'Unit Description',
      name: 'unitdescription',
      desc: '',
      args: [],
    );
  }

  /// `Section Description`
  String get sectiondescription {
    return Intl.message(
      'Section Description',
      name: 'sectiondescription',
      desc: '',
      args: [],
    );
  }

  /// `Enter unit description`
  String get enterunitdescription {
    return Intl.message(
      'Enter unit description',
      name: 'enterunitdescription',
      desc: '',
      args: [],
    );
  }

  /// `Unit Teaching Video`
  String get unitvid {
    return Intl.message(
      'Unit Teaching Video',
      name: 'unitvid',
      desc: '',
      args: [],
    );
  }

  /// `Unit Teaching Audio`
  String get unitaudio {
    return Intl.message(
      'Unit Teaching Audio',
      name: 'unitaudio',
      desc: '',
      args: [],
    );
  }

  /// `Enter Unit Audio Link`
  String get enterunitaudiolink {
    return Intl.message(
      'Enter Unit Audio Link',
      name: 'enterunitaudiolink',
      desc: '',
      args: [],
    );
  }

  /// `video contains subtitle`
  String get vidcontainssubtitle {
    return Intl.message(
      'video contains subtitle',
      name: 'vidcontainssubtitle',
      desc: '',
      args: [],
    );
  }

  /// `protected video`
  String get vidprotected {
    return Intl.message(
      'protected video',
      name: 'vidprotected',
      desc: '',
      args: [],
    );
  }

  /// `Unit Content`
  String get unitcontent {
    return Intl.message(
      'Unit Content',
      name: 'unitcontent',
      desc: '',
      args: [],
    );
  }

  /// `Supplement Files`
  String get supplementfile {
    return Intl.message(
      'Supplement Files',
      name: 'supplementfile',
      desc: '',
      args: [],
    );
  }

  /// `Add Files`
  String get addfile {
    return Intl.message(
      'Add Files',
      name: 'addfile',
      desc: '',
      args: [],
    );
  }

  /// `Unit Duration`
  String get unitduration {
    return Intl.message(
      'Unit Duration',
      name: 'unitduration',
      desc: '',
      args: [],
    );
  }

  /// `HH`
  String get hour {
    return Intl.message(
      'HH',
      name: 'hour',
      desc: '',
      args: [],
    );
  }

  /// `MM`
  String get minute {
    return Intl.message(
      'MM',
      name: 'minute',
      desc: '',
      args: [],
    );
  }

  /// `S`
  String get seconds {
    return Intl.message(
      'S',
      name: 'seconds',
      desc: '',
      args: [],
    );
  }

  /// `Free Preview`
  String get unitisfree {
    return Intl.message(
      'Free Preview',
      name: 'unitisfree',
      desc: '',
      args: [],
    );
  }

  /// `Include Quiz`
  String get unithvquiz {
    return Intl.message(
      'Include Quiz',
      name: 'unithvquiz',
      desc: '',
      args: [],
    );
  }

  /// `Enter quiz title`
  String get enterquiztitle {
    return Intl.message(
      'Enter quiz title',
      name: 'enterquiztitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter Quiz description`
  String get enterquizdescription {
    return Intl.message(
      'Enter Quiz description',
      name: 'enterquizdescription',
      desc: '',
      args: [],
    );
  }

  /// `Quiz Duration`
  String get quizduration {
    return Intl.message(
      'Quiz Duration',
      name: 'quizduration',
      desc: '',
      args: [],
    );
  }

  /// `Unlimited`
  String get nodurationlimit {
    return Intl.message(
      'Unlimited',
      name: 'nodurationlimit',
      desc: '',
      args: [],
    );
  }

  /// `Multiple-Choice`
  String get mc {
    return Intl.message(
      'Multiple-Choice',
      name: 'mc',
      desc: '',
      args: [],
    );
  }

  /// `Marks`
  String get marks {
    return Intl.message(
      'Marks',
      name: 'marks',
      desc: '',
      args: [],
    );
  }

  /// `Enter Question`
  String get enterquestion {
    return Intl.message(
      'Enter Question',
      name: 'enterquestion',
      desc: '',
      args: [],
    );
  }

  /// `Enter Choice`
  String get enterchoice {
    return Intl.message(
      'Enter Choice',
      name: 'enterchoice',
      desc: '',
      args: [],
    );
  }

  /// `Include Assignment`
  String get hvassignment {
    return Intl.message(
      'Include Assignment',
      name: 'hvassignment',
      desc: '',
      args: [],
    );
  }

  /// `Enter assignment title`
  String get enterasmttitle {
    return Intl.message(
      'Enter assignment title',
      name: 'enterasmttitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter assignment description`
  String get enterasmdescription {
    return Intl.message(
      'Enter assignment description',
      name: 'enterasmdescription',
      desc: '',
      args: [],
    );
  }

  /// `Assignment Guidelines`
  String get asmguidance {
    return Intl.message(
      'Assignment Guidelines',
      name: 'asmguidance',
      desc: '',
      args: [],
    );
  }

  /// `Assignment Marks`
  String get asmmarks {
    return Intl.message(
      'Assignment Marks',
      name: 'asmmarks',
      desc: '',
      args: [],
    );
  }

  /// `Set Assignment Deadline`
  String get setasmdeadline {
    return Intl.message(
      'Set Assignment Deadline',
      name: 'setasmdeadline',
      desc: '',
      args: [],
    );
  }

  /// `Submit before`
  String get submitbefore {
    return Intl.message(
      'Submit before',
      name: 'submitbefore',
      desc: '',
      args: [],
    );
  }

  /// `Video Unit`
  String get mediaunit {
    return Intl.message(
      'Video Unit',
      name: 'mediaunit',
      desc: '',
      args: [],
    );
  }

  /// `Audio`
  String get audiounit {
    return Intl.message(
      'Audio',
      name: 'audiounit',
      desc: '',
      args: [],
    );
  }

  /// `Quiz`
  String get quiz {
    return Intl.message(
      'Quiz',
      name: 'quiz',
      desc: '',
      args: [],
    );
  }

  /// `Asm`
  String get asm {
    return Intl.message(
      'Asm',
      name: 'asm',
      desc: '',
      args: [],
    );
  }

  /// `Resources`
  String get supplementresource {
    return Intl.message(
      'Resources',
      name: 'supplementresource',
      desc: '',
      args: [],
    );
  }

  /// `Free Preview`
  String get freepreview {
    return Intl.message(
      'Free Preview',
      name: 'freepreview',
      desc: '',
      args: [],
    );
  }

  /// `There are 1 or more problems detected`
  String get course1moreproblem {
    return Intl.message(
      'There are 1 or more problems detected',
      name: 'course1moreproblem',
      desc: '',
      args: [],
    );
  }

  /// `This course is ready for review`
  String get coursenoproblem {
    return Intl.message(
      'This course is ready for review',
      name: 'coursenoproblem',
      desc: '',
      args: [],
    );
  }

  /// `Course Background Information Incomplete`
  String get coursebgic {
    return Intl.message(
      'Course Background Information Incomplete',
      name: 'coursebgic',
      desc: '',
      args: [],
    );
  }

  /// `Course Background Information Completed`
  String get coursebgc {
    return Intl.message(
      'Course Background Information Completed',
      name: 'coursebgc',
      desc: '',
      args: [],
    );
  }

  /// `Course Sales Setting Incomplete`
  String get coursesaleic {
    return Intl.message(
      'Course Sales Setting Incomplete',
      name: 'coursesaleic',
      desc: '',
      args: [],
    );
  }

  /// `Course Sales Setting Completed`
  String get coursesalec {
    return Intl.message(
      'Course Sales Setting Completed',
      name: 'coursesalec',
      desc: '',
      args: [],
    );
  }

  /// `Course Detail Information Incomplete`
  String get courseinfoic {
    return Intl.message(
      'Course Detail Information Incomplete',
      name: 'courseinfoic',
      desc: '',
      args: [],
    );
  }

  /// `Course Detail Information Completed`
  String get courseinfoc {
    return Intl.message(
      'Course Detail Information Completed',
      name: 'courseinfoc',
      desc: '',
      args: [],
    );
  }

  /// `Course Promotion Materials Incomplete`
  String get coursepromoic {
    return Intl.message(
      'Course Promotion Materials Incomplete',
      name: 'coursepromoic',
      desc: '',
      args: [],
    );
  }

  /// `Course Promotion Materials Completed`
  String get coursepromoc {
    return Intl.message(
      'Course Promotion Materials Completed',
      name: 'coursepromoc',
      desc: '',
      args: [],
    );
  }

  /// `Course Unit Incomplete`
  String get courseunitic {
    return Intl.message(
      'Course Unit Incomplete',
      name: 'courseunitic',
      desc: '',
      args: [],
    );
  }

  /// `Course Unit Completed`
  String get courseunitc {
    return Intl.message(
      'Course Unit Completed',
      name: 'courseunitc',
      desc: '',
      args: [],
    );
  }

  /// `The review process take around 48 Hours. Courses will be published immediately after approval.`
  String get coursesubmittimetext {
    return Intl.message(
      'The review process take around 48 Hours. Courses will be published immediately after approval.',
      name: 'coursesubmittimetext',
      desc: '',
      args: [],
    );
  }

  /// `No modifications can be made during the process. Please double check before submission.`
  String get coursesubmitchecktext {
    return Intl.message(
      'No modifications can be made during the process. Please double check before submission.',
      name: 'coursesubmitchecktext',
      desc: '',
      args: [],
    );
  }

  /// `No. of Course Publications Remaining`
  String get remainpublishcount {
    return Intl.message(
      'No. of Course Publications Remaining',
      name: 'remainpublishcount',
      desc: '',
      args: [],
    );
  }

  /// `Top-up`
  String get topuppublishcount {
    return Intl.message(
      'Top-up',
      name: 'topuppublishcount',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submitcourse {
    return Intl.message(
      'Submit',
      name: 'submitcourse',
      desc: '',
      args: [],
    );
  }

  /// `Course Creator Upgrade`
  String get creatorlevelup {
    return Intl.message(
      'Course Creator Upgrade',
      name: 'creatorlevelup',
      desc: '',
      args: [],
    );
  }

  /// `Select your creator plan`
  String get selectcreatorplantext {
    return Intl.message(
      'Select your creator plan',
      name: 'selectcreatorplantext',
      desc: '',
      args: [],
    );
  }

  /// `Basic Plan`
  String get planbasic {
    return Intl.message(
      'Basic Plan',
      name: 'planbasic',
      desc: '',
      args: [],
    );
  }

  /// `Experience the magic of STARIFLY`
  String get planbasictext {
    return Intl.message(
      'Experience the magic of STARIFLY',
      name: 'planbasictext',
      desc: '',
      args: [],
    );
  }

  /// `Publications`
  String get publishtime {
    return Intl.message(
      'Publications',
      name: 'publishtime',
      desc: '',
      args: [],
    );
  }

  /// `Advance Plan`
  String get planadvance {
    return Intl.message(
      'Advance Plan',
      name: 'planadvance',
      desc: '',
      args: [],
    );
  }

  /// `Experience the magic of STARIFLY`
  String get planadvancetext {
    return Intl.message(
      'Experience the magic of STARIFLY',
      name: 'planadvancetext',
      desc: '',
      args: [],
    );
  }

  /// `Best Seller`
  String get bestseller {
    return Intl.message(
      'Best Seller',
      name: 'bestseller',
      desc: '',
      args: [],
    );
  }

  /// `Saves`
  String get savesu {
    return Intl.message(
      'Saves',
      name: 'savesu',
      desc: '',
      args: [],
    );
  }

  /// `StarCoin`
  String get starcoin {
    return Intl.message(
      'StarCoin',
      name: 'starcoin',
      desc: '',
      args: [],
    );
  }

  /// `Creator Pro Plan`
  String get planprofessional {
    return Intl.message(
      'Creator Pro Plan',
      name: 'planprofessional',
      desc: '',
      args: [],
    );
  }

  /// `Experience the magic of STARIFLY`
  String get planprofessionaltext {
    return Intl.message(
      'Experience the magic of STARIFLY',
      name: 'planprofessionaltext',
      desc: '',
      args: [],
    );
  }

  /// `Best Price`
  String get bestprice {
    return Intl.message(
      'Best Price',
      name: 'bestprice',
      desc: '',
      args: [],
    );
  }

  /// `On or before {date}`
  String beforedate(Object date) {
    return Intl.message(
      'On or before $date',
      name: 'beforedate',
      desc: '',
      args: [date],
    );
  }

  /// `Filter`
  String get filter {
    return Intl.message(
      'Filter',
      name: 'filter',
      desc: '',
      args: [],
    );
  }

  /// `Storage Space Used {currentsize}`
  String mediastoragetext(Object currentsize) {
    return Intl.message(
      'Storage Space Used $currentsize',
      name: 'mediastoragetext',
      desc: '',
      args: [currentsize],
    );
  }

  /// `Upgrade Storage`
  String get upgradesizetext {
    return Intl.message(
      'Upgrade Storage',
      name: 'upgradesizetext',
      desc: '',
      args: [],
    );
  }

  /// `Add Media`
  String get addmedia {
    return Intl.message(
      'Add Media',
      name: 'addmedia',
      desc: '',
      args: [],
    );
  }

  /// `Folder`
  String get folder {
    return Intl.message(
      'Folder',
      name: 'folder',
      desc: '',
      args: [],
    );
  }

  /// `Image`
  String get image {
    return Intl.message(
      'Image',
      name: 'image',
      desc: '',
      args: [],
    );
  }

  /// `Video`
  String get video {
    return Intl.message(
      'Video',
      name: 'video',
      desc: '',
      args: [],
    );
  }

  /// `Doc`
  String get document {
    return Intl.message(
      'Doc',
      name: 'document',
      desc: '',
      args: [],
    );
  }

  /// `From Camera`
  String get fromcamera {
    return Intl.message(
      'From Camera',
      name: 'fromcamera',
      desc: '',
      args: [],
    );
  }

  /// `Folder Name`
  String get folderName {
    return Intl.message(
      'Folder Name',
      name: 'folderName',
      desc: '',
      args: [],
    );
  }

  /// `Please Use Other Names`
  String get useothernames {
    return Intl.message(
      'Please Use Other Names',
      name: 'useothernames',
      desc: '',
      args: [],
    );
  }

  /// `Success`
  String get success {
    return Intl.message(
      'Success',
      name: 'success',
      desc: '',
      args: [],
    );
  }

  /// `From Album`
  String get fromalbumn {
    return Intl.message(
      'From Album',
      name: 'fromalbumn',
      desc: '',
      args: [],
    );
  }

  /// `From Cloud`
  String get fromcloud {
    return Intl.message(
      'From Cloud',
      name: 'fromcloud',
      desc: '',
      args: [],
    );
  }

  /// ` You need to increase your storage`
  String get buystorage {
    return Intl.message(
      ' You need to increase your storage',
      name: 'buystorage',
      desc: '',
      args: [],
    );
  }

  /// `From Link`
  String get fromvideolink {
    return Intl.message(
      'From Link',
      name: 'fromvideolink',
      desc: '',
      args: [],
    );
  }

  /// `Video Link`
  String get videolink {
    return Intl.message(
      'Video Link',
      name: 'videolink',
      desc: '',
      args: [],
    );
  }

  /// `Support .mp4/.m3u8 Videos Only`
  String get videolinkdoby1 {
    return Intl.message(
      'Support .mp4/.m3u8 Videos Only',
      name: 'videolinkdoby1',
      desc: '',
      args: [],
    );
  }

  /// `Youtube videos are not supported`
  String get videolinkdoby2 {
    return Intl.message(
      'Youtube videos are not supported',
      name: 'videolinkdoby2',
      desc: '',
      args: [],
    );
  }

  /// `Enter Video Link`
  String get entervideolink {
    return Intl.message(
      'Enter Video Link',
      name: 'entervideolink',
      desc: '',
      args: [],
    );
  }

  /// `Enter Video Name`
  String get entervideoname {
    return Intl.message(
      'Enter Video Name',
      name: 'entervideoname',
      desc: '',
      args: [],
    );
  }

  /// `Add Video`
  String get addvideo {
    return Intl.message(
      'Add Video',
      name: 'addvideo',
      desc: '',
      args: [],
    );
  }

  /// `Main Folder`
  String get mainfolder {
    return Intl.message(
      'Main Folder',
      name: 'mainfolder',
      desc: '',
      args: [],
    );
  }

  /// `Select Only Image`
  String get imageonly {
    return Intl.message(
      'Select Only Image',
      name: 'imageonly',
      desc: '',
      args: [],
    );
  }

  /// `Select Only Video`
  String get videoonly {
    return Intl.message(
      'Select Only Video',
      name: 'videoonly',
      desc: '',
      args: [],
    );
  }

  /// `Select Only Media`
  String get mediaonly {
    return Intl.message(
      'Select Only Media',
      name: 'mediaonly',
      desc: '',
      args: [],
    );
  }

  /// `Select Only PDF`
  String get pdfonly {
    return Intl.message(
      'Select Only PDF',
      name: 'pdfonly',
      desc: '',
      args: [],
    );
  }

  /// `Text`
  String get text {
    return Intl.message(
      'Text',
      name: 'text',
      desc: '',
      args: [],
    );
  }

  /// `Headline`
  String get headline {
    return Intl.message(
      'Headline',
      name: 'headline',
      desc: '',
      args: [],
    );
  }

  /// `Quote`
  String get quote {
    return Intl.message(
      'Quote',
      name: 'quote',
      desc: '',
      args: [],
    );
  }

  /// `Edit Content`
  String get editcontent {
    return Intl.message(
      'Edit Content',
      name: 'editcontent',
      desc: '',
      args: [],
    );
  }

  /// `Enter`
  String get enter {
    return Intl.message(
      'Enter',
      name: 'enter',
      desc: '',
      args: [],
    );
  }

  /// `Reorder Content`
  String get reordercontent {
    return Intl.message(
      'Reorder Content',
      name: 'reordercontent',
      desc: '',
      args: [],
    );
  }

  /// `Move Blocks Up or Down`
  String get moveupordown {
    return Intl.message(
      'Move Blocks Up or Down',
      name: 'moveupordown',
      desc: '',
      args: [],
    );
  }

  /// `Move Up`
  String get moveup {
    return Intl.message(
      'Move Up',
      name: 'moveup',
      desc: '',
      args: [],
    );
  }

  /// `Move Down`
  String get movedown {
    return Intl.message(
      'Move Down',
      name: 'movedown',
      desc: '',
      args: [],
    );
  }

  /// `Set Limited Access`
  String get hvlimitaccess {
    return Intl.message(
      'Set Limited Access',
      name: 'hvlimitaccess',
      desc: '',
      args: [],
    );
  }

  /// `Limited Access Duration`
  String get limitDuration {
    return Intl.message(
      'Limited Access Duration',
      name: 'limitDuration',
      desc: '',
      args: [],
    );
  }

  /// `{days} Days Since Registration`
  String daysafterregister(Object days) {
    return Intl.message(
      '$days Days Since Registration',
      name: 'daysafterregister',
      desc: '',
      args: [days],
    );
  }

  /// `required`
  String get required {
    return Intl.message(
      'required',
      name: 'required',
      desc: '',
      args: [],
    );
  }

  /// `Send Course Invitation to Assistant in ChatRoom`
  String get supplementtutortext {
    return Intl.message(
      'Send Course Invitation to Assistant in ChatRoom',
      name: 'supplementtutortext',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to quit?`
  String get suretoquitedit {
    return Intl.message(
      'Are you sure you want to quit?',
      name: 'suretoquitedit',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Save & Quit`
  String get saveandquit {
    return Intl.message(
      'Save & Quit',
      name: 'saveandquit',
      desc: '',
      args: [],
    );
  }

  /// `Saved`
  String get saved {
    return Intl.message(
      'Saved',
      name: 'saved',
      desc: '',
      args: [],
    );
  }

  /// `Quit`
  String get quit {
    return Intl.message(
      'Quit',
      name: 'quit',
      desc: '',
      args: [],
    );
  }

  /// `Just Quit`
  String get justquit {
    return Intl.message(
      'Just Quit',
      name: 'justquit',
      desc: '',
      args: [],
    );
  }

  /// `Text`
  String get textunit {
    return Intl.message(
      'Text',
      name: 'textunit',
      desc: '',
      args: [],
    );
  }

  /// `Video`
  String get videounit {
    return Intl.message(
      'Video',
      name: 'videounit',
      desc: '',
      args: [],
    );
  }

  /// `Let's Create Your First Course`
  String get createfirstcourse {
    return Intl.message(
      'Let\'s Create Your First Course',
      name: 'createfirstcourse',
      desc: '',
      args: [],
    );
  }

  /// `✅ Your Changes Have Been Saved`
  String get savedchanges {
    return Intl.message(
      '✅ Your Changes Have Been Saved',
      name: 'savedchanges',
      desc: '',
      args: [],
    );
  }

  /// `Presale`
  String get presalecourse {
    return Intl.message(
      'Presale',
      name: 'presalecourse',
      desc: '',
      args: [],
    );
  }

  /// `Ongoing`
  String get ongoingcourse {
    return Intl.message(
      'Ongoing',
      name: 'ongoingcourse',
      desc: '',
      args: [],
    );
  }

  /// `Last Update: {date}`
  String lastupdate(Object date) {
    return Intl.message(
      'Last Update: $date',
      name: 'lastupdate',
      desc: '',
      args: [date],
    );
  }

  /// `Info`
  String get info {
    return Intl.message(
      'Info',
      name: 'info',
      desc: '',
      args: [],
    );
  }

  /// `Reset Account Password`
  String get resetacpw {
    return Intl.message(
      'Reset Account Password',
      name: 'resetacpw',
      desc: '',
      args: [],
    );
  }

  /// `Your request has been performed. Please check your mailbox`
  String get resetpwmsg {
    return Intl.message(
      'Your request has been performed. Please check your mailbox',
      name: 'resetpwmsg',
      desc: '',
      args: [],
    );
  }

  /// `Reviews`
  String get reviews {
    return Intl.message(
      'Reviews',
      name: 'reviews',
      desc: '',
      args: [],
    );
  }

  /// `Hits`
  String get hits {
    return Intl.message(
      'Hits',
      name: 'hits',
      desc: '',
      args: [],
    );
  }

  /// `Saved`
  String get saves {
    return Intl.message(
      'Saved',
      name: 'saves',
      desc: '',
      args: [],
    );
  }

  /// `No Data`
  String get nodata {
    return Intl.message(
      'No Data',
      name: 'nodata',
      desc: '',
      args: [],
    );
  }

  /// `Course Duration`
  String get courseduration {
    return Intl.message(
      'Course Duration',
      name: 'courseduration',
      desc: '',
      args: [],
    );
  }

  /// `Course Create Date`
  String get coursecreatedate {
    return Intl.message(
      'Course Create Date',
      name: 'coursecreatedate',
      desc: '',
      args: [],
    );
  }

  /// `Course Update Date`
  String get courseupdatedate {
    return Intl.message(
      'Course Update Date',
      name: 'courseupdatedate',
      desc: '',
      args: [],
    );
  }

  /// `Too Many Logins`
  String get toomanylogintitle {
    return Intl.message(
      'Too Many Logins',
      name: 'toomanylogintitle',
      desc: '',
      args: [],
    );
  }

  /// `Your STARIFLY account is in use on too many devices.`
  String get toomanyloginbody1 {
    return Intl.message(
      'Your STARIFLY account is in use on too many devices.',
      name: 'toomanyloginbody1',
      desc: '',
      args: [],
    );
  }

  /// `Please logout from other devices to continue.`
  String get toomanyloginbody2 {
    return Intl.message(
      'Please logout from other devices to continue.',
      name: 'toomanyloginbody2',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message(
      'OK',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Creator`
  String get creator {
    return Intl.message(
      'Creator',
      name: 'creator',
      desc: '',
      args: [],
    );
  }

  /// `{year} years ago`
  String yearago(Object year) {
    return Intl.message(
      '$year years ago',
      name: 'yearago',
      desc: '',
      args: [year],
    );
  }

  /// `Last year`
  String get lastyear {
    return Intl.message(
      'Last year',
      name: 'lastyear',
      desc: '',
      args: [],
    );
  }

  /// `{month} months ago`
  String monthago(Object month) {
    return Intl.message(
      '$month months ago',
      name: 'monthago',
      desc: '',
      args: [month],
    );
  }

  /// `Last month`
  String get lastmonth {
    return Intl.message(
      'Last month',
      name: 'lastmonth',
      desc: '',
      args: [],
    );
  }

  /// `{week} weeks ago`
  String weekago(Object week) {
    return Intl.message(
      '$week weeks ago',
      name: 'weekago',
      desc: '',
      args: [week],
    );
  }

  /// `Last week`
  String get lastweek {
    return Intl.message(
      'Last week',
      name: 'lastweek',
      desc: '',
      args: [],
    );
  }

  /// `{day} days ago`
  String dayago(Object day) {
    return Intl.message(
      '$day days ago',
      name: 'dayago',
      desc: '',
      args: [day],
    );
  }

  /// `Yesterday`
  String get yesterday {
    return Intl.message(
      'Yesterday',
      name: 'yesterday',
      desc: '',
      args: [],
    );
  }

  /// `{hour} hours ago`
  String hourago(Object hour) {
    return Intl.message(
      '$hour hours ago',
      name: 'hourago',
      desc: '',
      args: [hour],
    );
  }

  /// `{minute} minutes ago`
  String minuteago(Object minute) {
    return Intl.message(
      '$minute minutes ago',
      name: 'minuteago',
      desc: '',
      args: [minute],
    );
  }

  /// `{second} seconds ago`
  String secondago(Object second) {
    return Intl.message(
      '$second seconds ago',
      name: 'secondago',
      desc: '',
      args: [second],
    );
  }

  /// `Just now`
  String get lastsecond {
    return Intl.message(
      'Just now',
      name: 'lastsecond',
      desc: '',
      args: [],
    );
  }

  /// `✅ Your Report Has Been Filed And Will Be Reviewed Within 24 Hours`
  String get receivereport {
    return Intl.message(
      '✅ Your Report Has Been Filed And Will Be Reviewed Within 24 Hours',
      name: 'receivereport',
      desc: '',
      args: [],
    );
  }

  /// `Your can also take following measures:`
  String get takefollowingmeasures {
    return Intl.message(
      'Your can also take following measures:',
      name: 'takefollowingmeasures',
      desc: '',
      args: [],
    );
  }

  /// `Hide This Content`
  String get hidethiscontent {
    return Intl.message(
      'Hide This Content',
      name: 'hidethiscontent',
      desc: '',
      args: [],
    );
  }

  /// `Blacklist This User`
  String get blacklistuser {
    return Intl.message(
      'Blacklist This User',
      name: 'blacklistuser',
      desc: '',
      args: [],
    );
  }

  /// `Delete My Comment`
  String get deletemycomment {
    return Intl.message(
      'Delete My Comment',
      name: 'deletemycomment',
      desc: '',
      args: [],
    );
  }

  /// `REPORT - Hate Speech`
  String get reporthate {
    return Intl.message(
      'REPORT - Hate Speech',
      name: 'reporthate',
      desc: '',
      args: [],
    );
  }

  /// `REPORT - Violence or Sexual Assualt`
  String get reportsex {
    return Intl.message(
      'REPORT - Violence or Sexual Assualt',
      name: 'reportsex',
      desc: '',
      args: [],
    );
  }

  /// `REPORT - Fake Statement`
  String get reportfake {
    return Intl.message(
      'REPORT - Fake Statement',
      name: 'reportfake',
      desc: '',
      args: [],
    );
  }

  /// `Block User`
  String get blockuser {
    return Intl.message(
      'Block User',
      name: 'blockuser',
      desc: '',
      args: [],
    );
  }

  /// `Delete This Unit`
  String get deletethisunit {
    return Intl.message(
      'Delete This Unit',
      name: 'deletethisunit',
      desc: '',
      args: [],
    );
  }

  /// `Delete This Quiz`
  String get deletethisquiz {
    return Intl.message(
      'Delete This Quiz',
      name: 'deletethisquiz',
      desc: '',
      args: [],
    );
  }

  /// `Delete This Asm`
  String get deletethisasm {
    return Intl.message(
      'Delete This Asm',
      name: 'deletethisasm',
      desc: '',
      args: [],
    );
  }

  /// `Choose Related Section`
  String get pleasechooserelatedsection {
    return Intl.message(
      'Choose Related Section',
      name: 'pleasechooserelatedsection',
      desc: '',
      args: [],
    );
  }

  /// `Add New Section`
  String get addnewsection {
    return Intl.message(
      'Add New Section',
      name: 'addnewsection',
      desc: '',
      args: [],
    );
  }

  /// `Select Duration`
  String get selectduration {
    return Intl.message(
      'Select Duration',
      name: 'selectduration',
      desc: '',
      args: [],
    );
  }

  /// `Unsaved`
  String get unsaved {
    return Intl.message(
      'Unsaved',
      name: 'unsaved',
      desc: '',
      args: [],
    );
  }

  /// `Enable Auto Login`
  String get nexttimeautologin {
    return Intl.message(
      'Enable Auto Login',
      name: 'nexttimeautologin',
      desc: '',
      args: [],
    );
  }

  /// `Seach Chat Users`
  String get searchchhatuser {
    return Intl.message(
      'Seach Chat Users',
      name: 'searchchhatuser',
      desc: '',
      args: [],
    );
  }

  /// `Start Your Conversation`
  String get kickstartchattext1 {
    return Intl.message(
      'Start Your Conversation',
      name: 'kickstartchattext1',
      desc: '',
      args: [],
    );
  }

  /// `With Tutors, Creators, and Friends `
  String get kickstartchattext2 {
    return Intl.message(
      'With Tutors, Creators, and Friends ',
      name: 'kickstartchattext2',
      desc: '',
      args: [],
    );
  }

  /// `Reply Message`
  String get replymsg {
    return Intl.message(
      'Reply Message',
      name: 'replymsg',
      desc: '',
      args: [],
    );
  }

  /// `Enter Message`
  String get entermsg {
    return Intl.message(
      'Enter Message',
      name: 'entermsg',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message(
      'Send',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `Replied`
  String get replied {
    return Intl.message(
      'Replied',
      name: 'replied',
      desc: '',
      args: [],
    );
  }

  /// `MultiMedia`
  String get multimedia {
    return Intl.message(
      'MultiMedia',
      name: 'multimedia',
      desc: '',
      args: [],
    );
  }

  /// `Text Content Required`
  String get textcontentrequired {
    return Intl.message(
      'Text Content Required',
      name: 'textcontentrequired',
      desc: '',
      args: [],
    );
  }

  /// `Unsend Message`
  String get unsendmsg {
    return Intl.message(
      'Unsend Message',
      name: 'unsendmsg',
      desc: '',
      args: [],
    );
  }

  /// `Unsending will remove the message. People may have seen it already.`
  String get unsendmsgbody {
    return Intl.message(
      'Unsending will remove the message. People may have seen it already.',
      name: 'unsendmsgbody',
      desc: '',
      args: [],
    );
  }

  /// `Unsent Message`
  String get unsent {
    return Intl.message(
      'Unsent Message',
      name: 'unsent',
      desc: '',
      args: [],
    );
  }

  /// `Search something`
  String get entersearchtext {
    return Intl.message(
      'Search something',
      name: 'entersearchtext',
      desc: '',
      args: [],
    );
  }

  /// `Edit Quiz`
  String get editquiz {
    return Intl.message(
      'Edit Quiz',
      name: 'editquiz',
      desc: '',
      args: [],
    );
  }

  /// `Please Input Content`
  String get pleaseinput {
    return Intl.message(
      'Please Input Content',
      name: 'pleaseinput',
      desc: '',
      args: [],
    );
  }

  /// `Reached Maximum`
  String get reachedmaximum {
    return Intl.message(
      'Reached Maximum',
      name: 'reachedmaximum',
      desc: '',
      args: [],
    );
  }

  /// `This course has been submitted for review.`
  String get courseinreviewnow {
    return Intl.message(
      'This course has been submitted for review.',
      name: 'courseinreviewnow',
      desc: '',
      args: [],
    );
  }

  /// `Cancel Review`
  String get cancelreview {
    return Intl.message(
      'Cancel Review',
      name: 'cancelreview',
      desc: '',
      args: [],
    );
  }

  /// `This course is scheduled to be review. If you would like to modify the contents, please revert to 'Draft Status' and resubmit when done.`
  String get converttodrafttext {
    return Intl.message(
      'This course is scheduled to be review. If you would like to modify the contents, please revert to \'Draft Status\' and resubmit when done.',
      name: 'converttodrafttext',
      desc: '',
      args: [],
    );
  }

  /// `Info`
  String get courseinfo {
    return Intl.message(
      'Info',
      name: 'courseinfo',
      desc: '',
      args: [],
    );
  }

  /// `Units`
  String get courseunits {
    return Intl.message(
      'Units',
      name: 'courseunits',
      desc: '',
      args: [],
    );
  }

  /// `Board`
  String get studentboard {
    return Intl.message(
      'Board',
      name: 'studentboard',
      desc: '',
      args: [],
    );
  }

  /// `Ranking`
  String get ranking {
    return Intl.message(
      'Ranking',
      name: 'ranking',
      desc: '',
      args: [],
    );
  }

  /// `Start With {link}`
  String startwith(Object link) {
    return Intl.message(
      'Start With $link',
      name: 'startwith',
      desc: '',
      args: [link],
    );
  }

  /// `My StarCoins`
  String get availablestarcoins {
    return Intl.message(
      'My StarCoins',
      name: 'availablestarcoins',
      desc: '',
      args: [],
    );
  }

  /// `Earned StarCoins`
  String get earnedstarcoins {
    return Intl.message(
      'Earned StarCoins',
      name: 'earnedstarcoins',
      desc: '',
      args: [],
    );
  }

  /// `Recent Trasactions`
  String get recenttransactions {
    return Intl.message(
      'Recent Trasactions',
      name: 'recenttransactions',
      desc: '',
      args: [],
    );
  }

  /// `Show All`
  String get showall {
    return Intl.message(
      'Show All',
      name: 'showall',
      desc: '',
      args: [],
    );
  }

  /// `Submitted on`
  String get submitdate {
    return Intl.message(
      'Submitted on',
      name: 'submitdate',
      desc: '',
      args: [],
    );
  }

  /// `Submit Your First Course`
  String get submitacourse {
    return Intl.message(
      'Submit Your First Course',
      name: 'submitacourse',
      desc: '',
      args: [],
    );
  }

  /// `StarCoins can only be consumed inside STARIFLY app`
  String get starcoinsonlyinstarifly {
    return Intl.message(
      'StarCoins can only be consumed inside STARIFLY app',
      name: 'starcoinsonlyinstarifly',
      desc: '',
      args: [],
    );
  }

  /// `Purchase only as you needed`
  String get purchaseneeded {
    return Intl.message(
      'Purchase only as you needed',
      name: 'purchaseneeded',
      desc: '',
      args: [],
    );
  }

  /// `StarCoins Policy`
  String get starcoinspolicy {
    return Intl.message(
      'StarCoins Policy',
      name: 'starcoinspolicy',
      desc: '',
      args: [],
    );
  }

  /// `Best For Creators`
  String get bestforcreator {
    return Intl.message(
      'Best For Creators',
      name: 'bestforcreator',
      desc: '',
      args: [],
    );
  }

  /// `Best For Multi-course Creators`
  String get bestorforcoursetutors {
    return Intl.message(
      'Best For Multi-course Creators',
      name: 'bestorforcoursetutors',
      desc: '',
      args: [],
    );
  }

  /// `Best For Mass Video Media Storage`
  String get bestorformassmedia {
    return Intl.message(
      'Best For Mass Video Media Storage',
      name: 'bestorformassmedia',
      desc: '',
      args: [],
    );
  }

  /// `STARIFLY has provided 500MB free storage space for every creator. You may purchase additional storage space on demand. All purchased storage are life-long.`
  String get mediastoragedesc1 {
    return Intl.message(
      'STARIFLY has provided 500MB free storage space for every creator. You may purchase additional storage space on demand. All purchased storage are life-long.',
      name: 'mediastoragedesc1',
      desc: '',
      args: [],
    );
  }

  /// `For example, if you chose + 500MB Storage Plan, your new storage size will be 1 GB (included free 500MB)`
  String get mediastoragedesc2 {
    return Intl.message(
      'For example, if you chose + 500MB Storage Plan, your new storage size will be 1 GB (included free 500MB)',
      name: 'mediastoragedesc2',
      desc: '',
      args: [],
    );
  }

  /// `Upgrade Storage Size`
  String get upgradestorage {
    return Intl.message(
      'Upgrade Storage Size',
      name: 'upgradestorage',
      desc: '',
      args: [],
    );
  }

  /// `Select Your Storage Plan`
  String get selectyourplan {
    return Intl.message(
      'Select Your Storage Plan',
      name: 'selectyourplan',
      desc: '',
      args: [],
    );
  }

  /// `STARIFLY has already provided 500Mb free storage space.`
  String get free500already {
    return Intl.message(
      'STARIFLY has already provided 500Mb free storage space.',
      name: 'free500already',
      desc: '',
      args: [],
    );
  }

  /// `Are You Sure To Pay`
  String get suretopay {
    return Intl.message(
      'Are You Sure To Pay',
      name: 'suretopay',
      desc: '',
      args: [],
    );
  }

  /// `Transaction In Progress`
  String get transactioninprogress {
    return Intl.message(
      'Transaction In Progress',
      name: 'transactioninprogress',
      desc: '',
      args: [],
    );
  }

  /// `Remove This Course`
  String get deletethiscourse {
    return Intl.message(
      'Remove This Course',
      name: 'deletethiscourse',
      desc: '',
      args: [],
    );
  }

  /// `Are You Sure To Remove This Course`
  String get suretodeletecourse {
    return Intl.message(
      'Are You Sure To Remove This Course',
      name: 'suretodeletecourse',
      desc: '',
      args: [],
    );
  }

  /// `Enter Post Title`
  String get enterposttitle {
    return Intl.message(
      'Enter Post Title',
      name: 'enterposttitle',
      desc: '',
      args: [],
    );
  }

  /// `Create Post`
  String get createpost {
    return Intl.message(
      'Create Post',
      name: 'createpost',
      desc: '',
      args: [],
    );
  }

  /// `Enter Post Content`
  String get enterpostcontent {
    return Intl.message(
      'Enter Post Content',
      name: 'enterpostcontent',
      desc: '',
      args: [],
    );
  }

  /// `Publish Post`
  String get publishpost {
    return Intl.message(
      'Publish Post',
      name: 'publishpost',
      desc: '',
      args: [],
    );
  }

  /// `Media`
  String get pmediabutton {
    return Intl.message(
      'Media',
      name: 'pmediabutton',
      desc: '',
      args: [],
    );
  }

  /// `B&A`
  String get pbabutton {
    return Intl.message(
      'B&A',
      name: 'pbabutton',
      desc: '',
      args: [],
    );
  }

  /// `Doc`
  String get pdocbutton {
    return Intl.message(
      'Doc',
      name: 'pdocbutton',
      desc: '',
      args: [],
    );
  }

  /// `Link`
  String get plinkbutton {
    return Intl.message(
      'Link',
      name: 'plinkbutton',
      desc: '',
      args: [],
    );
  }

  /// `Course`
  String get pcoursebutton {
    return Intl.message(
      'Course',
      name: 'pcoursebutton',
      desc: '',
      args: [],
    );
  }

  /// `Preview Before & After`
  String get previewba {
    return Intl.message(
      'Preview Before & After',
      name: 'previewba',
      desc: '',
      args: [],
    );
  }

  /// `Before Image`
  String get beforeimg {
    return Intl.message(
      'Before Image',
      name: 'beforeimg',
      desc: '',
      args: [],
    );
  }

  /// `After Image`
  String get afterimg {
    return Intl.message(
      'After Image',
      name: 'afterimg',
      desc: '',
      args: [],
    );
  }

  /// `Additional Document`
  String get postadddoc {
    return Intl.message(
      'Additional Document',
      name: 'postadddoc',
      desc: '',
      args: [],
    );
  }

  /// `Delete Post`
  String get deletepost {
    return Intl.message(
      'Delete Post',
      name: 'deletepost',
      desc: '',
      args: [],
    );
  }

  /// `This cannot undo`
  String get cannotundo {
    return Intl.message(
      'This cannot undo',
      name: 'cannotundo',
      desc: '',
      args: [],
    );
  }

  /// `Exceed Insert Item Limit`
  String get exceeditemimit {
    return Intl.message(
      'Exceed Insert Item Limit',
      name: 'exceeditemimit',
      desc: '',
      args: [],
    );
  }

  /// `Share This Post With The World`
  String get sharepostnow {
    return Intl.message(
      'Share This Post With The World',
      name: 'sharepostnow',
      desc: '',
      args: [],
    );
  }

  /// `DEFAULT`
  String get defaultranking {
    return Intl.message(
      'DEFAULT',
      name: 'defaultranking',
      desc: '',
      args: [],
    );
  }

  /// `LIKES`
  String get likeranking {
    return Intl.message(
      'LIKES',
      name: 'likeranking',
      desc: '',
      args: [],
    );
  }

  /// `PUSHES`
  String get recommendranking {
    return Intl.message(
      'PUSHES',
      name: 'recommendranking',
      desc: '',
      args: [],
    );
  }

  /// `HITS`
  String get hitranking {
    return Intl.message(
      'HITS',
      name: 'hitranking',
      desc: '',
      args: [],
    );
  }

  /// `Related Course`
  String get relatedcourse {
    return Intl.message(
      'Related Course',
      name: 'relatedcourse',
      desc: '',
      args: [],
    );
  }

  /// `Show less`
  String get showless {
    return Intl.message(
      'Show less',
      name: 'showless',
      desc: '',
      args: [],
    );
  }

  /// `View All`
  String get viewall {
    return Intl.message(
      'View All',
      name: 'viewall',
      desc: '',
      args: [],
    );
  }

  /// `{name}'s Posts`
  String userallpost(Object name) {
    return Intl.message(
      '$name\'s Posts',
      name: 'userallpost',
      desc: '',
      args: [name],
    );
  }

  /// `All Posts`
  String get viewallpost {
    return Intl.message(
      'All Posts',
      name: 'viewallpost',
      desc: '',
      args: [],
    );
  }

  /// `Insufficient StarCoins Balance`
  String get insufficientbalancenow {
    return Intl.message(
      'Insufficient StarCoins Balance',
      name: 'insufficientbalancenow',
      desc: '',
      args: [],
    );
  }

  /// `Refreshed`
  String get refreshed {
    return Intl.message(
      'Refreshed',
      name: 'refreshed',
      desc: '',
      args: [],
    );
  }

  /// `Email Verified`
  String get verifiedemail {
    return Intl.message(
      'Email Verified',
      name: 'verifiedemail',
      desc: '',
      args: [],
    );
  }

  /// `Please Verify Email`
  String get pleaseverifyemail {
    return Intl.message(
      'Please Verify Email',
      name: 'pleaseverifyemail',
      desc: '',
      args: [],
    );
  }

  /// `Loading`
  String get loading {
    return Intl.message(
      'Loading',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password Email has been sent. It may takes several minutes to receive.`
  String get alreadysentpw {
    return Intl.message(
      'Reset Password Email has been sent. It may takes several minutes to receive.',
      name: 'alreadysentpw',
      desc: '',
      args: [],
    );
  }

  /// `Share`
  String get sharenow {
    return Intl.message(
      'Share',
      name: 'sharenow',
      desc: '',
      args: [],
    );
  }

  /// `Share this content with others`
  String get sharewithmorepeople {
    return Intl.message(
      'Share this content with others',
      name: 'sharewithmorepeople',
      desc: '',
      args: [],
    );
  }

  /// `Download STARIFLY App`
  String get downloadstarifly {
    return Intl.message(
      'Download STARIFLY App',
      name: 'downloadstarifly',
      desc: '',
      args: [],
    );
  }

  /// `Enjoy the content`
  String get enjoycontent {
    return Intl.message(
      'Enjoy the content',
      name: 'enjoycontent',
      desc: '',
      args: [],
    );
  }

  /// `Copied to Clipboard`
  String get copied {
    return Intl.message(
      'Copied to Clipboard',
      name: 'copied',
      desc: '',
      args: [],
    );
  }

  /// `Early Bird`
  String get presalenow {
    return Intl.message(
      'Early Bird',
      name: 'presalenow',
      desc: '',
      args: [],
    );
  }

  /// `Coming Soon`
  String get soonstart {
    return Intl.message(
      'Coming Soon',
      name: 'soonstart',
      desc: '',
      args: [],
    );
  }

  /// `Public`
  String get startednow {
    return Intl.message(
      'Public',
      name: 'startednow',
      desc: '',
      args: [],
    );
  }

  /// `On Sale`
  String get salenow {
    return Intl.message(
      'On Sale',
      name: 'salenow',
      desc: '',
      args: [],
    );
  }

  /// `Course Units Count`
  String get courseunitcount {
    return Intl.message(
      'Course Units Count',
      name: 'courseunitcount',
      desc: '',
      args: [],
    );
  }

  /// `Unsecure Video Source`
  String get notsecurevideosource {
    return Intl.message(
      'Unsecure Video Source',
      name: 'notsecurevideosource',
      desc: '',
      args: [],
    );
  }

  /// `This video has not been encrypted. Still select?`
  String get notsecurevideobody {
    return Intl.message(
      'This video has not been encrypted. Still select?',
      name: 'notsecurevideobody',
      desc: '',
      args: [],
    );
  }

  /// `Select Media`
  String get selectmedia {
    return Intl.message(
      'Select Media',
      name: 'selectmedia',
      desc: '',
      args: [],
    );
  }

  /// `User`
  String get user {
    return Intl.message(
      'User',
      name: 'user',
      desc: '',
      args: [],
    );
  }

  /// `Post`
  String get post {
    return Intl.message(
      'Post',
      name: 'post',
      desc: '',
      args: [],
    );
  }

  /// `Stay Tuned!`
  String get moreexictingcourse {
    return Intl.message(
      'Stay Tuned!',
      name: 'moreexictingcourse',
      desc: '',
      args: [],
    );
  }

  /// `Courses are coming to town`
  String get coursecomingsoon {
    return Intl.message(
      'Courses are coming to town',
      name: 'coursecomingsoon',
      desc: '',
      args: [],
    );
  }

  /// `Wanna Share Your Knowledge?`
  String get wannashareurknowledge {
    return Intl.message(
      'Wanna Share Your Knowledge?',
      name: 'wannashareurknowledge',
      desc: '',
      args: [],
    );
  }

  /// `All Courses`
  String get allcourses {
    return Intl.message(
      'All Courses',
      name: 'allcourses',
      desc: '',
      args: [],
    );
  }

  /// `Approved`
  String get approved {
    return Intl.message(
      'Approved',
      name: 'approved',
      desc: '',
      args: [],
    );
  }

  /// `This course is published`
  String get thiscoursepublished {
    return Intl.message(
      'This course is published',
      name: 'thiscoursepublished',
      desc: '',
      args: [],
    );
  }

  /// `If you want to edit the course, please change to 'Draft' mode. All changes must be submitted for approval again.`
  String get thiscoursepublishedbody {
    return Intl.message(
      'If you want to edit the course, please change to \'Draft\' mode. All changes must be submitted for approval again.',
      name: 'thiscoursepublishedbody',
      desc: '',
      args: [],
    );
  }

  /// `Draft Mode`
  String get draftmode {
    return Intl.message(
      'Draft Mode',
      name: 'draftmode',
      desc: '',
      args: [],
    );
  }

  /// `This course has been removed`
  String get courseremoved {
    return Intl.message(
      'This course has been removed',
      name: 'courseremoved',
      desc: '',
      args: [],
    );
  }

  /// `If you want to re-edit this course, please change to 'Draft' mode.`
  String get courseremovedbody {
    return Intl.message(
      'If you want to re-edit this course, please change to \'Draft\' mode.',
      name: 'courseremovedbody',
      desc: '',
      args: [],
    );
  }

  /// `This course has been banned`
  String get coursebanned {
    return Intl.message(
      'This course has been banned',
      name: 'coursebanned',
      desc: '',
      args: [],
    );
  }

  /// `Please contact STARIFLY for more information`
  String get bannedpleasecontactstarifly {
    return Intl.message(
      'Please contact STARIFLY for more information',
      name: 'bannedpleasecontactstarifly',
      desc: '',
      args: [],
    );
  }

  /// `QR Code has been saved in your album`
  String get savedqr {
    return Intl.message(
      'QR Code has been saved in your album',
      name: 'savedqr',
      desc: '',
      args: [],
    );
  }

  /// `Coupon has been saved in your album`
  String get savedcoupon {
    return Intl.message(
      'Coupon has been saved in your album',
      name: 'savedcoupon',
      desc: '',
      args: [],
    );
  }

  /// `Please Choose Related Section`
  String get pleasechoosesection {
    return Intl.message(
      'Please Choose Related Section',
      name: 'pleasechoosesection',
      desc: '',
      args: [],
    );
  }

  /// `Change Order`
  String get changeorder {
    return Intl.message(
      'Change Order',
      name: 'changeorder',
      desc: '',
      args: [],
    );
  }

  /// `Free`
  String get free {
    return Intl.message(
      'Free',
      name: 'free',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect Email Format`
  String get invalidemail {
    return Intl.message(
      'Incorrect Email Format',
      name: 'invalidemail',
      desc: '',
      args: [],
    );
  }

  /// `This Email Is Disabled`
  String get emailuserdisabled {
    return Intl.message(
      'This Email Is Disabled',
      name: 'emailuserdisabled',
      desc: '',
      args: [],
    );
  }

  /// `Too Many Requests, Please Try Again Later`
  String get emailoverrequest {
    return Intl.message(
      'Too Many Requests, Please Try Again Later',
      name: 'emailoverrequest',
      desc: '',
      args: [],
    );
  }

  /// `Registration Temporarily Disabled`
  String get emailnotallow {
    return Intl.message(
      'Registration Temporarily Disabled',
      name: 'emailnotallow',
      desc: '',
      args: [],
    );
  }

  /// `This Email Has Been Registered`
  String get emailalreadyused {
    return Intl.message(
      'This Email Has Been Registered',
      name: 'emailalreadyused',
      desc: '',
      args: [],
    );
  }

  /// `Weak Password`
  String get emailweakpassword {
    return Intl.message(
      'Weak Password',
      name: 'emailweakpassword',
      desc: '',
      args: [],
    );
  }

  /// `Unable To Register, Try Again Later`
  String get unabletoregister {
    return Intl.message(
      'Unable To Register, Try Again Later',
      name: 'unabletoregister',
      desc: '',
      args: [],
    );
  }

  /// `Wrong Password`
  String get wrongpassword {
    return Intl.message(
      'Wrong Password',
      name: 'wrongpassword',
      desc: '',
      args: [],
    );
  }

  /// `User Not Registered Yet`
  String get usernotfound {
    return Intl.message(
      'User Not Registered Yet',
      name: 'usernotfound',
      desc: '',
      args: [],
    );
  }

  /// `This Account Temporarily Disabled`
  String get userdisabled {
    return Intl.message(
      'This Account Temporarily Disabled',
      name: 'userdisabled',
      desc: '',
      args: [],
    );
  }

  /// `Unable to Login, Try Again Later`
  String get unabletologin {
    return Intl.message(
      'Unable to Login, Try Again Later',
      name: 'unabletologin',
      desc: '',
      args: [],
    );
  }

  /// `Unable to Send Reset Password Email, Try Again Later`
  String get unabletosendresetpw {
    return Intl.message(
      'Unable to Send Reset Password Email, Try Again Later',
      name: 'unabletosendresetpw',
      desc: '',
      args: [],
    );
  }

  /// `UPDATE STARIFLY APP`
  String get updateapptitle {
    return Intl.message(
      'UPDATE STARIFLY APP',
      name: 'updateapptitle',
      desc: '',
      args: [],
    );
  }

  /// `Please update to the newest version for a better user experience`
  String get updateappbody {
    return Intl.message(
      'Please update to the newest version for a better user experience',
      name: 'updateappbody',
      desc: '',
      args: [],
    );
  }

  /// `UPDATE`
  String get update {
    return Intl.message(
      'UPDATE',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `Remind me later`
  String get remindlater {
    return Intl.message(
      'Remind me later',
      name: 'remindlater',
      desc: '',
      args: [],
    );
  }

  /// `Let's Join Your First Course`
  String get applyfirstcourse {
    return Intl.message(
      'Let\'s Join Your First Course',
      name: 'applyfirstcourse',
      desc: '',
      args: [],
    );
  }

  /// `No Courses Published Yet`
  String get nocoursespublished {
    return Intl.message(
      'No Courses Published Yet',
      name: 'nocoursespublished',
      desc: '',
      args: [],
    );
  }

  /// `View User`
  String get viewuser {
    return Intl.message(
      'View User',
      name: 'viewuser',
      desc: '',
      args: [],
    );
  }

  /// `{name}'s Fans`
  String viewfans(Object name) {
    return Intl.message(
      '$name\'s Fans',
      name: 'viewfans',
      desc: '',
      args: [name],
    );
  }

  /// `{name} Followed`
  String viewfollowing(Object name) {
    return Intl.message(
      '$name Followed',
      name: 'viewfollowing',
      desc: '',
      args: [name],
    );
  }

  /// `No Data Available To Show`
  String get temptnodatatoshow {
    return Intl.message(
      'No Data Available To Show',
      name: 'temptnodatatoshow',
      desc: '',
      args: [],
    );
  }

  /// `Me`
  String get me {
    return Intl.message(
      'Me',
      name: 'me',
      desc: '',
      args: [],
    );
  }

  /// `Previous`
  String get previousunit {
    return Intl.message(
      'Previous',
      name: 'previousunit',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get nextunit {
    return Intl.message(
      'Next',
      name: 'nextunit',
      desc: '',
      args: [],
    );
  }

  /// `Selected assignments by tutors will be displayed here`
  String get hwboardcomingsoon {
    return Intl.message(
      'Selected assignments by tutors will be displayed here',
      name: 'hwboardcomingsoon',
      desc: '',
      args: [],
    );
  }

  /// `Your quiz results and ranking will be displayed here`
  String get quizboardcomingsoon {
    return Intl.message(
      'Your quiz results and ranking will be displayed here',
      name: 'quizboardcomingsoon',
      desc: '',
      args: [],
    );
  }

  /// `Unread Notification`
  String get unreadnotification {
    return Intl.message(
      'Unread Notification',
      name: 'unreadnotification',
      desc: '',
      args: [],
    );
  }

  /// `No Unread Notification`
  String get nounreadnotification {
    return Intl.message(
      'No Unread Notification',
      name: 'nounreadnotification',
      desc: '',
      args: [],
    );
  }

  /// `All Notification`
  String get allnotification {
    return Intl.message(
      'All Notification',
      name: 'allnotification',
      desc: '',
      args: [],
    );
  }

  /// `My Notification`
  String get mynotification {
    return Intl.message(
      'My Notification',
      name: 'mynotification',
      desc: '',
      args: [],
    );
  }

  /// `No Notification Yet`
  String get notyetnotified {
    return Intl.message(
      'No Notification Yet',
      name: 'notyetnotified',
      desc: '',
      args: [],
    );
  }

  /// `Wallet`
  String get wallet {
    return Intl.message(
      'Wallet',
      name: 'wallet',
      desc: '',
      args: [],
    );
  }

  /// `Share Your Feelings, Knowledge and Activities with the Broad STARIFLY Community`
  String get createyoufirstpost {
    return Intl.message(
      'Share Your Feelings, Knowledge and Activities with the Broad STARIFLY Community',
      name: 'createyoufirstpost',
      desc: '',
      args: [],
    );
  }

  /// `Search Users To Chat`
  String get searchusertochat {
    return Intl.message(
      'Search Users To Chat',
      name: 'searchusertochat',
      desc: '',
      args: [],
    );
  }

  /// `Chat Users`
  String get chatuser {
    return Intl.message(
      'Chat Users',
      name: 'chatuser',
      desc: '',
      args: [],
    );
  }

  /// `Undo`
  String get undo {
    return Intl.message(
      'Undo',
      name: 'undo',
      desc: '',
      args: [],
    );
  }

  /// `✅ Hiddened All Contents From This User`
  String get successblockuser {
    return Intl.message(
      '✅ Hiddened All Contents From This User',
      name: 'successblockuser',
      desc: '',
      args: [],
    );
  }

  /// `✅ Hiddened This Comment`
  String get successblockcomment {
    return Intl.message(
      '✅ Hiddened This Comment',
      name: 'successblockcomment',
      desc: '',
      args: [],
    );
  }

  /// `Join Course`
  String get joincourse {
    return Intl.message(
      'Join Course',
      name: 'joincourse',
      desc: '',
      args: [],
    );
  }

  /// `Start Course`
  String get entercourse {
    return Intl.message(
      'Start Course',
      name: 'entercourse',
      desc: '',
      args: [],
    );
  }

  /// `Check Out`
  String get checkout {
    return Intl.message(
      'Check Out',
      name: 'checkout',
      desc: '',
      args: [],
    );
  }

  /// `Order`
  String get order {
    return Intl.message(
      'Order',
      name: 'order',
      desc: '',
      args: [],
    );
  }

  /// `{amount} pcs`
  String orderquantity(Object amount) {
    return Intl.message(
      '$amount pcs',
      name: 'orderquantity',
      desc: '',
      args: [amount],
    );
  }

  /// `Required StarCoins`
  String get requiredcoins {
    return Intl.message(
      'Required StarCoins',
      name: 'requiredcoins',
      desc: '',
      args: [],
    );
  }

  /// `Purchase Info`
  String get purchaseinfo {
    return Intl.message(
      'Purchase Info',
      name: 'purchaseinfo',
      desc: '',
      args: [],
    );
  }

  /// `Subtotal`
  String get ordersubtotal {
    return Intl.message(
      'Subtotal',
      name: 'ordersubtotal',
      desc: '',
      args: [],
    );
  }

  /// `StarCoins Needed`
  String get stillrequirecoins {
    return Intl.message(
      'StarCoins Needed',
      name: 'stillrequirecoins',
      desc: '',
      args: [],
    );
  }

  /// `You Have Successfully Joined This Course`
  String get succesfullyjoinedcourse {
    return Intl.message(
      'You Have Successfully Joined This Course',
      name: 'succesfullyjoinedcourse',
      desc: '',
      args: [],
    );
  }

  /// `Pay`
  String get pay {
    return Intl.message(
      'Pay',
      name: 'pay',
      desc: '',
      args: [],
    );
  }

  /// `StarCoins Remains After Purchase`
  String get remaincoinsafterpurchase {
    return Intl.message(
      'StarCoins Remains After Purchase',
      name: 'remaincoinsafterpurchase',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Purchase`
  String get confirmpurchase {
    return Intl.message(
      'Confirm Purchase',
      name: 'confirmpurchase',
      desc: '',
      args: [],
    );
  }

  /// `Join This Course To Unlock Content`
  String get pleasejoincoursetounlock {
    return Intl.message(
      'Join This Course To Unlock Content',
      name: 'pleasejoincoursetounlock',
      desc: '',
      args: [],
    );
  }

  /// `Your Email Not Verified Yet`
  String get notverified {
    return Intl.message(
      'Your Email Not Verified Yet',
      name: 'notverified',
      desc: '',
      args: [],
    );
  }

  /// `Your Account Has Been Synced`
  String get acissynced {
    return Intl.message(
      'Your Account Has Been Synced',
      name: 'acissynced',
      desc: '',
      args: [],
    );
  }

  /// `Joined`
  String get joinedthiscourse {
    return Intl.message(
      'Joined',
      name: 'joinedthiscourse',
      desc: '',
      args: [],
    );
  }

  /// `Leave Comment`
  String get leavecomment {
    return Intl.message(
      'Leave Comment',
      name: 'leavecomment',
      desc: '',
      args: [],
    );
  }

  /// `Publish`
  String get publish {
    return Intl.message(
      'Publish',
      name: 'publish',
      desc: '',
      args: [],
    );
  }

  /// `Comment is empty`
  String get nocommentcontent {
    return Intl.message(
      'Comment is empty',
      name: 'nocommentcontent',
      desc: '',
      args: [],
    );
  }

  /// `Tutor Feedback`
  String get tutorfeedback {
    return Intl.message(
      'Tutor Feedback',
      name: 'tutorfeedback',
      desc: '',
      args: [],
    );
  }

  /// `My Submission`
  String get mysubmission {
    return Intl.message(
      'My Submission',
      name: 'mysubmission',
      desc: '',
      args: [],
    );
  }

  /// `Create Submission`
  String get createsubmission {
    return Intl.message(
      'Create Submission',
      name: 'createsubmission',
      desc: '',
      args: [],
    );
  }

  /// `Enter Assignment Text Answer`
  String get enterasmtext {
    return Intl.message(
      'Enter Assignment Text Answer',
      name: 'enterasmtext',
      desc: '',
      args: [],
    );
  }

  /// `Enter Assignment Text Comment`
  String get enterasmtextcomment {
    return Intl.message(
      'Enter Assignment Text Comment',
      name: 'enterasmtextcomment',
      desc: '',
      args: [],
    );
  }

  /// `Submitted`
  String get submittedasm {
    return Intl.message(
      'Submitted',
      name: 'submittedasm',
      desc: '',
      args: [],
    );
  }

  /// `Not Submitted`
  String get notsubmittedasm {
    return Intl.message(
      'Not Submitted',
      name: 'notsubmittedasm',
      desc: '',
      args: [],
    );
  }

  /// `Graded`
  String get returnedasm {
    return Intl.message(
      'Graded',
      name: 'returnedasm',
      desc: '',
      args: [],
    );
  }

  /// `Not Graded`
  String get notreturnedasm {
    return Intl.message(
      'Not Graded',
      name: 'notreturnedasm',
      desc: '',
      args: [],
    );
  }

  /// `Your work has been submitted`
  String get submittedasmforreview {
    return Intl.message(
      'Your work has been submitted',
      name: 'submittedasmforreview',
      desc: '',
      args: [],
    );
  }

  /// `If you want to edit, the current submission will not be reviewed`
  String get submittedasmforreviewbody {
    return Intl.message(
      'If you want to edit, the current submission will not be reviewed',
      name: 'submittedasmforreviewbody',
      desc: '',
      args: [],
    );
  }

  /// `Your Feedback has been returned`
  String get returneddasmforreview {
    return Intl.message(
      'Your Feedback has been returned',
      name: 'returneddasmforreview',
      desc: '',
      args: [],
    );
  }

  /// `If you want to edit, the current feedback will be modified`
  String get returnedasmforreviewbody {
    return Intl.message(
      'If you want to edit, the current feedback will be modified',
      name: 'returnedasmforreviewbody',
      desc: '',
      args: [],
    );
  }

  /// `Show All Submission`
  String get showallasmsubmission {
    return Intl.message(
      'Show All Submission',
      name: 'showallasmsubmission',
      desc: '',
      args: [],
    );
  }

  /// `Show All Assignments`
  String get showallasm {
    return Intl.message(
      'Show All Assignments',
      name: 'showallasm',
      desc: '',
      args: [],
    );
  }

  /// `You have not yet created assignment for this course. All assignments will be displayed here.`
  String get noasmcreated {
    return Intl.message(
      'You have not yet created assignment for this course. All assignments will be displayed here.',
      name: 'noasmcreated',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get goback {
    return Intl.message(
      'Back',
      name: 'goback',
      desc: '',
      args: [],
    );
  }

  /// `Student Submissions`
  String get studentsubmission {
    return Intl.message(
      'Student Submissions',
      name: 'studentsubmission',
      desc: '',
      args: [],
    );
  }

  /// `{name}'s Submission`
  String hisSubmission(Object name) {
    return Intl.message(
      '$name\'s Submission',
      name: 'hisSubmission',
      desc: '',
      args: [name],
    );
  }

  /// `Grade This Asm`
  String get gradethisasm {
    return Intl.message(
      'Grade This Asm',
      name: 'gradethisasm',
      desc: '',
      args: [],
    );
  }

  /// `Graded`
  String get gradedalreadythisasm {
    return Intl.message(
      'Graded',
      name: 'gradedalreadythisasm',
      desc: '',
      args: [],
    );
  }

  /// `Earned Marks`
  String get earnedMarks {
    return Intl.message(
      'Earned Marks',
      name: 'earnedMarks',
      desc: '',
      args: [],
    );
  }

  /// `Pin This Asm`
  String get showpublicasm {
    return Intl.message(
      'Pin This Asm',
      name: 'showpublicasm',
      desc: '',
      args: [],
    );
  }

  /// `Join To Continue`
  String get freepreviewplsbuy {
    return Intl.message(
      'Join To Continue',
      name: 'freepreviewplsbuy',
      desc: '',
      args: [],
    );
  }

  /// `Search Results`
  String get searchresult {
    return Intl.message(
      'Search Results',
      name: 'searchresult',
      desc: '',
      args: [],
    );
  }

  /// `Create New Course`
  String get createnewcourse {
    return Intl.message(
      'Create New Course',
      name: 'createnewcourse',
      desc: '',
      args: [],
    );
  }

  /// `Editing Course`
  String get editingcourse {
    return Intl.message(
      'Editing Course',
      name: 'editingcourse',
      desc: '',
      args: [],
    );
  }

  /// `Create New Product`
  String get createnewproduct {
    return Intl.message(
      'Create New Product',
      name: 'createnewproduct',
      desc: '',
      args: [],
    );
  }

  /// `Editing Product`
  String get editingproduct {
    return Intl.message(
      'Editing Product',
      name: 'editingproduct',
      desc: '',
      args: [],
    );
  }

  /// `Create New Post`
  String get createnewpost {
    return Intl.message(
      'Create New Post',
      name: 'createnewpost',
      desc: '',
      args: [],
    );
  }

  /// `Editing Post`
  String get editingpost {
    return Intl.message(
      'Editing Post',
      name: 'editingpost',
      desc: '',
      args: [],
    );
  }

  /// `Add New Event`
  String get createevent {
    return Intl.message(
      'Add New Event',
      name: 'createevent',
      desc: '',
      args: [],
    );
  }

  /// `Editing Event`
  String get editingevent {
    return Intl.message(
      'Editing Event',
      name: 'editingevent',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continuelearning {
    return Intl.message(
      'Continue',
      name: 'continuelearning',
      desc: '',
      args: [],
    );
  }

  /// `This name is available`
  String get acnamecanuse {
    return Intl.message(
      'This name is available',
      name: 'acnamecanuse',
      desc: '',
      args: [],
    );
  }

  /// `This name has been taken`
  String get acnametaken {
    return Intl.message(
      'This name has been taken',
      name: 'acnametaken',
      desc: '',
      args: [],
    );
  }

  /// `Enter user name`
  String get enterusername {
    return Intl.message(
      'Enter user name',
      name: 'enterusername',
      desc: '',
      args: [],
    );
  }

  /// `User name exceed max length`
  String get nametoolong {
    return Intl.message(
      'User name exceed max length',
      name: 'nametoolong',
      desc: '',
      args: [],
    );
  }

  /// `User name too short`
  String get nametooshort {
    return Intl.message(
      'User name too short',
      name: 'nametooshort',
      desc: '',
      args: [],
    );
  }

  /// `Already Create {num} Drafts`
  String alreadymanydrafts(Object num) {
    return Intl.message(
      'Already Create $num Drafts',
      name: 'alreadymanydrafts',
      desc: '',
      args: [num],
    );
  }

  /// `Creator can simlutaneously create {num} draft courses. Please publish or create existing draft courses.`
  String alreadymanydraftsdoby(Object num) {
    return Intl.message(
      'Creator can simlutaneously create $num draft courses. Please publish or create existing draft courses.',
      name: 'alreadymanydraftsdoby',
      desc: '',
      args: [num],
    );
  }

  /// `View Draft Courses`
  String get viewdraftcourse {
    return Intl.message(
      'View Draft Courses',
      name: 'viewdraftcourse',
      desc: '',
      args: [],
    );
  }

  /// `Editing Now`
  String get editingnow {
    return Intl.message(
      'Editing Now',
      name: 'editingnow',
      desc: '',
      args: [],
    );
  }

  /// `Please save and exit edit mode to continue`
  String get endeditingtocontinue {
    return Intl.message(
      'Please save and exit edit mode to continue',
      name: 'endeditingtocontinue',
      desc: '',
      args: [],
    );
  }

  /// `~HK$ {num}`
  String abouthkd(Object num) {
    return Intl.message(
      '~HK\$ $num',
      name: 'abouthkd',
      desc: '',
      args: [num],
    );
  }

  /// `~NTD {num}`
  String aboutntd(Object num) {
    return Intl.message(
      '~NTD $num',
      name: 'aboutntd',
      desc: '',
      args: [num],
    );
  }

  /// `~USD {num}`
  String aboutusd(Object num) {
    return Intl.message(
      '~USD $num',
      name: 'aboutusd',
      desc: '',
      args: [num],
    );
  }

  /// `HKD`
  String get hkd {
    return Intl.message(
      'HKD',
      name: 'hkd',
      desc: '',
      args: [],
    );
  }

  /// `NTD`
  String get ntd {
    return Intl.message(
      'NTD',
      name: 'ntd',
      desc: '',
      args: [],
    );
  }

  /// `USD`
  String get usd {
    return Intl.message(
      'USD',
      name: 'usd',
      desc: '',
      args: [],
    );
  }

  /// `Starcoin Rate`
  String get starcoinrate {
    return Intl.message(
      'Starcoin Rate',
      name: 'starcoinrate',
      desc: '',
      args: [],
    );
  }

  /// `Starcoin Count`
  String get starcoincount {
    return Intl.message(
      'Starcoin Count',
      name: 'starcoincount',
      desc: '',
      args: [],
    );
  }

  /// `NO`
  String get no {
    return Intl.message(
      'NO',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `YES`
  String get yes {
    return Intl.message(
      'YES',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `Enjoy 14 Days Return Guarantee After Enrollment, Read More: `
  String get enjoyrefundpolicy {
    return Intl.message(
      'Enjoy 14 Days Return Guarantee After Enrollment, Read More: ',
      name: 'enjoyrefundpolicy',
      desc: '',
      args: [],
    );
  }

  /// `Course Enrollment Policy`
  String get courseenrollmentpolicy {
    return Intl.message(
      'Course Enrollment Policy',
      name: 'courseenrollmentpolicy',
      desc: '',
      args: [],
    );
  }

  /// `Enrol Course`
  String get enrolcourse {
    return Intl.message(
      'Enrol Course',
      name: 'enrolcourse',
      desc: '',
      args: [],
    );
  }

  /// `Order Details`
  String get orderdetails {
    return Intl.message(
      'Order Details',
      name: 'orderdetails',
      desc: '',
      args: [],
    );
  }

  /// `This order will be paid in Starcoins`
  String get orderinstarcoin {
    return Intl.message(
      'This order will be paid in Starcoins',
      name: 'orderinstarcoin',
      desc: '',
      args: [],
    );
  }

  /// `Discounted {percentage}%`
  String discountedpercentage(Object percentage) {
    return Intl.message(
      'Discounted $percentage%',
      name: 'discountedpercentage',
      desc: '',
      args: [percentage],
    );
  }

  /// `Apply Course Coupon`
  String get usecoupon {
    return Intl.message(
      'Apply Course Coupon',
      name: 'usecoupon',
      desc: '',
      args: [],
    );
  }

  /// `Enter Coupon Code`
  String get entercouponcode {
    return Intl.message(
      'Enter Coupon Code',
      name: 'entercouponcode',
      desc: '',
      args: [],
    );
  }

  /// `Redeemed {code}`
  String redeemcode(Object code) {
    return Intl.message(
      'Redeemed $code',
      name: 'redeemcode',
      desc: '',
      args: [code],
    );
  }

  /// `Enjoy {percentage}% Discount`
  String enjoydiscount(Object percentage) {
    return Intl.message(
      'Enjoy $percentage% Discount',
      name: 'enjoydiscount',
      desc: '',
      args: [percentage],
    );
  }

  /// `This coupon is available`
  String get couponapplicable {
    return Intl.message(
      'This coupon is available',
      name: 'couponapplicable',
      desc: '',
      args: [],
    );
  }

  /// `This coupon is not available`
  String get couponnotapplicable {
    return Intl.message(
      'This coupon is not available',
      name: 'couponnotapplicable',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Purchase Product`
  String get confirmpurchaseproduct {
    return Intl.message(
      'Confirm Purchase Product',
      name: 'confirmpurchaseproduct',
      desc: '',
      args: [],
    );
  }

  /// `Agree and Pay Starcoin`
  String get agreeandpaystarcoin {
    return Intl.message(
      'Agree and Pay Starcoin',
      name: 'agreeandpaystarcoin',
      desc: '',
      args: [],
    );
  }

  /// `Offline Purchase`
  String get offlinepurchase {
    return Intl.message(
      'Offline Purchase',
      name: 'offlinepurchase',
      desc: '',
      args: [],
    );
  }

  /// `Purchase Item`
  String get purchaseitem {
    return Intl.message(
      'Purchase Item',
      name: 'purchaseitem',
      desc: '',
      args: [],
    );
  }

  /// `Item Name`
  String get itemname {
    return Intl.message(
      'Item Name',
      name: 'itemname',
      desc: '',
      args: [],
    );
  }

  /// `Status`
  String get itemstatus {
    return Intl.message(
      'Status',
      name: 'itemstatus',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get itemprice {
    return Intl.message(
      'Price',
      name: 'itemprice',
      desc: '',
      args: [],
    );
  }

  /// `Discount`
  String get discount {
    return Intl.message(
      'Discount',
      name: 'discount',
      desc: '',
      args: [],
    );
  }

  /// `Acutal Payment`
  String get actualpayment {
    return Intl.message(
      'Acutal Payment',
      name: 'actualpayment',
      desc: '',
      args: [],
    );
  }

  /// `Payment Method`
  String get paymentmethod {
    return Intl.message(
      'Payment Method',
      name: 'paymentmethod',
      desc: '',
      args: [],
    );
  }

  /// `Payment Info`
  String get paymentinfo {
    return Intl.message(
      'Payment Info',
      name: 'paymentinfo',
      desc: '',
      args: [],
    );
  }

  /// `Contact Email`
  String get contactemail {
    return Intl.message(
      'Contact Email',
      name: 'contactemail',
      desc: '',
      args: [],
    );
  }

  /// `Purchase User`
  String get purchaseuser {
    return Intl.message(
      'Purchase User',
      name: 'purchaseuser',
      desc: '',
      args: [],
    );
  }

  /// `Purchase Date`
  String get purchasedate {
    return Intl.message(
      'Purchase Date',
      name: 'purchasedate',
      desc: '',
      args: [],
    );
  }

  /// `Click to indicate that you have read and agreed: `
  String get clicktoagree {
    return Intl.message(
      'Click to indicate that you have read and agreed: ',
      name: 'clicktoagree',
      desc: '',
      args: [],
    );
  }

  /// `Course Enrollment Policy`
  String get courseenrolpolicy {
    return Intl.message(
      'Course Enrollment Policy',
      name: 'courseenrolpolicy',
      desc: '',
      args: [],
    );
  }

  /// `Cancal Payment`
  String get cancelpayment {
    return Intl.message(
      'Cancal Payment',
      name: 'cancelpayment',
      desc: '',
      args: [],
    );
  }

  /// `Student Count`
  String get studentcount {
    return Intl.message(
      'Student Count',
      name: 'studentcount',
      desc: '',
      args: [],
    );
  }

  /// `Course Duration`
  String get totalcoursetime {
    return Intl.message(
      'Course Duration',
      name: 'totalcoursetime',
      desc: '',
      args: [],
    );
  }

  /// `Complete`
  String get icompleted {
    return Intl.message(
      'Complete',
      name: 'icompleted',
      desc: '',
      args: [],
    );
  }

  /// `Started`
  String get istarted {
    return Intl.message(
      'Started',
      name: 'istarted',
      desc: '',
      args: [],
    );
  }

  /// `lessons`
  String get lesson {
    return Intl.message(
      'lessons',
      name: 'lesson',
      desc: '',
      args: [],
    );
  }

  /// `My Income`
  String get creatorincome {
    return Intl.message(
      'My Income',
      name: 'creatorincome',
      desc: '',
      args: [],
    );
  }

  /// `Recent Orders`
  String get recentorders {
    return Intl.message(
      'Recent Orders',
      name: 'recentorders',
      desc: '',
      args: [],
    );
  }

  /// `Total Orders`
  String get totalorders {
    return Intl.message(
      'Total Orders',
      name: 'totalorders',
      desc: '',
      args: [],
    );
  }

  /// `Avg. Costs`
  String get averagecosts {
    return Intl.message(
      'Avg. Costs',
      name: 'averagecosts',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get price {
    return Intl.message(
      'Price',
      name: 'price',
      desc: '',
      args: [],
    );
  }

  /// `Product`
  String get product {
    return Intl.message(
      'Product',
      name: 'product',
      desc: '',
      args: [],
    );
  }

  /// `Order Date`
  String get orderdate {
    return Intl.message(
      'Order Date',
      name: 'orderdate',
      desc: '',
      args: [],
    );
  }

  /// `My Purchase Record`
  String get mypurchaserecord {
    return Intl.message(
      'My Purchase Record',
      name: 'mypurchaserecord',
      desc: '',
      args: [],
    );
  }

  /// `Order Success`
  String get ordersuccess {
    return Intl.message(
      'Order Success',
      name: 'ordersuccess',
      desc: '',
      args: [],
    );
  }

  /// `Order Refunded`
  String get orderrefunded {
    return Intl.message(
      'Order Refunded',
      name: 'orderrefunded',
      desc: '',
      args: [],
    );
  }

  /// `No Purchase Record Yet`
  String get nopurchaseyet {
    return Intl.message(
      'No Purchase Record Yet',
      name: 'nopurchaseyet',
      desc: '',
      args: [],
    );
  }

  /// `No Order Record Yet`
  String get noorderyet {
    return Intl.message(
      'No Order Record Yet',
      name: 'noorderyet',
      desc: '',
      args: [],
    );
  }

  /// `My Purchase`
  String get mypurchase {
    return Intl.message(
      'My Purchase',
      name: 'mypurchase',
      desc: '',
      args: [],
    );
  }

  /// `Starcoin Record`
  String get starcoinrecord {
    return Intl.message(
      'Starcoin Record',
      name: 'starcoinrecord',
      desc: '',
      args: [],
    );
  }

  /// `Purchased Starcoin`
  String get mypurchasedstarcoin {
    return Intl.message(
      'Purchased Starcoin',
      name: 'mypurchasedstarcoin',
      desc: '',
      args: [],
    );
  }

  /// `Received Starcoin`
  String get myreceivedstarcoin {
    return Intl.message(
      'Received Starcoin',
      name: 'myreceivedstarcoin',
      desc: '',
      args: [],
    );
  }

  /// `Category`
  String get starcoincategory {
    return Intl.message(
      'Category',
      name: 'starcoincategory',
      desc: '',
      args: [],
    );
  }

  /// `Enquire`
  String get EnquireOrder {
    return Intl.message(
      'Enquire',
      name: 'EnquireOrder',
      desc: '',
      args: [],
    );
  }

  /// `Trans. Success`
  String get withdrawalsuccess {
    return Intl.message(
      'Trans. Success',
      name: 'withdrawalsuccess',
      desc: '',
      args: [],
    );
  }

  /// `Trans. Pending`
  String get withdrawalpending {
    return Intl.message(
      'Trans. Pending',
      name: 'withdrawalpending',
      desc: '',
      args: [],
    );
  }

  /// `Trans. Denied`
  String get withdrawaldenied {
    return Intl.message(
      'Trans. Denied',
      name: 'withdrawaldenied',
      desc: '',
      args: [],
    );
  }

  /// `Withdraw To`
  String get withdrawalto {
    return Intl.message(
      'Withdraw To',
      name: 'withdrawalto',
      desc: '',
      args: [],
    );
  }

  /// `Withdrawal Date`
  String get withdrawaldate {
    return Intl.message(
      'Withdrawal Date',
      name: 'withdrawaldate',
      desc: '',
      args: [],
    );
  }

  /// `Transfered Date`
  String get transferreddate {
    return Intl.message(
      'Transfered Date',
      name: 'transferreddate',
      desc: '',
      args: [],
    );
  }

  /// `Purchase`
  String get purchase {
    return Intl.message(
      'Purchase',
      name: 'purchase',
      desc: '',
      args: [],
    );
  }

  /// `Earning`
  String get earning {
    return Intl.message(
      'Earning',
      name: 'earning',
      desc: '',
      args: [],
    );
  }

  /// `Withdrawal Record`
  String get withdrawalrecord {
    return Intl.message(
      'Withdrawal Record',
      name: 'withdrawalrecord',
      desc: '',
      args: [],
    );
  }

  /// `Current Balance`
  String get currentbalance {
    return Intl.message(
      'Current Balance',
      name: 'currentbalance',
      desc: '',
      args: [],
    );
  }

  /// `No Withdrawal Record Yet`
  String get nowithdrawalrecord {
    return Intl.message(
      'No Withdrawal Record Yet',
      name: 'nowithdrawalrecord',
      desc: '',
      args: [],
    );
  }

  /// `No Profit Record Yet`
  String get noprofitrecord {
    return Intl.message(
      'No Profit Record Yet',
      name: 'noprofitrecord',
      desc: '',
      args: [],
    );
  }

  /// `All Purchase Record`
  String get allpurchaserecord {
    return Intl.message(
      'All Purchase Record',
      name: 'allpurchaserecord',
      desc: '',
      args: [],
    );
  }

  /// `All Order Record`
  String get allorderrecord {
    return Intl.message(
      'All Order Record',
      name: 'allorderrecord',
      desc: '',
      args: [],
    );
  }

  /// `Current Starcoin Balance`
  String get currentaccountbalance {
    return Intl.message(
      'Current Starcoin Balance',
      name: 'currentaccountbalance',
      desc: '',
      args: [],
    );
  }

  /// `In-app Purchase`
  String get inapppurchase {
    return Intl.message(
      'In-app Purchase',
      name: 'inapppurchase',
      desc: '',
      args: [],
    );
  }

  /// `Credit Card`
  String get creditcardpurchase {
    return Intl.message(
      'Credit Card',
      name: 'creditcardpurchase',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Payment`
  String get confirmpayment {
    return Intl.message(
      'Confirm Payment',
      name: 'confirmpayment',
      desc: '',
      args: [],
    );
  }

  /// `Charge Amount`
  String get chargeamount {
    return Intl.message(
      'Charge Amount',
      name: 'chargeamount',
      desc: '',
      args: [],
    );
  }

  /// `Current Preview`
  String get currentpreview {
    return Intl.message(
      'Current Preview',
      name: 'currentpreview',
      desc: '',
      args: [],
    );
  }

  /// `In Preparation`
  String get inpreparation {
    return Intl.message(
      'In Preparation',
      name: 'inpreparation',
      desc: '',
      args: [],
    );
  }

  /// `This Credit Card Failed. Please Check.`
  String get creditcardfailed {
    return Intl.message(
      'This Credit Card Failed. Please Check.',
      name: 'creditcardfailed',
      desc: '',
      args: [],
    );
  }

  /// `Create New Account`
  String get createaccount {
    return Intl.message(
      'Create New Account',
      name: 'createaccount',
      desc: '',
      args: [],
    );
  }

  /// `I'm Visitor`
  String get visitormode {
    return Intl.message(
      'I\'m Visitor',
      name: 'visitormode',
      desc: '',
      args: [],
    );
  }

  /// `For a healthy community`
  String get forahealthycommunity {
    return Intl.message(
      'For a healthy community',
      name: 'forahealthycommunity',
      desc: '',
      args: [],
    );
  }

  /// `The following Chinese Email are not open for registration:`
  String get rejectchineseemail {
    return Intl.message(
      'The following Chinese Email are not open for registration:',
      name: 'rejectchineseemail',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Register Account`
  String get registerac {
    return Intl.message(
      'Register Account',
      name: 'registerac',
      desc: '',
      args: [],
    );
  }

  /// `No Registration For Chinese Email Address`
  String get nochineseemail {
    return Intl.message(
      'No Registration For Chinese Email Address',
      name: 'nochineseemail',
      desc: '',
      args: [],
    );
  }

  /// `Error Please Try Again`
  String get errorpleasetry {
    return Intl.message(
      'Error Please Try Again',
      name: 'errorpleasetry',
      desc: '',
      args: [],
    );
  }

  /// `Align the QR code within the frame to scan`
  String get alignqrcodewithframe {
    return Intl.message(
      'Align the QR code within the frame to scan',
      name: 'alignqrcodewithframe',
      desc: '',
      args: [],
    );
  }

  /// `Recommend For You`
  String get recommendforyou {
    return Intl.message(
      'Recommend For You',
      name: 'recommendforyou',
      desc: '',
      args: [],
    );
  }

  /// `Login with email and password`
  String get loginwithemailpw {
    return Intl.message(
      'Login with email and password',
      name: 'loginwithemailpw',
      desc: '',
      args: [],
    );
  }

  /// `Login with social accounts`
  String get loginwithsocial {
    return Intl.message(
      'Login with social accounts',
      name: 'loginwithsocial',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Apple`
  String get signinwithapple {
    return Intl.message(
      'Sign in with Apple',
      name: 'signinwithapple',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Google`
  String get signinwithgoogle {
    return Intl.message(
      'Sign in with Google',
      name: 'signinwithgoogle',
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
      Locale.fromSubtags(languageCode: 'zh', countryCode: 'HK'),
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
