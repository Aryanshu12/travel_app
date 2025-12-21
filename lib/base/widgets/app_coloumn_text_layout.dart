import 'package:flutter/material.dart';
import 'package:travel_app/base/widgets/text_style_third.dart';

class AppColoumnTextLayout extends StatelessWidget {
  final String Toptext;
  final String Bottomtext;
  const AppColoumnTextLayout({super.key, required this.Toptext, required this.Bottomtext});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
     TextStyleThird(text:  Toptext),
     SizedBox(height: 3,),
     TextStyleThird(text: Bottomtext),
       ],);
  }
}