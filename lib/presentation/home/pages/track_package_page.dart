import 'package:ecommerce_buyer_app/presentation/home/bloc/waybill/waybill_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';
import '../widget/tracking_vertical.dart';

class TrackPackagePage extends StatelessWidget {
  final String noResi;
  const TrackPackagePage({super.key, required this.noResi});

  @override
  Widget build(BuildContext context) {
    void copyToClipboard(String text) {
      Clipboard.setData(ClipboardData(text: text)).then((_) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Nomor resi disalin!'),
            duration: Duration(seconds: 1),
            backgroundColor: AppColors.primary,
          ),
        );
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Pengiriman'),
      ),
      body: BlocBuilder<WaybillBloc, WaybillState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const Center(
              child: Text("No Data Available"),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (data) {
              return ListView(
                padding: const EdgeInsets.all(20.0),
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.stroke),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: [
                              Text(
                                noResi,
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              const Spacer(),
                              Text(
                                noResi,
                                style: TextStyle(
                                  fontSize: 10,
                                  color: AppColors.gray,
                                ),
                              ),
                              const SpaceWidth(5.0),
                              InkWell(
                                onTap: () => copyToClipboard(noResi),
                                child: const Text(
                                  'SALIN',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.primary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          height: 1,
                          color: AppColors.stroke,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: TrackignVertical(trackRecords: data),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
