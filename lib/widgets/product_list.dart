import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../mockupdata/productdata.dart';


class ProductList extends StatefulWidget {
  const ProductList({
    required this.product,
    Key? key}) : super(key: key);
  final Product product;

  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  bool loved=true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Colors.white,
                child: GestureDetector(
                  onTap: (){},
                  child: Column(
                    children: [
                      Container(
                          height: size.height * 0.3,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(widget.product.image),
                              fit: BoxFit.cover,
                            ),
                          )
                      ),
                      SizedBox(height: size.height*0.02,),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(widget.product.brandName,style: TextStyle(fontWeight: FontWeight.w200, fontSize: 22),),
                                SizedBox(height: size.height*0.005),
                                Text(widget.product.title.length > 10 ?widget.product.title.substring(0, 16)+'...' : widget.product.title, textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.w200, fontSize: 14),),
                                SizedBox(height: size.height*0.005,),
                                Text(widget.product.price,style: TextStyle(fontWeight: FontWeight.w200, fontSize: 16),),
                                SizedBox(height: size.height*0.02,),

                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, bottom: 8.0,right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                      width: 12,
                                      height: 12,
                                      child: SvgPicture.asset('assets/icons/location.svg')
                                  ),
                                  SizedBox(width: size.width*0.02,),
                                  Text(widget.product.location,style: TextStyle(fontWeight: FontWeight.w200, fontSize: 16),),
                                ],
                              ),
                            ),

                        InkWell(
                          onTap: () {
                            setState(() {
                              loved = !loved;
                            });
                          },
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              border: Border.all(color: kPrimaryColor.withOpacity(0.03)),
                              borderRadius: BorderRadius.circular(8)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: SvgPicture.asset(
                                loved
                                    ? 'assets/icons/like.svg'
                                    : 'assets/icons/unLike.svg'

                              ),
                            ),
                          ),
                        ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],


    );
  }
}


