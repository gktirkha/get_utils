import '../get_utils/get_utils.dart';

/// Extension on [String] that provides additional utility methods for common string operations.
extension GetStringUtils on String {
  /// Checks if the string represents a numerical value.
  bool get isNum => GetUtils.isNum(this);

  /// Checks if the string contains only numerical characters.
  bool get isNumericOnly => GetUtils.isNumericOnly(this);

  /// Checks if the string contains only alphabetic characters.
  bool get isAlphabetOnly => GetUtils.isAlphabetOnly(this);

  /// Checks if the string represents a boolean value.
  bool get isBool => GetUtils.isBool(this);

  /// Checks if the string is a valid vector file name.
  bool get isVectorFileName => GetUtils.isVector(this);

  /// Checks if the string is a valid image file name.
  bool get isImageFileName => GetUtils.isImage(this);

  /// Checks if the string is a valid audio file name.
  bool get isAudioFileName => GetUtils.isAudio(this);

  /// Checks if the string is a valid video file name.
  bool get isVideoFileName => GetUtils.isVideo(this);

  /// Checks if the string is a valid text file name.
  bool get isTxtFileName => GetUtils.isTxt(this);

  /// Checks if the string is a valid document file name.
  bool get isDocumentFileName => GetUtils.isWord(this);

  /// Checks if the string is a valid Excel file name.
  bool get isExcelFileName => GetUtils.isExcel(this);

  /// Checks if the string is a valid PowerPoint file name.
  bool get isPPTFileName => GetUtils.isPPT(this);

  /// Checks if the string is a valid APK file name.
  bool get isAPKFileName => GetUtils.isAPK(this);

  /// Checks if the string is a valid PDF file name.
  bool get isPDFFileName => GetUtils.isPDF(this);

  /// Checks if the string is a valid HTML file name.
  bool get isHTMLFileName => GetUtils.isHTML(this);

  /// Checks if the string is a valid URL.
  bool get isURL => GetUtils.isURL(this);

  /// Checks if the string is a valid email address.
  bool get isEmail => GetUtils.isEmail(this);

  /// Checks if the string is a valid phone number.
  bool get isPhoneNumber => GetUtils.isPhoneNumber(this);

  /// Checks if the string is a valid date-time.
  bool get isDateTime => GetUtils.isDateTime(this);

  /// Checks if the string is a valid MD5 hash.
  bool get isMD5 => GetUtils.isMD5(this);

  /// Checks if the string is a valid SHA1 hash.
  bool get isSHA1 => GetUtils.isSHA1(this);

  /// Checks if the string is a valid SHA256 hash.
  bool get isSHA256 => GetUtils.isSHA256(this);

  /// Checks if the string is binary.
  bool get isBinary => GetUtils.isBinary(this);

  /// Checks if the string is a valid IPv4 address.
  bool get isIPv4 => GetUtils.isIPv4(this);

  /// Checks if the string is a valid IPv6 address.
  bool get isIPv6 => GetUtils.isIPv6(this);

  /// Checks if the string is a hexadecimal value.
  bool get isHexadecimal => GetUtils.isHexadecimal(this);

  /// Checks if the string is a palindrome.
  bool get isPalindrome => GetUtils.isPalindrome(this);

  /// Checks if the string is a valid passport number.
  bool get isPassport => GetUtils.isPassport(this);

  /// Checks if the string is a valid currency format.
  bool get isCurrency => GetUtils.isCurrency(this);

  /// Checks if the string is a valid Brazilian CPF number.
  bool get isCpf => GetUtils.isCpf(this);

  /// Checks if the string is a valid Brazilian CNPJ number.
  bool get isCNPJ => GetUtils.isCNPJ(this);

  /// Checks if the string contains the substring [b] in a case-insensitive manner.
  bool isCaseInsensitiveContains(String b) =>
      GetUtils.isCaseInsensitiveContains(this, b);

  /// Checks if the string contains any of the characters in the substring [b] in a case-insensitive manner.
  bool isCaseInsensitiveContainsAny(String b) =>
      GetUtils.isCaseInsensitiveContainsAny(this, b);

  /// Returns a new string with the first letter capitalized.
  String? get capitalize => GetUtils.capitalize(this);

  /// Returns a new string with the first letter of each word capitalized.
  String? get capitalizeFirst => GetUtils.capitalizeFirst(this);

  /// Returns a new string with all whitespace removed.
  String get removeAllWhitespace => GetUtils.removeAllWhitespace(this);

  /// Converts the string to camelCase.
  String? get camelCase => GetUtils.camelCase(this);

  /// Converts the string to param-case.
  String? get paramCase => GetUtils.paramCase(this);

  /// Returns a new string containing only the numeric characters from this string.
  ///
  /// If [firstWordOnly] is true, only the numeric characters in the first word are included.
  String numericOnly({bool firstWordOnly = false}) =>
      GetUtils.numericOnly(this, firstWordOnly: firstWordOnly);

  /// Creates a path by joining the string with the given [segments].
  ///
  /// The resulting path will start with a '/' if the string does not already start with one.
  String createPath([Iterable? segments]) {
    final path = startsWith('/') ? this : '/$this';
    return GetUtils.createPath(path, segments);
  }
}
