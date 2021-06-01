class Case {
  String name;
  String birthdate;
  String risk;
  String sex;
  String email;
  String phone;
  String address;
  String clasi;

  Case(this.name, this.birthdate, this.risk, this.sex, this.email, this.phone,
      this.address, this.clasi);

  factory Case.fromJson(dynamic json) {
    return Case(
      json['name'] as String,
      json['birthdate'] as String,
      json['risk'] as String,
      json['sex'] as String,
      json['email'] as String,
      json['phone'] as String,
      json['address'] as String,
      json['clasi'] as String,
    );
  }
}
