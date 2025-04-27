import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_buyer_app/core/constants/variables.dart';
import 'package:ecommerce_buyer_app/data/datasources/auth_local_datasource.dart';
import 'package:ecommerce_buyer_app/data/model/response/store_response_model.dart';
import 'package:ecommerce_buyer_app/presentation/home/bloc/get_agora_token/get_agora_token_bloc.dart';
import 'package:ecommerce_buyer_app/presentation/home/pages/live_streaming_clicked.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';
// import '../models/live_model.dart';
// import '../pages/live_streaming_clicked.dart';

class LiveNowCard extends StatelessWidget {
  final Store item;
  const LiveNowCard({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    var random = Random();
    int randomInt = random.nextInt(100);

    return BlocConsumer<GetAgoraTokenBloc, GetAgoraTokenState>(
      listener: (context, state) async {
        state.maybeMap(
          orElse: () {},
          loaded: (value) {
            context.push(LiveStreamingClickedPage(
                store: item,
                channel: value.channel,
                token: value.token,
                uid: value.uid));
          },
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () {
            return GestureDetector(
              onTap: () async {
                final authData = await AuthLocalDatasources().getLoginData();

                context.read<GetAgoraTokenBloc>().add(
                    GetAgoraTokenEvent.getAgoraToken(
                        item.name!.trim().replaceAll(' ', ''),
                        authData.data!.user!.id.toString()));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Stack(
                  children: [
                    Image.network(
                      "${Variables.baseUrlApp}/storage/${item.photo}",
                      width: context.deviceWidth * 2.1 / 7,
                      height: context.deviceHeight * 1 / 4,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      margin: const EdgeInsets.all(8.0),
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        color: AppColors.black.withOpacity(0.36),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Stack(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SpaceWidth(40.0),
                              Icon(
                                Icons.visibility_outlined,
                                color: AppColors.white,
                                size: 15,
                              ),
                              SpaceWidth(7.0),
                              Text(
                                randomInt.toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.white,
                                ),
                              ),
                              SpaceWidth(4.0),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 4.0),
                            decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: const Text(
                              'LIVE',
                              style: TextStyle(
                                fontSize: 8.0,
                                fontWeight: FontWeight.w600,
                                color: AppColors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: ColoredBox(
                        color: AppColors.primary.withOpacity(0.50),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.name.toString(),
                                style: const TextStyle(
                                  fontSize: 12.0,
                                  color: AppColors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SpaceHeight(4.0),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  // Container(
                                  //   decoration: BoxDecoration(
                                  //     border: Border.all(
                                  //       color: AppColors.white,
                                  //     ),
                                  //     borderRadius:
                                  //         BorderRadius.circular(100.0),
                                  //   ),
                                  //   child: ClipOval(
                                  //     child: CachedNetworkImage(
                                  //       imageUrl:
                                  //           'https://www.greenscene.co.id/wp-content/uploads/2021/06/Kaiju-2.jpg',
                                  //       width: 15.0,
                                  //       height: 15.0,
                                  //       fit: BoxFit.cover,
                                  //       placeholder: (context, url) =>
                                  //           const Center(
                                  //         child: CircularProgressIndicator(),
                                  //       ),
                                  //     ),
                                  //   ),
                                  // ),
                                  const SpaceWidth(7.0),
                                  const SpaceWidth(7.0),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
