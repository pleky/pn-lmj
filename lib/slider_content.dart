import 'package:flutter/cupertino.dart';

class SliderContent {
  final List<Color> colors;
  final String title;
  final String subTitle;
  final String image;
  final String url;

  SliderContent({
    required this.colors,
    required this.title,
    required this.subTitle,
    required this.image,
    required this.url,
  });

  factory SliderContent.fromJson(Map<String, dynamic> json) {
    return SliderContent(
      colors: List<Color>.from(json['colors'].map((x) => Color(x))),
      title: json['title'],
      subTitle: json['subTitle'],
      image: json['image'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'colors': colors,
      'title': title,
      'subTitle': subTitle,
      'image': image,
      'url': url,
    };
  }
}

List<SliderContent> dataSlider = [
  SliderContent(
    colors: [
      const Color(0xFFBEA000),
      const Color(0xFFF9D100).withOpacity(0.51),
    ],
    image: 'assets/images/ma.png',
    title: 'MAHKAMAH AGUNG',
    subTitle: 'Bersama kita bangun \nIndonesia',
    url: 'https://www.mahkamahagung.go.id/',
  ),
  SliderContent(
    colors: [
      const Color(0xFFB62727),
      const Color(0xFFDA1D1D).withOpacity(0.51),
    ],
    image: 'assets/images/bpu.png',
    title: 'BADAN PERADILAN UMUM',
    subTitle: 'Terwujudnya Badan \nPeradilan Umum yang Agung',
    url: 'https://badilum.mahkamahagung.go.id/',
  ),
  SliderContent(
    colors: [
      const Color(0xFF1BB55C),
      const Color(0xFF1DDA6D).withOpacity(0.51),
    ],
    image: 'assets/images/judge.png',
    title: 'PN LUMAJANG',
    subTitle: 'Pelayanan Prima, Putusan \nBerkualitas',
    url: 'https://www.pn-lumajang.go.id/',
  ),
  SliderContent(
    colors: [
      const Color(0xFFEE9542),
      const Color(0xFFEE9542).withOpacity(0.51),
    ],
    image: 'assets/images/judge.png',
    title: 'PT Surabaya',
    subTitle: 'Bersatu Bangun Bangsa',
    url: 'https://www.pt-surabaya.go.id/',
  ),
];
