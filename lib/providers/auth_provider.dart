import 'dart:convert';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:crypto/crypto.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebaseAuth;
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class AuthProvider with ChangeNotifier {
  FirebaseFirestore _db = FirebaseFirestore.instance;
  final _firebaseAuth = firebaseAuth.FirebaseAuth.instance;
  bool _isAutoLogin = true;
  bool get isAutoLogin => _isAutoLogin;
  set changeIsAutoLogin(bool _isAutoLoginInput) {
    _isAutoLogin = _isAutoLoginInput;
    notifyListeners();
  }

  List _activeDevice = [];
  List get activeDevice => _activeDevice;
  set changeActiveDevice(List _activeDeviceInput) {
    _activeDevice = _activeDeviceInput;
    notifyListeners();
  }

  String? _userId;
  String? get userId => _userId;
  set changeUserId(String? _userIdInput) {
    _userId = _userIdInput;
    notifyListeners();
  }

  String? _userEmail;
  String? get userEmail => _userEmail;
  set changeUserEmail(String? _userEmailInput) {
    _userEmail = _userEmailInput;
    notifyListeners();
  }

  String? _userJoinDate;
  String? get userJoinDate => _userJoinDate;
  set changeUserJoinDate(String? _userJoinDateInput) {
    _userJoinDate = _userJoinDateInput;
    notifyListeners();
  }

  String? _userDisplayName;
  String? get userDisplayName => _userDisplayName;
  set changeUserDisplayName(String? _userDisplayNameInput) {
    _userDisplayName = _userDisplayNameInput;
    notifyListeners();
  }

  String? _userPassword;
  String? get userPassword => _userPassword;
  set changeUserPassword(String? _userPasswordInput) {
    _userPassword = _userPasswordInput;
    notifyListeners();
  }

  String? _userProfileImgURL;
  String? get userProfileImgURL => _userProfileImgURL;
  set changeUserProfileImgURL(String? _userProfileImgURLInput) {
    _userProfileImgURL = _userProfileImgURLInput;
    notifyListeners();
  }

  String? _userProfileBackground;
  String? get userProfileBackground => _userProfileBackground;
  set changeUserProfileBackground(String? _userProfileBackgroundInput) {
    _userProfileBackground = _userProfileBackgroundInput;
    notifyListeners();
  }

  String? _userLeftWord;
  String? get userLeftWord => _userLeftWord;
  set changeUserLeftWord(String? _userLeftWordInput) {
    _userLeftWord = _userLeftWordInput;
    notifyListeners();
  }

  String? _userRightWord;
  String? get userRightWord => _userRightWord;
  set changeUserRightWord(String? _userRightWordInput) {
    _userRightWord = _userRightWordInput;
    notifyListeners();
  }

  //=userbio
  String? _userMotto;
  String? get userMotto => _userMotto;
  set changeUserMotto(String? _userMottoinput) {
    _userMotto = _userMottoinput;
    notifyListeners();
  }

  String? _userNameMaskColorChoice;
  String? get userNameMaskColorChoice => _userNameMaskColorChoice;
  set changeUserNameMaskColorChoice(String? _userNameMaskColorChoiceInput) {
    _userNameMaskColorChoice = _userNameMaskColorChoiceInput;
    notifyListeners();
  }

  String? _userMasterFolderId;
  String? get userMasterFolderId => _userMasterFolderId;
  set changeUserMasterFolderId(String? _userMasterFolderIdInput) {
    _userMasterFolderId = _userMasterFolderIdInput;
    notifyListeners();
  }

  //儲存量 in bytes
  int _userMediaStorageCount = 0;
  int get userMediaStorageCount => _userMediaStorageCount;
  set changeUserMediaStorageCount(int _userMediaStorageCountInput) {
    _userMediaStorageCount = _userMediaStorageCountInput;
    notifyListeners();
  }

  //儲存量 Available in bytes
  int _userMediaStorageAvailable = 0;
  int get userMediaStorageAvailable => _userMediaStorageAvailable;
  set changeUserMediaStorageAvailable(int _userMediaStorageAvailableInput) {
    _userMediaStorageAvailable = _userMediaStorageAvailableInput;
    notifyListeners();
  }

  List? _userProfileLinks;
  List? get userProfileLinks => _userProfileLinks;
  set changeUserProfileLinks(List? _userProfileLinksInput) {
    _userProfileLinks = _userProfileLinksInput;
    notifyListeners();
  }

  Map? _userSocialLinks;
  Map? get userSocialLinks => _userSocialLinks;
  set changeUserSocialLinks(Map? _userSocialLinksInput) {
    _userSocialLinks = _userSocialLinksInput;
    notifyListeners();
  }

  //according to phone code, e.g. 0 for unidentified, +852 for HK, +886 for TW
  int _userNationality = 852;
  int get userNationality => _userNationality;
  set changeUserNationality(int _userNationalityInput) {
    _userNationality = _userNationalityInput;
    notifyListeners();
  }

  //according to phone code, e.g. 0 for unidentified, +852 for HK, +886 for TW
  int _userAppLanguage = 852;
  int get userAppLanguage => _userAppLanguage;
  set changeUserAppLanguage(int _userAppLanguageInput) {
    _userAppLanguage = _userAppLanguageInput;
    notifyListeners();
  }

  int _userAppDollar = 0;
  int get userAppDollar => _userAppDollar;
  set changeUserAppDollar(int _userAppDollarInput) {
    _userAppDollar = _userAppDollarInput;
    notifyListeners();
  }

  int _publishCourseChanceCount = 0;
  int get publishCourseChanceCount => _publishCourseChanceCount;
  set changePublishCourseChanceCount(int _publishCourseChanceCountInput) {
    _publishCourseChanceCount = _publishCourseChanceCountInput;
    notifyListeners();
  }

  int _userFollowersCount = 0;
  int get userFollowersCount => _userFollowersCount;
  set changeUserFollowersCount(int _userFollowersCountInput) {
    _userFollowersCount = _userFollowersCountInput;
    notifyListeners();
  }

  int _userFollowingCount = 0;
  int get userFollowingCount => _userFollowingCount;
  set changeUserFollowingCount(int _userFollowingCountInput) {
    _userFollowingCount = _userFollowingCountInput;
    notifyListeners();
  }

  bool _isUserAcVerified = false;
  bool get isUserAcVerified => _isUserAcVerified;
  set changeIsUserAcVerified(bool _isUserAcVerifiedInput) {
    _isUserAcVerified = _isUserAcVerifiedInput;
    notifyListeners();
  }

  bool _isUserAcPublic = false;
  bool get isUserAcPublic => _isUserAcPublic;
  set changeIsUserAcPublic(bool _isUserAcPublicInput) {
    _isUserAcPublic = _isUserAcPublicInput;
    notifyListeners();
  }

  bool _isUserEmailable = false;
  bool get isUserEmailable => _isUserEmailable;
  set changeIsUserEmailalbe(bool _isUserEmailableInput) {
    _isUserEmailable = _isUserEmailableInput;
    notifyListeners();
  }

  bool _isUserLoggedIn = false;
  bool get isUserLoggedIn => _isUserLoggedIn;
  set changeIsuserLoggedIn(bool _isUserLoggedInInput) {
    _isUserLoggedIn = _isUserLoggedInInput;
    notifyListeners();
  }

  bool _isUserBanned = false;
  bool get isUserBanned => _isUserBanned;
  set changeIsUserBanned(bool _isUserBannedInput) {
    _isUserBanned = _isUserBannedInput;
    notifyListeners();
  }

  int _activeDeviceCount = 0;
  int get activeDeviceCount => _activeDeviceCount;
  set changeActiveDeviceCount(int _activeDeviceCountInput) {
    _activeDeviceCount = _activeDeviceCountInput;
    notifyListeners();
  }

  Future<void> emailLogin(BuildContext context, String _userLoginEmailInput,
      String _userLoginPasswordInput) async {
    final sharedPrefs = await SharedPreferences.getInstance();
    try {
      firebaseAuth.User? _loginUser =
          (await _firebaseAuth.signInWithEmailAndPassword(
                  email: _userLoginEmailInput,
                  password: _userLoginPasswordInput))
              .user;

      changeUserId = _loginUser?.uid;
      print(_userId);
    } catch (e) {
      print("auth_provider - login: $e");
    }
  }

  Future<void>? logOut() async {
    final sharedPrefs = await SharedPreferences.getInstance();
    await _firebaseAuth.signOut();
  }

  /// Generates a cryptographically secure random nonce, to be included in a
  /// credential request.
  String generateNonce([int length = 32]) {
    final charset =
        '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
    final random = Random.secure();
    return List.generate(length, (_) => charset[random.nextInt(charset.length)])
        .join();
  }

  /// Returns the sha256 hash of [input] in hex notation.
  String sha256ofString(String input) {
    final bytes = utf8.encode(input);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }

  Future<UserCredential> signInWithApple() async {
    // To prevent replay attacks with the credential returned from Apple, we
    // include a nonce in the credential request. When signing in with
    // Firebase, the nonce in the id token returned by Apple, is expected to
    // match the sha256 hash of `rawNonce`.
    final rawNonce = generateNonce();
    final nonce = sha256ofString(rawNonce);

    // Request credential for the currently signed in Apple account.
    final appleCredential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
      nonce: nonce,
    );

    // Create an `OAuthCredential` from the credential returned by Apple.
    final oauthCredential = OAuthProvider("apple.com").credential(
      idToken: appleCredential.identityToken,
      rawNonce: rawNonce,
    );

    // Sign in the user with Firebase. If the nonce we generated earlier does
    // not match the nonce in `appleCredential.identityToken`, sign in will fail.
    return await FirebaseAuth.instance.signInWithCredential(oauthCredential);
  }

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  Future callLoginFunction() async {
    HttpsCallable callLogin = FirebaseFunctions.instance.httpsCallable('login',
        options: HttpsCallableOptions(timeout: Duration(seconds: 5)));
    try {
      final HttpsCallableResult result = await callLogin.call();
      print("auth call login ${result.data['response']}");
    } catch (e) {
      print('auth provider -callLoginFunction:$e');
    }
  }
}
