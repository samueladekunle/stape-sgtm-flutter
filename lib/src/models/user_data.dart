import 'address.dart';

class UserData {
  String? emailAddress;
  String? sha256EmailAddress;
  String? phoneNumber;
  String? sha256PhoneNumber;
  Address? address;

  UserData({
    this.emailAddress,
    this.sha256EmailAddress,
    this.phoneNumber,
    this.sha256PhoneNumber,
    this.address,
  });

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        emailAddress: json['email_address'],
        sha256EmailAddress: json['sha256_email_address'],
        phoneNumber: json['phone_number'],
        sha256PhoneNumber: json['sha256_phone_number'],
        address:
            json['address'] != null ? Address.fromJson(json['address']) : null,
      );

  Map<String, dynamic> toJson() => {
        'email_address': emailAddress,
        'sha256_email_address': sha256EmailAddress,
        'phone_number': phoneNumber,
        'sha256_phone_number': sha256PhoneNumber,
        'address': address?.toJson(),
      };

  UserData copyWith({
    String? emailAddress,
    String? sha256EmailAddress,
    String? phoneNumber,
    String? sha256PhoneNumber,
    Address? address,
  }) {
    return UserData(
      emailAddress: emailAddress ?? this.emailAddress,
      sha256EmailAddress: sha256EmailAddress ?? this.sha256EmailAddress,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      sha256PhoneNumber: sha256PhoneNumber ?? this.sha256PhoneNumber,
      address: address ?? this.address,
    );
  }
}
