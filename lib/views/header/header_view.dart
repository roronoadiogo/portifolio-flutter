import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HeaderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const second = Color(0xfff1faee);
    const subExtra = Color(0xffe63946);

    return ResponsiveBuilder(builder: (_, size) {

      if(size.isMobile) return Container();

     return Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            children: [
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _textItensMain("Eu sou Vinícius Diogo Alves", 60,
                          Colors.white, FontStyle.normal, FontWeight.bold),
                      _textItensMain(
                          "Desenvolvedor Java", 36, second, FontStyle.italic),
                      _textItensMain(
                          "Vamos conversar?", 24, second, FontStyle.normal),
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
                                    TextStyle(fontWeight: FontWeight.bold),
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)))),
                          ))
                    ]),
              ),
              Wrap(
                alignment: WrapAlignment.spaceBetween,
                children: [
                  FlutterLogo(
                    size: 300,
                  )
                ],
              ),
            ],
          ));
    });
  }

  _textItensMain(String text, double size, Color color, FontStyle style,
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
