class OfferBanner {
  final String id;
  final String imageUrl;
  final String? redirectUrl;

  OfferBanner({
    required this.id,
    required this.imageUrl,
    this.redirectUrl,
  });
}

List<OfferBanner> dummyBanners = [
  OfferBanner(
    id: '1',
    imageUrl: 'https://imgs.search.brave.com/CpTa48sWalX5Km6JXzDGHq1y5lDMGm8-yPEJY22bszM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvNTI5/NjY0NTcyL3Bob3Rv/L2ZydWl0LWJhY2tn/cm91bmQuanBnP3M9/NjEyeDYxMiZ3PTAm/az0yMCZjPUs3VjBy/VkNHajh0dmx1WERx/eEpndTBBZE1LRjhh/eFAwQTE1UC04S3No/M0k9',
  ),
  OfferBanner(
    id: '2',
    imageUrl: 'https://cdn.pixabay.com/photo/2016/11/22/18/52/cake-1850011_1280.jpg',
  ),
  OfferBanner(
    id: '3',
    imageUrl: 'https://cdn.pixabay.com/photo/2016/03/05/19/02/vegetables-1238252_1280.jpg',
  ),
];