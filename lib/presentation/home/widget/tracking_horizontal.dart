import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../model/track_record_model.dart';

class TrackingHorizontal extends StatelessWidget {
  final List<TrackRecordModel> trackRecords;
  const TrackingHorizontal({super.key, required this.trackRecords});

  @override
  Widget build(BuildContext context) {
    final trackRecord = trackRecords.where((element) => element.isActive).last;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: trackRecords.length,
            itemBuilder: (BuildContext context, int index) => TrackingItem(
              isActive: trackRecords[index].isActive,
              isCurrent:
                  index == (trackRecords.where((e) => e.isActive).length - 1),
              isLast: index == trackRecords.length - 1,
            ),
          ),
        ),
        const SpaceHeight(24.0),
        Text(
          trackRecord.title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SpaceHeight(4.0),
        if (trackRecord.status != TrackRecordStatus.selesai) ...[
          const Text(
            'Estimasi tiba : 3-4 Hari',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const SpaceHeight(20.0),
          const Text(
            'Pesanan dikemas Penjual',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const Text(
            'Januari 14, 22:36',
            style: TextStyle(
              color: AppColors.gray,
            ),
          ),
        ],
        if (trackRecord.status == TrackRecordStatus.selesai) ...[
          Text(
            'Diterima : 7 November 2024',
            // ${trackRecord.formattedDate}
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
        ],
      ],
    );
  }
}

class TrackingItem extends StatelessWidget {
  final bool isActive;
  final bool isCurrent;
  final bool isLast;

  const TrackingItem({
    super.key,
    required this.isActive,
    required this.isCurrent,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          isCurrent ? Icons.radio_button_checked : Icons.circle,
          color:
              isActive ? AppColors.primary : AppColors.primary.withOpacity(0.2),
          size: isCurrent ? 20.0 : 14.0,
        ),
        if (!isLast)
          Flexible(
            child: Container(
              width: MediaQuery.of(context).size.width / 4.2,
              height: 2.0,
              color: isActive && !isCurrent
                  ? AppColors.primary
                  : AppColors.primary.withOpacity(0.2),
            ),
          ),
      ],
    );
  }
}
