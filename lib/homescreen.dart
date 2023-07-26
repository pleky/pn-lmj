import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pn_lmj/content.dart';
import 'package:pn_lmj/slider_content.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: const Color(0xFF005524).withOpacity(0.4),
      ),
      child: const Scaffold(
        body: LayananUmum(),
      ),
    );
  }
}

class LayananUmum extends StatefulWidget {
  const LayananUmum({Key? key}) : super(key: key);

  @override
  State<LayananUmum> createState() => _LayananUmumState();
}

const snackBar = SnackBar(
  content: Text('URL tidak valid!'),
);

Future<void> _launchUrl(url, context) async {
  if (await canLaunchUrlString(url)) {
    launchUrlString(url, mode: LaunchMode.externalApplication);
  } else {
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

class _LayananUmumState extends State<LayananUmum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.center,
            stops: const [0.1, 0.5],
            colors: [
              const Color(0xFF1DDA6D).withOpacity(0.46),
              const Color(0xFFFFFFFF),
            ],
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Selamat Datang, Bapak/Ibu',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF00692D),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Silahkan pilih layanan sesuai kebutuhan anda.',
                          style: TextStyle(
                            color: Color(0xFF005524),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.builder(
                      padding: const EdgeInsets.only(top: 40, left: 16, right: 16),
                      itemCount: listMenuLayananUmum.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5,
                        mainAxisExtent: 100,
                      ),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: !listMenuLayananUmum[index].enable
                              ? null
                              : () {
                                  // final Uri _url = Uri.parse(listMenuLayananUmum[index].url);
                                  _launchUrl(listMenuLayananUmum[index].url, context);
                                },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 56,
                                height: 56,
                                padding: const EdgeInsets.all(16),
                                margin: const EdgeInsets.only(bottom: 8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  color: listMenuLayananUmum[index].color,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 6,
                                      spreadRadius: 0,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Image.asset(
                                    listMenuLayananUmum[index].icon,
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              ),
                              Text(
                                listMenuLayananUmum[index].title,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF848484),
                                  letterSpacing: 0.4,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 24),
                  CarouselSlider(
                    options: CarouselOptions(autoPlay: true, viewportFraction: 0.8, padEnds: true, height: 130),
                    items: dataSlider
                        .map(
                          (e) => Container(
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            child: SliderCard(
                              colors: e.colors,
                              image: e.image,
                              subTitle: e.subTitle,
                              title: e.title,
                              url: e.url,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
              Positioned(
                right: 16,
                top: 16,
                child: IconButton(
                  icon: const Icon(Icons.info_outline, color: Color(0xFF00692D)),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Center(
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Text('Versi Aplikasi: 1.0.0'),
                                SizedBox(height: 8),
                                Text('Email Support: hrackyid@gmail.com')
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SliderCard extends StatelessWidget {
  const SliderCard({
    Key? key,
    required this.colors,
    required this.image,
    required this.subTitle,
    required this.title,
    required this.url,
  }) : super(key: key);

  final List<Color> colors;
  final String title;
  final String subTitle;
  final String image;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.centerRight,
            stops: const [0.2, 1],
            colors: colors,
          )),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            subTitle,
            style: const TextStyle(fontSize: 12, color: Colors.white, height: 1.5),
          ),
          const Spacer(),
          Align(
            alignment: Alignment.bottomLeft,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.white),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text('Kunjungi Laman', style: TextStyle(color: Colors.white)),
              onPressed: () => _launchUrl(url, context),
            ),
          )
        ],
      ),
    );
  }
}
