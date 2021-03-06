import 'mappable.dart';

mixin AuthorizationParameters on Mappable {
  /// Hint to the Authorization Server about the login identifier the End-User might use to log in
  String loginHint;

  /// list of ASCII string values that specifies whether the Authorization Server prompts the End-User for reauthentication and consent
  List<String> promptValues;

  // Used by Authorization Server to verify the login attempt. 
  String state;

  @override
  Map<String, dynamic> toMap() {
    final Map<String, dynamic> map = super.toMap();
    map['loginHint'] = loginHint;
    map['promptValues'] = promptValues;
    map['state'] = state;
    return map;
  }
}
