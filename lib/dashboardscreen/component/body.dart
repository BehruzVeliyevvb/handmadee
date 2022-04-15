import 'package:ecommerce/constants.dart';
import 'package:ecommerce/mockupdata/fakebasketdata.dart';
import 'package:ecommerce/mockupdata/productdata.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../Widgets/appbar.dart';
import '../../widgets/divider.dart';
import '../../widgets/product_list.dart';
import '../../widgets/search.dart';
import 'count_basket.dart';
import 'news_list.dart';
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    List images = [
      "vintage.jpg",
      "vintage2.jpg",
      "vintage3.jpg",
    ];
    List text = [
      "Vintage clothes of the week",
      "Vintage furniture of the week",
      "vintage jewelry of the week ",
    ];
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: buildAppBar(
        context,
        title: 'HandMade',
        type: true,
        actions: [
          countBasket(
            numberOfBasket: FakeBasketData.numberOfBasket,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            search(),
            Stack(overflow: Overflow.visible, children: [
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: double.infinity,
                  child: PageView.builder(
                      itemCount: images.length,
                      itemBuilder: (_, index1) {
                        return Container(
                          margin: const EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/" + images[index1],
                                  ),
                                  fit: BoxFit.cover)),
                        );
                      }),
                ),
              ),
              Positioned(
                  left: 40,
                  bottom: -120,
                  child: Container(
                    height: size.height * 0.2,
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: PageView.builder(
                          itemCount: images.length,
                          itemBuilder: (_, index2) {
                            return Column(
                              children: [
                                Center(
                                    child: Text(
                                      text[index2],
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          color: kPrimaryColor,
                                          fontSize: 26,
                                          fontWeight: FontWeight.w200),
                                    )),
                                const SizedBox(
                                  height: 10,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: const Text(
                                    'Search Now',
                                    style: TextStyle(
                                      color: kPrimaryColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                              ],
                            );
                          }),
                    ),
                  )),
              Positioned(
                  left: 160,
                  bottom: -80,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(3, (index3) {
                        return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            width: size.width * 0.05,
                            height: size.width * 0.006,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: kPrimaryColor,
                            ),
                          ),
                        );
                      })))
            ]),
            divider(size: size),
            NewsList(size: size),
    GridView.count(
    crossAxisCount: 2,
    mainAxisSpacing: 20,
    crossAxisSpacing: 20,
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    padding: EdgeInsets.all(20),
    childAspectRatio: 0.4,
    children:
    List.generate(demoProducts.length, (index) {
    return
            ProductList(product: demoProducts[index],);})),
            SizedBox(
              height: 109,
            )
          ],
        ),
      ),
    );
  }
}



