import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:my_tube/screens/content_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  final List<String> videos = [
    'https://www.pexels.com/video/clouds-of-paint-mixing-underwater-7565437/',
    'https://www.instagram.com/p/CkBSvhkgBWp/',
    'https://www.instagram.com/p/CkDPPLTA3yQ/',
    'https://www.instagram.com/p/Cih8xGzJlOi/',
    'https://www.instagram.com/p/CknPbRWL5NN/',
    'https://www.instagram.com/p/CkZ_Hm2pJdE/',
  ];
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              // We need Swiper for Every content
              Swiper(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return ContentScreen(
                    src: videos[index],
                  );
                },
                scrollDirection: Axis.vertical,
              ),
              // ContentScreen(src: '',),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'MyTube',
                      style: GoogleFonts.poppins(
                          fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.photo_camera, size: 30),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
