void main() {
  /// This is without normal function
  final String input = 'ABCD';
  final decode = encode(input);
  print('Normal method: $decode \n');

  /// With [Extension] on
  final secret = 'abcd'.encoded; // we can pass it value without parentheses.
  print('Extension on: $secret \n');

  /// more examples to call [extension]
  final language = ProgrammingLanguage.dart;
  print('More Extension:  ${language.isStronglyTyped} \n');

  /// Refactoring to remove code duplication
  /// Refactor String
  final original = 'I like extensions';
  final theSecret = original.theEncoded;
  final revealed = original.theDecoded;
  print(theSecret);
  print(revealed);
}

/// Normal method
String encode(String input) {
  final output = StringBuffer();
  for (final codePoint in input.runes) {
    output.writeCharCode(codePoint + 1);
  }
  return output.toString();
}

/// Using [Extensions]
///  Here's how it declare
/// The keyword `extension on` are what make this an extension.
/// We can add whatever we want inside the body.
/// It is as if [String] were our own class.
extension on String {
  /// Rather than using a normal method instead we use [getter]
  /// This makes it so that we can call the extension using just [encoded],
  /// rather than [encoded()] without [parentheses].
  String get encoded {
    final output = StringBuffer();
    for (final codePoint in runes) {
      output.writeCharCode(codePoint + 1);
    }
    return output.toString();
  }
} //
/// Since we're inside [String] already,
///  there are no need to pass [input] as an argument. If we need a reference
/// to the string object, we can use the [this] keyword.
///  So, instead of [input.runes] we could write [this.runes] instead.
/// Even though [this] is unnecessary, we can just directly access [runes].
/// Keep that in mind, [runes] is a member of [String] and we're inside the [String].

//
/// More examples about [extension]
///
enum ProgrammingLanguage {
  dart,
  swift,
  JavaScript,
}

extension on ProgrammingLanguage {
  bool get isStronglyTyped {
    switch (this) {
      case ProgrammingLanguage.dart:
      case ProgrammingLanguage.swift:
        return true;
      case ProgrammingLanguage.JavaScript:
        return false;
      default:
        throw Exception('Unknown Programming Language $this');
    }
  }
}

/// Refactoring to remove code duplication
/// Refactor String
extension on String {
  String get theEncoded {
    return _code(1);
  }

  String get theDecoded {
    return _code(-1);
  }

  String _code(int step) {
    final output = StringBuffer();
    for (final codePoint in runes) {
      output.writeCharCode(codePoint + step);
    }
    return output.toString();
  }
}
