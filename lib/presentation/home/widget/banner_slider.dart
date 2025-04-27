import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../core/core.dart';

class BannerSlider extends StatefulWidget {
  final List<String> items;
  const BannerSlider({super.key, required this.items});

  @override
  State<BannerSlider> createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment(0, 0.8),
      children: [
        ClipRRect(
          // borderRadius: BorderRadius.circular(8.0),
          child: CarouselSlider(
            items: widget.items
                .map((e) => Image.asset(
                      e,
                      height: 250.0,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fill,
                    ))
                .toList(),
            carouselController: _controller,
            options: CarouselOptions(
              autoPlay: true,
              // aspectRatio: 315 / 152,
              aspectRatio: 17 / 9,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                _current = index;
                setState(() {});
              },
            ),
          ),
        ),
        // const SpaceHeight(15.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.items.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: _current == entry.key ? 20.0 : 8.0,
                height: 8.0,
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: _current == entry.key
                      ? AppColors.primary
                      : AppColors.stroke,
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
