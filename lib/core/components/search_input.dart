import 'package:flutter/material.dart';

import '../core.dart';

class SearchInput extends StatelessWidget {
  final TextEditingController controller;
  final void Function(String value)? onChanged;
  final VoidCallback? onTap;
  final String hintText;

  const SearchInput({
    super.key,
    required this.controller,
    this.onChanged,
    this.onTap,
    this.hintText = 'Cari di sini',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextFormField(
        onTap: onTap,
        readOnly: onTap != null,
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: AppColors.gray, fontSize: 13),
          prefixIcon: const Icon(
            Icons.search,
            color: AppColors.gray,
          ),
          contentPadding: const EdgeInsets.all(16.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
