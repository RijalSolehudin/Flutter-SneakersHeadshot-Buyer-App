import '../../../core/assets/assets.gen.dart';

class LiveModel {
  final String thumbnail;
  final int totalViewer;
  final String description;
  final String sellerPhoto;
  final String sellerName;

  LiveModel({
    required this.thumbnail,
    required this.totalViewer,
    required this.description,
    required this.sellerPhoto,
    required this.sellerName,
  });
}

final liveNows = [
  LiveModel(
    thumbnail: Assets.images.livestreamDummy.path,
    totalViewer: 320,
    description: 'Promo spesial Live, ambil promonya sekarang juga.',
    sellerPhoto:
        'https://www.greenscene.co.id/wp-content/uploads/2021/06/Kaiju-2.jpg',
    sellerName: 'cwbcollection',
  ),
  LiveModel(
    thumbnail: Assets.images.livestreamDummy.path,
    totalViewer: 450,
    description: 'Update Gaya dengan Tren Terbaru',
    sellerPhoto:
        'https://www.greenscene.co.id/wp-content/uploads/2021/06/Kaiju-2.jpg',
    sellerName: 'rajabutik',
  ),
  LiveModel(
    thumbnail: Assets.images.livestreamDummy.path,
    totalViewer: 120,
    description: 'Promo spesial Live, ambil promonya sekarang juga.',
    sellerPhoto:
        'https://www.greenscene.co.id/wp-content/uploads/2021/06/Kaiju-2.jpg',
    sellerName: 'cwbcollection',
  ),
  LiveModel(
    thumbnail: Assets.images.livestreamDummy.path,
    totalViewer: 470,
    description: 'Update Gaya dengan Tren Terbaru',
    sellerPhoto:
        'https://www.greenscene.co.id/wp-content/uploads/2021/06/Kaiju-2.jpg',
    sellerName: 'rajabutik',
  ),
];
