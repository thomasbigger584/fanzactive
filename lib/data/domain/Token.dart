class Token {
  final String idToken;

  const Token({
    this.idToken,
  });

  Token.fromMap(Map<String, dynamic> map) : idToken = map['id_token'];
}
