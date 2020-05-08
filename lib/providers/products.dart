import 'package:beats_shop/models/brand.dart';

import 'package:flutter/material.dart';

import '../models/product.dart';
import 'package:flutter/cupertino.dart';

class Products with ChangeNotifier {
  // 0=> Beats  1=>Sony  2=>JBL 4=>Sennheiser
  List<BrandImage> brandsItems = [
    BrandImage(
        imageUrl:
            'https://www.freepnglogos.com/uploads/beats-png-logo/ravi-vora-beats-png-logo-19.png',
        brand: Brand.Beats),
    BrandImage(
        brand: Brand.Sony,
        imageUrl: 'https://pngimg.com/uploads/sony_logo/sony_logo_PNG2.png'),
    BrandImage(
        brand: Brand.JBL,
        imageUrl:
            'https://cdn.clipart.email/14c04c0490ade39ddf9364f150c86373_jbl-logo-png-and-vector-logo-download_3500-1965.png'),
    BrandImage(
        brand: Brand.Sennheiser,
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/9/97/Sennheiser_Logo.png'),
  ];

  List<Product> _productItems = [
    Product(
      id: 1,
      title: 'Beats Solo3 Wireless On-Ear ',
      price: 500,
      description:
          'Made beautiful and shiny with a glossy black finish and a sleek, streamlined design, the Beats Solo3 Wireless On-Ear Headphones MNEN2SO/A are a sight to behold. Break free and live without any strings with these wireless headphones. Beats Solo3 Wireless On-Ear headphones are your perfect everyday headphones, they can provide you with up to 40 hours of battery life. Enjoy ...',
      imageUrl:
          'https://cf2.s3.souqcdn.com/item/2018/12/13/42/52/67/81/item_XL_42526781_39228df9ca6d5.jpg',
      features: [
        '40 Hours Battery life',
        'Apple W1 Chip',
        'Bluetooth',
        'Wireless',
        '3.5mm RemoteTalk cable',
        'Noise Isolation'
      ],
      brand: Brand.Beats,
      colors: [Colors.black, Colors.white, Colors.amber, Colors.pink],
    ),
    Product(
      id: 2,
      title: 'Sony WH-CH510 Wireless',
      price: 1034,
      description:
          'The world of music is waiting for you to dive in with the Sony WH-CH510 Wireless Headphones. These headphones come with powerful Bluetooth and NFC one-touch connectivity options which help you to connect to your mobile in a blink of an eye. The headphones have a powerful battery that ensures the uninterrupted flow of music for up to 20 hours. If you have a question, you can ask ...',
      imageUrl:
          'https://cf3.s3.souqcdn.com/item/2020/03/22/12/13/18/24/3/item_XXL_121318243_ef4f18b2c6566.jpg',
      features: [
        'Wireless headphones with Bluetooth and NFC one touch for quick connection',
        '20 h Battery Life',
        'Google and Siri Voice Assistant functionality',
        'Light weight at 130 grams and swivel design for portability',
        'Built-In microphone for hands-free calling and mobile app compatibility for more functionality.'
      ],
      brand: Brand.Sony,
      colors: [
        Colors.black,
        Colors.white,
      ],
    ),
    Product(
      id: 3,
      title: 'Beats MRJA2ZM/A Solo Pro Wireless',
      price: 1000,
      description:
          'Made beautiful and shiny with a glossy black finish and a sleek, streamlined design, the Beats Solo3 Wireless On-Ear Headphones MNEN2SO/A are a sight to behold. Break free and live without any strings with these wireless headphones. Beats Solo3 Wireless On-Ear headphones are your perfect everyday headphones, they can provide you with up to 40 hours of battery life. Enjoy ...',
      imageUrl:
          'https://cf5.s3.souqcdn.com/item/2020/03/04/11/84/08/05/7/item_XL_118408057_1a999384d3174.jpg',
      features: [
        'Active Noise Cancelling (ANC) blocks external noise',
        'Up to 22 hours of listening time',
        'Auto On/Off when you unfold and fold your headphones',
        'Class 1 Bluetooth technology',
        'Enhanced phone call performance and call handling',
        'With Lightning to USB-A charging cable'
      ],
      brand: Brand.Beats,
      colors: [Colors.blue],
    ),
    Product(
      id: 4,
      title: 'Sony EXTRA BASS BluetoothSolo3 Wireless',
      price: 900,
      description:
          'MDR-XB650BT headphones combine powerful EXTRA BASS sound quality with the freedom of wireless connectivity and long-listen comfort.',
      imageUrl:
          'https://cf1.s3.souqcdn.com/item/2016/11/06/11/82/02/84/item_XL_11820284_17298808.jpg',
      features: [
        ' EXTRA BASS for deep, punchy sound'
            ' One-touch listening with Bluetooth and NFC',
        '1.18 in neodymium driver unit exclusive to EXTRA BASS',
        ' Up to 30 hours of battery life',
        'Swivel ear cups for easy portability',
        'Driver unit: 11.82 in',
        ' Frequency response: (Hz): 20 Hz–20,000 Hz'
      ],
      brand: Brand.Sony,
      colors: [Colors.black],
    ),
    Product(
      id: 5,
      title: 'JBL Kids Wireless On-ear',
      price: 1288,
      description:
          'Safe, lightweight and sized for kids, the JBL JR300BT wireless headphones deliver up to 12 hours of legendary JBL sound. Designed to ensure the volume is always below 85dB to protect hearing, and controls can be operated without any help.Key features• 85dB volume limit making them safe for even the youngest of music fans.• Wireless connection up to 15 meters away with easy to operate ...',
      imageUrl:
          'https://cf2.s3.souqcdn.com/item/2017/12/09/28/93/21/57/item_XL_28932157_82806680.jpg',
      features: [
       
      ],
      brand: Brand.JBL,
      colors: [Colors.blue],
    ),
    Product(
      id: 6,
      title: 'Solo3 Wireless',
      price: 500,
      description:
          'Made beautiful and shiny with a glossy black finish and a sleek, streamlined design, the Beats Solo3 Wireless On-Ear Headphones MNEN2SO/A are a sight to behold. Break free and live without any strings with these wireless headphones. Beats Solo3 Wireless On-Ear headphones are your perfect everyday headphones, they can provide you with up to 40 hours of battery life. Enjoy ...',
      imageUrl:
          'https://cf2.s3.souqcdn.com/item/2018/12/13/42/52/67/81/item_XL_42526781_39228df9ca6d5.jpg',
      features: [
        '40 Hours Battery life',
        'Apple W1 Chip',
        'Bluetooth',
        'Wireless',
        '3.5mm RemoteTalk cable',
        'Noise Isolation'
      ],
      brand: Brand.Beats,
      colors: [Colors.black, Colors.white, Colors.amber, Colors.pink],
    ),
  ];
  List<Product> get productItems {
    return [..._productItems];
  }

  List<Product> productsByBrand(Brand brand) {
    return productItems.where((product) => product.brand == brand).toList();
  }

  List<Product> get wishlist {
    return productItems.where((product) => product.isFavorite).toList();
  }

  Product findById(id) {
    return productItems.firstWhere((product) => product.id == id);
  }
}
