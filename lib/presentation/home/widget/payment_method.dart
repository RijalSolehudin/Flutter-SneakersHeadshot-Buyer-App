import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../../../data/model/bank_account_model.dart';

class PaymentMethod extends StatelessWidget {
  final bool isActive;
  final BankAccountModel data;
  final VoidCallback onTap;

  const PaymentMethod({
    super.key,
    required this.isActive,
    required this.data,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          border: Border.all(color: AppColors.stroke),
        ),
        child: Row(
          children: [
            Image.asset(
              data.image,
              height: 50.0,
            ),
            const SpaceWidth(8.0),
            Expanded(
              child: Text(
                data.name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Icon(
              isActive ? Icons.circle : Icons.circle_outlined,
              color: isActive ? AppColors.primary : AppColors.gray,
            ),
          ],
        ),
      ),
    );
  }
}
