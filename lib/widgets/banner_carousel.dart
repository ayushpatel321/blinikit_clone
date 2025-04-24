import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:blinkit_clone/models/banner.dart';

class BannerCarousel extends StatefulWidget {
  const BannerCarousel({Key? key}) : super(key: key);

  @override
  State<BannerCarousel> createState() => _BannerCarouselState();
}

class _BannerCarouselState extends State<BannerCarousel> {
  int _currentIndex = 0;
  final CarouselSliderController _sliderController = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
          child: CarouselSlider.builder(
            unlimitedMode: true,
            controller: _sliderController,
            slideBuilder: (index) {
              final banner = dummyBanners[index % dummyBanners.length];
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    banner.imageUrl,
                    fit: BoxFit.cover,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                              : null,
                          color: const Color(0xFFFFD300),
                        ),
                      );
                    },
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.grey[300],
                        child: const Center(
                          child: Icon(Icons.error_outline, color: Colors.red),
                        ),
                      );
                    },
                  ),
                ),
              );
            },
            slideTransform: const DefaultTransform(),
            slideIndicator: CircularSlideIndicator(
              padding: const EdgeInsets.only(bottom: 10),
              indicatorBorderColor: Colors.grey.withOpacity(0.5),
              currentIndicatorColor: const Color(0xFFFFD300),
              indicatorBackgroundColor: Colors.grey.withOpacity(0.5),
            ),
            itemCount: dummyBanners.length,
            initialPage: 0,
            enableAutoSlider: true,
            autoSliderDelay: const Duration(seconds: 3),
            autoSliderTransitionTime: const Duration(milliseconds: 800),
            onSlideChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
      ],
    );
  }
}