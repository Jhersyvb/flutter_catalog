import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.theme.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            '\$ ${catalog.price}'.text.bold.xl4.red800.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  StadiumBorder(),
                ),
              ),
              child: 'Add to cart'.text.make(),
            ).wh(120, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: context.cardColor,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text.xl4
                          .bold
                          .make(),
                      catalog.desc.text.caption(context).xl.make(),
                      10.heightBox,
                      'Duo sea duo et dolore diam sadipscing ea, elitr dolor ipsum no invidunt takimata. Magna duo justo et et diam sanctus elitr. Lorem ut duo diam magna ut sed sed no, ipsum sit amet duo et. Et amet justo dolores et amet et elitr et. Sanctus tempor rebum amet dolore.'
                          .text
                          .caption(context)
                          .make()
                          .p16(),
                    ],
                  ).pOnly(top: 64),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
