import 'package:e_commerce_task/details/details_page1.dart';
import 'package:e_commerce_task/details/details_page2.dart';
import 'package:e_commerce_task/model/custom_widget_page.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: Colors.white),
                                      child: Icon(Icons.grid_view_rounded),
                                    )),
                                Expanded(
                                    flex: 5,
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Store location",
                                            style: mystyleroboto(14,
                                                Colors.black, FontWeight.w400),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.location_on_outlined,
                                                color: Colors.red,
                                              ),
                                              Text("Mondolibug,sylhet",
                                                  style: mystyleroboto(
                                                      17,
                                                      Colors.black,
                                                      FontWeight.w600)),
                                            ],
                                          )
                                        ],
                                      ),
                                    )),
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: Colors.white),
                                        child:
                                            Icon(Icons.shopping_bag_outlined))),
                              ],
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                            flex: 1,
                            child: Container(
                              child: TextFormField(
                                controller: textEditingController,
                                decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.search),
                                    hintText: "Looking for shoes",
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(25))),
                              ),
                              width: double.infinity,
                              // decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                            flex: 1,
                            child: Container(
                              child: Row(
                                children: [
                                  Expanded(
                                      flex: 2,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        child: Container(
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: Colors.blue),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Expanded(
                                                  child: Container(
                                                height: double.infinity,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "images/puma.png"))),
                                              )),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Expanded(
                                                  child: Text(
                                                "Nike",
                                                style: mystyleroboto(
                                                    15,
                                                    Colors.white,
                                                    FontWeight.w500),
                                              ))
                                            ],
                                          ),
                                        ),
                                      )),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "images/puma.png"))),
                                      )),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "images/under.png"))),
                                      )),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "images/adidas.png"))),
                                      )),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "images/converse.png"))),
                                      )),
                                ],
                              ),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                Text("Popular Shoes",
                                    style: mystyleroboto(
                                        18, Colors.black, FontWeight.w500)),
                                Spacer(),
                                Text("See all",
                                    style: mystyleroboto(
                                        14, Colors.blue, FontWeight.w400))
                              ],
                            )),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    )),
                Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        children: [
                          Expanded(
                              flex: 5,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailsPage2(),));
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Column(
                                          children: [
                                            Expanded(
                                                flex: 3,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12)),
                                                  child: Image.asset(
                                                    "images/shoes4.jpg",
                                                    fit: BoxFit.cover,
                                                  ),
                                                )),
                                            Expanded(
                                                flex: 2,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Best Seller",
                                                        style: mystyleroboto(
                                                            15,
                                                            Colors.blue,
                                                            FontWeight.w400)),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text("Nike Jordan",
                                                        style: mystyleroboto(
                                                            16,
                                                            Colors.black,
                                                            FontWeight.w500)),
                                                    Spacer(),
                                                    Row(
                                                      children: [
                                                        Text("493.00",
                                                            style: mystyleroboto(
                                                                16,
                                                                Colors.black,
                                                                FontWeight.w500)),
                                                        Spacer(),
                                                        Container(
                                                          height: 52,
                                                          width: 50,
                                                          decoration: BoxDecoration(
                                                              color: Colors.blue,
                                                              borderRadius: BorderRadius.only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          20),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          20))),
                                                          child: Icon(Icons.add),
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                )),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailsPage1(),));
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Column(
                                          children: [
                                            Expanded(
                                                flex: 3,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12)),
                                                  child: Image.asset(
                                                    "images/shoes1.jpg",
                                                    fit: BoxFit.cover,
                                                  ),
                                                )),
                                            Expanded(
                                                flex: 2,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Best Seller",
                                                        style: mystyleroboto(
                                                            15,
                                                            Colors.blue,
                                                            FontWeight.w400)),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text("Nike Jordan",
                                                        style: mystyleroboto(
                                                            16,
                                                            Colors.black,
                                                            FontWeight.w500)),
                                                    Spacer(),
                                                    Row(
                                                      children: [
                                                        Text("493.00",
                                                            style: mystyleroboto(
                                                                16,
                                                                Colors.black,
                                                                FontWeight.w500)),
                                                        Spacer(),
                                                        Container(
                                                          height: 52,
                                                          width: 50,
                                                          decoration: BoxDecoration(
                                                              color: Colors.blue,
                                                              borderRadius: BorderRadius.only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          20),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          20))),
                                                          child: Icon(Icons.add),
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                )),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                          Expanded(
                              flex: 1,
                              child: Row(
                                children: [
                                  Text("New Arrivals",
                                      style: mystyleroboto(
                                          18, Colors.black, FontWeight.w500)),
                                  Spacer(),
                                  Text("See all",
                                      style: mystyleroboto(
                                          14, Colors.blue, FontWeight.w400)),
                                ],
                              ))
                        ],
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Container(
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("BEST CHOICE",
                                        style: mystyleroboto(
                                            14, Colors.blue, FontWeight.w500)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Nike Air Jordan",
                                        style: mystyleroboto(
                                            18, Colors.black, FontWeight.w500)),
                                    Spacer(),
                                    Text(
                                      "849.99",
                                      style: mystyleroboto(
                                          16, Colors.black, FontWeight.w500),
                                    ),
                                  ],
                                )),
                            Expanded(
                                flex: 1,
                                child: Image.asset(
                                  "images/shoes3.jpeg",
                                  fit: BoxFit.cover,
                                ))
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
