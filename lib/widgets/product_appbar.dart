import 'package:acosdemega/responsive.dart';
import 'package:acosdemega/widgets/subtitle.dart';
import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductBar extends StatefulWidget {
  const ProductBar({Key? key}) : super(key: key);

  @override
  _ProductBarState createState() => _ProductBarState();
}

class _ProductBarState extends State<ProductBar> {

  List<String> products= [
    "Websites",
    "Android Application",
    "IOS Application",
    "Desktop App",
    "Web App"
  ];

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
          color: EasyDynamicTheme.of(context).themeMode==ThemeMode.light?Colors.black:Colors.white,
          child: Responsive.isMobile(context)?SizedBox(width: 0.1,):Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:List.generate(
                  products.length,
                      (index) => buildProductItem(index))
          ),
        )
    );
  }
  buildProductItem(int index) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(products[index],
        textAlign: TextAlign.center,
        style:  GoogleFonts.aBeeZee(
            fontSize: 16,
            color: EasyDynamicTheme.of(context).themeMode==ThemeMode.light?Colors.white:Colors.black,
            fontWeight: FontWeight.w500
        )
      )
    );
  }
}
