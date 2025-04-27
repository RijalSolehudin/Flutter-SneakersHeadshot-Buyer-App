import 'package:ecommerce_buyer_app/data/model/response/address_response_model.dart';
import 'package:flutter/material.dart';

import '../../../core/core.dart';

class AddressTile extends StatelessWidget {
  final bool isSelected;
  final Address item;
  final VoidCallback? onTap;
  final VoidCallback? onEditTap;

  const AddressTile({
    super.key,
    required this.item,
    this.isSelected = false,
    this.onTap,
    this.onEditTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          border: Border.all(color: AppColors.stroke),
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withOpacity(0.1),
              blurRadius: 2,
              offset: const Offset(0, 2),
              spreadRadius: 0,
              blurStyle: BlurStyle.outer,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SpaceHeight(24.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                item.receiverName!,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SpaceHeight(4.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      item.address!,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SpaceWidth(14.0),
                  Icon(
                    isSelected
                        ? Icons.radio_button_checked
                        : Icons.circle_outlined,
                    color: isSelected ? AppColors.primary : AppColors.gray,
                  ),
                ],
              ),
            ),
            const SpaceHeight(24.0),
            if (isSelected && onEditTap != null) ...[
              const Divider(color: AppColors.primary),
              Center(
                child: TextButton(
                  onPressed: onEditTap,
                  child: const Text('Edit'),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
