import 'package:flutter/material.dart';
import 'package:windflags/components/slide_tile.dart';

class Home extends StatefulWidget {
  Home({super.key, required this.color, required this.height});

  final Color color;
  final double height;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController _pageController = PageController(viewportFraction: 1);

  int _currentPage = 0;

  final _listSlide = [
    {'id': 0, 'image': 'assets/images/carouselview/banner1.jpg'},
    {'id': 1, 'image': 'assets/images/carouselview/banner2.jpg'},
    {'id': 2, 'image': 'assets/images/carouselview/banner3.jpg'},
    {'id': 3, 'image': 'assets/images/carouselview/banner4.jpg'},
    {'id': 4, 'image': 'assets/images/carouselview/banner5.jpg'}
  ];

  @override
  void initState() {
    _pageController.addListener(() {
      int next = _pageController.page!.round();
      if (_currentPage != next) {
        setState(() {
          _currentPage = next;
        });
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      color: widget.color,
      height: widget.height,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 370,
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: _listSlide.length,
                      itemBuilder: (_, currentIndex) {
                        return SlideTile(
                          image: _listSlide[currentIndex]['image'] as String,
                        );
                      },
                    ),
                  ),
                  _buildBullets(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBullets() {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _listSlide.map((i) {
          return InkWell(
            onTap: () {
              setState(() {
                _pageController.jumpToPage(i['id'] as int);
                _currentPage = i['id'] as int;
              });
            },
            child: Container(
              margin: const EdgeInsets.only(left: 5, right: 5, top: 4),
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: _currentPage == i['id']
                      ? Colors.blueAccent
                      : Colors.grey),
            ),
          );
        }).toList(),
      ),
    );
  }
}
