import 'package:flutter/cupertino.dart';

class HeaderMobileView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final widht = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(width: widht, height: height*0.9,);
  }
}