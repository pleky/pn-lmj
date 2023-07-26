import 'package:flutter/cupertino.dart';

class ItemModel {
  final String title;
  final int id;
  final String icon;
  final String url;
  final Color color;
  final bool enable;

  ItemModel({
    required this.title,
    required this.id,
    required this.icon,
    required this.url,
    required this.color,
    required this.enable,
  });

  factory ItemModel.fromJson(Map<String, dynamic> json) {
    return ItemModel(
      title: json['title'],
      id: json['id'],
      icon: json['icon'],
      url: json['url'],
      color: Color(json['color']),
      enable: json['enable'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'id': id,
      'icon': icon,
      'url': url,
      'color': color,
      'enable': enable,
    };
  }
}

List layananUmum = [
  {
    'id': 1,
    'title': 'Hubungi Kami',
    'url': 'https://api.whatsapp.com/send/?phone=6281330777330&text=Halo&app_absent=0',
    'icon': 'assets/images/hubungi-kami.png',
    'color': 0xFF1BB55C,
    'enable': true,
  },
  {
    'id': 2,
    'title': 'e-Court',
    'url': 'https://ecourt.mahkamahagung.go.id/',
    'icon': 'assets/images/e-court.png',
    'color': 0xFFFFBB12,
    'enable': true,
  },
  {
    'id': 3,
    'title': 'eraterang',
    'url': 'https://eraterang.badilum.mahkamahagung.go.id/masuk',
    'icon': 'assets/images/eraterang.png',
    'color': 0xFFE74C3C,
    'enable': true,
  },
  {
    'id': 4,
    'title': 'APEK',
    'url': 'https://eksekusi.pn-lumajang.go.id/',
    'icon': 'assets/images/apek.png',
    'color': 0xFF0E4DA4,
    'enable': true,
  },
  {
    'id': 5,
    'title': 'e-Berpadu',
    'url': 'https://eberpadu.mahkamahagung.go.id/',
    'icon': 'assets/images/e-berpadu.png',
    'color': 0xFF1BB55C,
    'enable': true,
  },
  {
    'id': 6,
    'title': 'Upaya Hukum',
    'url': 'https://kepaniteraan.mahkamahagung.go.id/',
    'icon': 'assets/images/upaya-hukum.png',
    'color': 0xFFFFBB12,
    'enable': true,
  },
  {
    'id': 7,
    'title': 'Jadwal Sidang',
    'url': 'https://sipp.pn-lumajang.go.id/list_jadwal_sidang',
    'icon': 'assets/images/jadwal-sidang.png',
    'color': 0xFFE74C3C,
    'enable': true,
  },
  {
    'id': 8,
    'title': 'Info Tilang',
    'url': 'https://api.whatsapp.com/send/?phone=6281330777330&text=Halo&app_absent=0',
    'icon': 'assets/images/info-tilang.png',
    'color': 0xFF0E4DA4,
    'enable': true,
  },
  {
    'id': 9,
    'title': 'Posbakum Online',
    'url': 'https://posbakumonline.pn-lumajang.go.id/',
    'icon': 'assets/images/posbakum.png',
    'color': 0xFF1BB55C,
    'enable': true,
  },
  {
    'id': 10,
    'title': 'SIPP',
    'url': 'https://sipp.pn-lumajang.go.id/',
    'icon': 'assets/images/sipp.png',
    'color': 0xFFFFBB12,
    'enable': true,
  },
  {
    'id': 11,
    'title': 'Persepsi Anti Korupsi',
    'url': 'https://www.pn-lumajang.go.id/index.php?option=com_content&view=article&id=587&Itemid=357',
    'icon': 'assets/images/anti-korupsi.png',
    'color': 0xFFE74C3C,
    'enable': true,
  },
  {
    'id': 12,
    'title': 'Index Kepuasan',
    'url': 'https://www.pn-lumajang.go.id/index.php?option=com_content&view=article&id=586&Itemid=331',
    'icon': 'assets/images/index-kepuasan.png',
    'color': 0xFF0E4DA4,
    'enable': true,
  },
  {
    'id': 13,
    'title': 'Putusan',
    'url': 'https://putusan3.mahkamahagung.go.id/',
    'icon': 'assets/images/putusan.png',
    'color': 0xFF1BB55C,
    'enable': true,
  },
  {
    'id': 14,
    'title': 'SIPP Banding',
    'url': 'https://banding.mahkamahagung.go.id/',
    'icon': 'assets/images/sipp-banding.png',
    'color': 0xFFFFBB12,
    'enable': true,
  },
];

final listMenuLayananUmum = List.generate(
  layananUmum.length,
  (index) => ItemModel.fromJson(layananUmum[index]),
);
