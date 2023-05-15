class patient {
  String name;
  String email;
  String phone;
  String id;
  String address;
  String marital_status;
  String DOB;
  String blood;
  String height;
  String weight;

  patient(
      {required this.name,
      required this.email,
      required this.phone,
      required this.id,
      required this.address,
      required this.marital_status,
      this.DOB = "",
      this.blood = "",
      this.height = "",
      this.weight = ""
      });

  factory patient.fromJson(Map<String, dynamic> json) {
    return patient(
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      id: json['id'],
      address: json['address'],
      marital_status: json['marital_status'],
      DOB: json['DOB'],
      blood: json['blood'],
      height: json['height'],
      weight: json['weight'],
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'phone': phone,
        'id': id,
        'address': address,
        'marital_status': marital_status,
        'DOB': DOB,
        'blood': blood,
        'height': height,
        'weight': weight,
  };

  @override
  String toString() {
    return 'patient{name: $name, email: $email, phone: $phone, id: $id, address: $address, marital_status: $marital_status}';
  }


}