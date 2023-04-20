import 'package:acosdemega/widgets/heading.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../responsive.dart';

class Website extends StatefulWidget {
  const Website({Key? key}) : super(key: key);

  @override
  _WebsiteState createState() => _WebsiteState();
}

class _WebsiteState extends State<Website> {
  final String imagePath = 'assets/images/';

  final CarouselController _controller = CarouselController();

  List _isHovering = [false, false, false, false, false, false, false];
  List _isSelected = [true, false, false, false, false, false, false];

  int _current = 0;

  final List<String> images = [
    'assets/websites/1.jpg',
    'assets/websites/2.jpg',
    'assets/websites/3.jpg',
    'assets/websites/4.jpg',
    'assets/websites/5.jpg',
    'assets/websites/6.jpg',

  ];

  final List<String> places = [
    'Cabiee',
    'Dentalboss',
    'MoneyCart',
    'Docbook',
    'Bellhop',
    'E-Mall',
  ];

  List<Widget> generateImageTiles(screenSize) {
    return images
        .map(
          (element) => ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(
          element,
          fit: BoxFit.cover,
        ),
      ),
    )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var imageSliders = generateImageTiles(screenSize);

    return Material(
      elevation: 5,
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding),
          Align(
              alignment: Alignment.topLeft,
              child: Heading(title: " | Websites", alignText: TextAlign.start, size:Responsive.isMobile(context)?24: 30, color: Colors.black)),
          SizedBox(height: kDefaultPadding),
          Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CarouselSlider(
                    items: imageSliders,
                    options: CarouselOptions(
                        enlargeCenterPage: true,
                        aspectRatio: 18 / 8,
                        autoPlay: false,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                            for (int i = 0; i < imageSliders.length; i++) {
                              if (i == index) {
                                _isSelected[i] = true;
                              } else {
                                _isSelected[i] = false;
                              }
                            }
                          });
                        }),
                    carouselController: _controller,
                  ),
                 Responsive.isMobile(context)? Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Center(
                      child: Heading(title: places[_current], alignText: TextAlign.center, size: 28, color: Colors.black),
                    ),
                  ):Container(),
                ],
              ),
              Responsive.isMobile(context)?
                  Container()
                  : AspectRatio(
                aspectRatio: 17 / 8,
                child: Center(
                  heightFactor: 1,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: screenSize.width / 8,
                        right: screenSize.width / 8,
                      ),
                      child: Card(
                        elevation: 5,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: screenSize.height / 50,
                            bottom: screenSize.height / 50,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              for (int i = 0; i < places.length; i++)
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      onHover: (value) {
                                        setState(() {
                                          value
                                              ? _isHovering[i] = true
                                              : _isHovering[i] = false;
                                        });
                                      },
                                      onTap: () {
                                        _controller.animateToPage(i);
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: screenSize.height / 80,
                                            bottom: screenSize.height / 90),
                                        child: Text(
                                          places[i],
                                          style: TextStyle(
                                            color: _isHovering[i]
                                                ? Colors.blueGrey[900]
                                                : Colors.blueGrey,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Visibility(
                                      maintainSize: true,
                                      maintainAnimation: true,
                                      maintainState: true,
                                      visible: _isSelected[i],
                                      child: AnimatedOpacity(
                                        duration: Duration(milliseconds: 400),
                                        opacity: _isSelected[i] ? 1 : 0,
                                        child: Container(
                                          height: 5,
                                          decoration: BoxDecoration(
                                            color: Colors.blueGrey,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10),
                                            ),
                                          ),
                                          width: screenSize.width / 10,
                                        ),
                                      ),
                                    )

                                  ],
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}