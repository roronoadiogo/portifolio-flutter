import 'package:flutter/material.dart';
import 'package:portifolio/views/header/header_view.dart';

class PortifolioView extends StatelessWidget {
  const PortifolioView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size sizeScreen = MediaQuery.of(context).size;

    final height = sizeScreen.height;
    final width = sizeScreen.width;

    const main = Color(0xff1d3557);
    const extra = Color(0xffa8dadc);

    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(height: height*0.8, width: width, color: main, child: HeaderView()),
          Container(
            height: height,
            width: width,
            color: extra,
          ),
        ],
      )),
    );
  }
}

