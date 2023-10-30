import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class FingerPrintAuth {
  static final auth = LocalAuthentication();
  bool? hasBio;

  Future<void> checkBio() async {
    try {
      hasBio = await auth.canCheckBiometrics;

      if (hasBio!) {
        authenticate();
      }
      print(hasBio);
    } on PlatformException catch (e) {
      print(e);
    }
  }

  static Future<bool> authenticate() async {
    bool isAuth = false;
    try {
      isAuth = await auth.authenticate(
        localizedReason: "Scan FingerPrint",
        options: const AuthenticationOptions(
          biometricOnly: true,
          useErrorDialogs: true,
          stickyAuth: true,
        ),
      );
      print(isAuth);
      return isAuth;
    } on Exception catch (e) {
      return isAuth;
    }
  }
}
