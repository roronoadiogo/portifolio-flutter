import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size sizeScreen = MediaQuery
        .of(context)
        .size;

    final height = sizeScreen.height;
    final width = sizeScreen.width;
    const main = Color(0xff1d3557);
    const second = Color(0xfff1faee);
    const extra = Color(0xffa8dadc);
    const subExtra = Color(0xffe63946);

    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: height * 0.8,
                width: width,
                color: main,
                child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 120, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Wrap(
                              direction: Axis.horizontal,
                              children: [
                                Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                    _textItensMain(
                                        "Eu sou Vinícius Diogo Alves", 60,
                                        Colors.white, FontStyle.normal,
                                        FontWeight.bold),
                                    _textItensMain(
                                       "Desenvolvedor Java", 36, second,
                                        FontStyle.italic),
                                    _textItensMain(
                                        "Vamos conversar?", 24, second,
                                        FontStyle.normal),

                                    Padding(
                                        padding: EdgeInsets.only(top: 40),
                                        child: TextButton(
                                          child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 17, horizontal: 15),
                                              child: Text(
                                                "Entrar em contato",
                                                style: TextStyle(fontSize: 25),
                                              )),
                                          onPressed: () {},
                                          style: TextButton.styleFrom(
                                              backgroundColor: subExtra,
                                              textStyle:
                                              TextStyle(
                                                  fontWeight: FontWeight.bold),
                                              primary: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius
                                                      .all(
                                                      Radius.circular(15)))),
                                        ))]),
                              ],
                            )),
                        Expanded(
                            child: FlutterLogo(
                              size: 300,
                            )),
                      ],
                    )),
              ),
              Container(
                height: height,
                width: width,
                color: extra,
              ),
            ],
          )),
    );
  }

  _textItensMain(String text, double size, Color color,
      FontStyle style,
      [FontWeight weight]) {
    return Text(
          text,
          style: GoogleFonts.openSans(
              textStyle: TextStyle(
                  fontSize: size,
                  color: color,
                  fontStyle: style,
                  fontWeight: weight)),
        );
  }
}
