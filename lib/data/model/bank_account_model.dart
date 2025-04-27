import '../../../core/assets/assets.gen.dart';

class BankAccountModel {
  final int code;
  final String name;
  final String image;
  final String codeName;
  final String paymentType;

  BankAccountModel({
    required this.code,
    required this.name,
    required this.image,
    required this.codeName,
    required this.paymentType,
  });
}

final banks = [
  BankAccountModel(
      code: 110,
      name: 'BRI Virtual Account',
      image: Assets.images.banks.bri.path,
      codeName: 'bri',
      paymentType: 'bank_transfer'),
  BankAccountModel(
      code: 111,
      name: 'BCA Virtual Account',
      image: Assets.images.banks.bca.path,
      codeName: 'bca',
      paymentType: 'bank_transfer'),
  BankAccountModel(
      code: 112,
      name: 'CIMB Niaga',
      image: Assets.images.banks.cimb.path,
      codeName: 'cimb',
      paymentType: 'bank_transfer'),
];
