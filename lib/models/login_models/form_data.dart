class FormDataError {
  String name;
  String email;
  String otp;
  String password;
  String confirmPassword;

  FormDataError({
    required this.name,
    required this.email,
    required this.otp,
    required this.password,
    required this.confirmPassword,
  });

  @override
  bool operator ==(covariant FormDataError other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.email == email &&
        other.otp == otp &&
        other.password == password &&
        other.confirmPassword == confirmPassword;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        email.hashCode ^
        otp.hashCode ^
        password.hashCode ^
        confirmPassword.hashCode;
  }
}
