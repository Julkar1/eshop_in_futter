import 'package:flutter/foundation.dart';

class Product with ChangeNotifier {
  final String id;
  final String category;
  final String name;
  final String description;
  final String imgUrl;
  final double price;

  Product(
      {required this.id,
      required this.category,
      required this.name,
      required this.description,
      required this.imgUrl,
      required this.price});
}

class Products with ChangeNotifier {
  final List<Product> _items = [
    Product(
      id: '1',
      name: 'iPhone 15',
      imgUrl:
          'https://inspireonline.in/cdn/shop/files/iPhone_15_Pink_PDP_Image_Position-1__en-IN_823x.jpg?v=1694605206',
      price: 56,
      category: 'Gadgets',
      description:
          'The innovative new design features back glass that has color infused throughout the material. A custom dual ion-exchange process for the glass, and an aerospace-grade aluminum enclosure, help make iPhone 15 incredibly durable. Dependably durable.',
    ),
    Product(
      id: '2',
      name: 'Rich Dad Poor Dad',
      imgUrl:
          'https://upload.wikimedia.org/wikipedia/en/b/b9/Rich_Dad_Poor_Dad.jpg',
      price: 55,
      category: 'Book',
      description:
          'Rich Dad Poor Dad is a 1997 book written by Robert Kiyosaki and Sharon Lechter. It advocates the importance of financial literacy, financial independence and building wealth through investing in assets',
    ),
    Product(
      id: '3',
      name: 'SPEAKER',
      imgUrl:
          'https://5.imimg.com/data5/SELLER/Default/2022/11/YK/UD/TT/8406033/polk-audio-reserve-r700-floorstanding-speaker-250x250.jpg',
      price: 45,
      category: 'Gadgets',
      description:
          'Meet the Canon EOS R50, the new RF-mount successor to the EOS M50 Mark II that was a hit among bloggers. Recording video in 4K 30p (6K oversampled) or Full HD 120p with the lightweight Canon EOS R50 gives you more room to express your creative abilities. Focusing for photos and videos is a breeze thanks to EOS iTR AF X and Dual Pixel CMOS AF II.',
    ),
    Product(
      id: '4',
      name: 'GTA V',
      imgUrl:
          'https://upload.wikimedia.org/wikipedia/en/a/a5/Grand_Theft_Auto_V.png',
      price: 45,
      category: 'Book',
      description: 'Best selling poular free roaming game',
    ),
    Product(
      id: '5',
      name: 'RDR 2',
      imgUrl:
          'https://upload.wikimedia.org/wikipedia/en/4/44/Red_Dead_Redemption_II.jpg',
      price: 95,
      category: 'Games',
      description: 'Free roam classic by Rockstar',
    ),
    Product(
      id: '6',
      name: 'Long Sleeve',
      imgUrl:
          'https://5.imimg.com/data5/SELLER/Default/2021/1/XI/KI/ZX/7071255/whatsapp-image-2021-01-13-at-11-49-17-500x500.jpeg',
      price: 450,
      category: 'Dress',
      description:
          'Celebrate your princess special day in style with FMYFWYs girls embroidery long sleeve lace tulle flower girls wedding maxi A-Line dresses pageant formal evening party ball gown',
    ),
    Product(
      id: '7',
      name: 'Galaxy S23 Ultra',
      imgUrl:
          'https://images.samsung.com/bd/smartphones/galaxy-s23-ultra/images/galaxy-s23-ultra-highlights-colors-green-back.jpg',
      price: 56,
      category: 'Gadgets',
      description:
          'The innovative new design features back glass that has color infused throughout the material. A custom dual ion-exchange process for the glass, and an aerospace-grade aluminum enclosure, help make iPhone 15 incredibly durable. Dependably durable.',
    ),
    Product(
      id: '8',
      name: 'Long Sleeve',
      imgUrl:
          'https://5.imimg.com/data5/SELLER/Default/2021/11/RB/VO/XY/7071255/375-500x500.jpg',
      price: 450,
      category: 'Dress',
      description:
          'Celebrate your princess special day in style with FMYFWYs girls embroidery long sleeve lace tulle flower girls wedding maxi A-Line dresses pageant formal evening party ball gown',
    ),
    Product(
      id: '9',
      name: 'Long Sleeve',
      imgUrl:
          'https://www.tootskids.com.au/cdn/shop/products/long-sleeve-twirly-girl-dress-dusty-blue-302729.jpg',
      price: 450,
      category: 'Dress',
      description:
          'Celebrate your princess special day in style with FMYFWYs girls embroidery long sleeve lace tulle flower girls wedding maxi A-Line dresses pageant formal evening party ball gown',
    ),
    Product(
      id: '10',
      name: 'iPhone_15',
      imgUrl:
          'https://inspireonline.in/cdn/shop/files/iPhone_15_Pink_PDP_Image_Position-1__en-IN_823x.jpg?v=1694605206',
      price: 56,
      category: 'Gadgets',
      description:
          'The innovative new design features back glass that has color infused throughout the material. A custom dual ion-exchange process for the glass, and an aerospace-grade aluminum enclosure, help make iPhone 15 incredibly durable. Dependably durable.',
    ),
    Product(
      id: '11',
      name: 'Long Sleeve',
      imgUrl:
          'https://5.imimg.com/data5/SELLER/Default/2021/1/HO/IZ/UM/7071255/whatsapp-image-2021-01-13-at-11-49-16-500x500.jpeg',
      price: 450,
      category: 'Dress',
      description:
          'Celebrate your princess special day in style with FMYFWYs girls embroidery long sleeve lace tulle flower girls wedding maxi A-Line dresses pageant formal evening party ball gown',
    ),
    Product(
      id: '12',
      name: 'Long Sleeve',
      imgUrl:
          'https://www.tootskids.com.au/cdn/shop/products/long-sleeve-twirly-girl-dress-dusty-blue-302729.jpg',
      price: 450,
      category: 'Dress',
      description:
          'Celebrate your princess special day in style with FMYFWYs girls embroidery long sleeve lace tulle flower girls wedding maxi A-Line dresses pageant formal evening party ball gown',
    ),
    Product(
      id: '13',
      name: 'Long Sleeve',
      imgUrl:
          'https://5.imimg.com/data5/SELLER/Default/2021/1/HO/IZ/UM/7071255/whatsapp-image-2021-01-13-at-11-49-16-500x500.jpeg',
      price: 450,
      category: 'Dress',
      description:
          'Celebrate your princess special day in style with FMYFWYs girls embroidery long sleeve lace tulle flower girls wedding maxi A-Line dresses pageant formal evening party ball gown',
    ),
    Product(
      id: '14',
      name: 'iPhone_15',
      imgUrl:
          'https://inspireonline.in/cdn/shop/files/iPhone_15_Pink_PDP_Image_Position-1__en-IN_823x.jpg?v=1694605206',
      price: 56,
      category: 'Gadgets',
      description:
          'The innovative new design features back glass that has color infused throughout the material. A custom dual ion-exchange process for the glass, and an aerospace-grade aluminum enclosure, help make iPhone 15 incredibly durable. Dependably durable.',
    ),
    Product(
      id: '15',
      name: 'Galaxy',
      imgUrl:
          'https://images.samsung.com/bd/smartphones/galaxy-s23-ultra/images/galaxy-s23-ultra-highlights-colors-green-back.jpg',
      price: 45,
      category: 'Gadgets',
      description:
          'Meet the Canon EOS R50, the new RF-mount successor to the EOS M50 Mark II that was a hit among bloggers. Recording video in 4K 30p (6K oversampled) or Full HD 120p with the lightweight Canon EOS R50 gives you more room to express your creative abilities. Focusing for photos and videos is a breeze thanks to EOS iTR AF X and Dual Pixel CMOS AF II.',
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  Product findById(String? id) {
    return _items.firstWhere((pdt) => pdt.id == id);
  }
}
