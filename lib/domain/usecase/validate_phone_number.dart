abstract class ValidatePhoneNumberUseCase {
  Future<bool> call(String phoneNumber);
}

class DefaultValidatePhoneNumberUseCase implements ValidatePhoneNumberUseCase {
  @override
  Future<bool> call(String phoneNumber) async {
    const String pattern = r'(\(\d{3}\) \d{3}-\d{4})';
    final RegExp regExp = RegExp(pattern);
    if (phoneNumber.isEmpty) {
      return false;
    } else if (!regExp.hasMatch(phoneNumber)) {
      return false;
    } else {
      return true;
    }
  }
}
