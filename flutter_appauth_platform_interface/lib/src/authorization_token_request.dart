import 'authorization_parameters.dart';
import 'authorization_service_configuration.dart';
import 'grant_types.dart';
import 'token_request.dart';

/// Details required for a combined authorization and code exchange request
class AuthorizationTokenRequest extends TokenRequest
    with AuthorizationParameters {
  AuthorizationTokenRequest(String clientId, String redirectUrl,
      {String loginHint,
      String clientSecret,
      List<String> scopes,
      AuthorizationServiceConfiguration serviceConfiguration,
      Map<String, String> additionalParameters,
      String issuer,
      String state,
      String discoveryUrl,
      List<String> promptValues,
      bool allowInsecureConnections = false})
      : super(clientId, redirectUrl,
            clientSecret: clientSecret,
            discoveryUrl: discoveryUrl,
            issuer: issuer,
            scopes: scopes,
            grantType: GrantType.authorizationCode,
            serviceConfiguration: serviceConfiguration,
            additionalParameters: additionalParameters,
            allowInsecureConnections: allowInsecureConnections) {
    this.state = state;
    this.loginHint = loginHint;
    this.promptValues = promptValues;
  }
}
