import 'package:ecommerce_buyer_app/data/model/response/waybill_response_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../core/core.dart';

class TrackignVertical extends StatelessWidget {
  final List<Manifest> trackRecords;
  const TrackignVertical({super.key, required this.trackRecords});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: trackRecords.length,
      itemBuilder: (BuildContext context, int index) => TrackingItem(
        trackRecord: trackRecords[index],
        isCurrent: index == 0,
        isLast: index == trackRecords.length - 1,
      ),
    );
  }
}

class TrackingItem extends StatelessWidget {
  final Manifest trackRecord;
  final bool isCurrent;
  final bool isLast;

  const TrackingItem({
    super.key,
    required this.trackRecord,
    required this.isCurrent,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 65.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                DateFormat('d MMM y').format(trackRecord.manifestDate!),
                textAlign: TextAlign.right,
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
              Text(
                trackRecord.manifestTime!,
                style: const TextStyle(color: AppColors.gray, fontSize: 12),
              ),
            ],
          ),
        ),
        const SpaceWidth(10.0),
        SizedBox(
          width: 20.0,
          child: Column(
            children: [
              Icon(
                isCurrent ? Icons.radio_button_checked : Icons.circle,
                color: AppColors.primary,
                size: isCurrent ? 20.0 : 14.0,
              ),
              if (!isLast)
                Container(
                  width: 2,
                  height: 90.0,
                  color: AppColors.primary,
                ),
            ],
          ),
        ),
        const SpaceWidth(10.0),
        Flexible(
          child: RichText(
            text: TextSpan(
              text: trackRecord.cityName!.isNotEmpty
                  ? '[${trackRecord.cityName}] '
                  : '[Dalam Perjalanan]',
              children: [
                TextSpan(
                  text: trackRecord.manifestDescription,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
              style: TextStyle(
                color: isCurrent ? AppColors.primary : AppColors.gray,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
