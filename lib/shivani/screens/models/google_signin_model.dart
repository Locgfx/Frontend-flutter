class GoogleSignInModel {
  String? iss;
  String? azp;
  String? aud;
  String? sub;
  String? email;
  String? emailVerified;
  String? name;
  String? picture;
  String? givenName;
  String? familyName;
  String? locale;
  String? iat;
  String? exp;
  String? alg;
  String? kid;
  String? typ;

  GoogleSignInModel(
      {this.iss,
        this.azp,
        this.aud,
        this.sub,
        this.email,
        this.emailVerified,
        this.name,
        this.picture,
        this.givenName,
        this.familyName,
        this.locale,
        this.iat,
        this.exp,
        this.alg,
        this.kid,
        this.typ});

  GoogleSignInModel.fromJson(Map<String, dynamic> json) {
    iss = json['iss'];
    azp = json['azp'];
    aud = json['aud'];
    sub = json['sub'];
    email = json['email'];
    emailVerified = json['email_verified'];
    name = json['name'];
    picture = json['picture'];
    givenName = json['given_name'];
    familyName = json['family_name'];
    locale = json['locale'];
    iat = json['iat'];
    exp = json['exp'];
    alg = json['alg'];
    kid = json['kid'];
    typ = json['typ'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['iss'] = this.iss;
    data['azp'] = this.azp;
    data['aud'] = this.aud;
    data['sub'] = this.sub;
    data['email'] = this.email;
    data['email_verified'] = this.emailVerified;
    data['name'] = this.name;
    data['picture'] = this.picture;
    data['given_name'] = this.givenName;
    data['family_name'] = this.familyName;
    data['locale'] = this.locale;
    data['iat'] = this.iat;
    data['exp'] = this.exp;
    data['alg'] = this.alg;
    data['kid'] = this.kid;
    data['typ'] = this.typ;
    return data;
  }
}
