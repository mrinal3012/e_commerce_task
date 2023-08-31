import 'package:e_commerce_task/model/custom_widget_page.dart';
import 'package:flutter/material.dart';

class DetailsPage1 extends StatefulWidget {
  const DetailsPage1({Key? key}) : super(key: key);

  @override
  State<DetailsPage1> createState() => _DetailsPage1State();
}

class _DetailsPage1State extends State<DetailsPage1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 10,),
              Container(height: 50,width: double.infinity,child:
              Expanded(flex: 1, child:Row(children: [
                Expanded(flex: 1, child: Container(height: 50,width: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white),child: IconButton(onPressed: () {
                  Navigator.pop(context);
                }, icon: Icon(Icons.arrow_back_ios)),)),
                Expanded(flex: 5, child: Container(child: Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Men's Shoes",style: mystyleroboto(18,Colors.black,FontWeight.w500),),
                  ],),)),
                Expanded(flex: 1, child: Container(height: 50,width: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white),child: Icon(Icons.shopping_bag_outlined))),

              ],)),),
              Container(height: 200,width: double.infinity,
                child: Image.asset("images/shoes1.jpg",fit: BoxFit.cover,),
              ),
              Spacer(),
              Container(height: 500,width: double.infinity,decoration:
              BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25))),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(children: [
                  SizedBox(height: 40),
                  Expanded(flex: 5, child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("BEST SELLER",style: mystyleroboto(15,Colors.blue,FontWeight.w500)),
                      SizedBox(height: 5),
                        Text("Nike Air Jorder",style: mystyleroboto(18,Colors.black,FontWeight.w500)),
                      SizedBox(height: 5),
                        Text("967.00",style: mystyleroboto(18,Colors.black,FontWeight.w500)),
                      SizedBox(height: 5),
                      Text("Air Jorder is an American brand os baskectball \nshoes athletic,casual, and style clothing \nproduced by Nike...",style: mystyleroboto(15,Colors.black,FontWeight.w300)),
                      SizedBox(height: 5),
                      Text("Gallery",style: mystyleroboto(18,Colors.black,FontWeight.w500)),
                    ],),
                  )),
                  Expanded(flex: 2, child: Container(child: Column(children: [
                    Expanded(flex: 2, child:Row(children: [
                      Container(height: 60,width: 60,decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(12),image: DecorationImage(image: AssetImage("images/shoes4.jpg"),fit: BoxFit.cover)),),
                      SizedBox(width: 15,),
                      Container(height: 60,width: 60,decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(12),image: DecorationImage(image: AssetImage("images/shoes1.jpg"),fit: BoxFit.cover)),),
                      SizedBox(width: 15,),
                      Container(height: 60,width: 60,decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(12),image: DecorationImage(image: AssetImage("images/shoes4.jpg"),fit: BoxFit.cover)),),
                    ],) ),
                  ],))),
                  Expanded(flex: 1, child: Row(children: [
                    Text("Size",style: mystyleroboto(18)),
                    Spacer(),
                    Text("EU",style: mystyleroboto(15)),
                    SizedBox(width: 10,),
                    Text("US",style: mystyleroboto(15)),
                    SizedBox(width: 10,),
                    Text("AK",style: mystyleroboto(15)),
                  ],)),
                  Expanded(flex: 2, child: Row(children: [
                    Expanded(child: Container(width: 50,height: 50, decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(30)), child: Center(child: Text("38",style: mystyleroboto(18),)))),
                    SizedBox(width: 10),
                    Expanded(child: Container(width: 50,height: 50,decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(30)),child: Center(child: Text("39",style: mystyleroboto(18),)))),
                    SizedBox(width: 10),
                    Expanded(child: Container(width: 50,height: 50,decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(30)),child: Center(child: Text("40",style: mystyleroboto(18),)))),
                    SizedBox(width: 10),
                    Expanded(child: Container(width: 50,height: 50,decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(30)),child: Center(child: Text("41",style: mystyleroboto(18),)))),
                    SizedBox(width: 10),
                    Expanded(child: Container(width: 50,height: 50,decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(30)),child: Center(child: Text("42",style: mystyleroboto(18),)))),
                    SizedBox(width: 10),
                    Expanded(child: Container(width: 50,height: 50,decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(30)),child: Center(child: Text("43",style: mystyleroboto(18),)))),
                  ],)),
                  Expanded(flex: 2, child: Container(color: Colors.white,
                  child: Row(

                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Expanded(child: Text("Price",style: mystyleroboto(15,Colors.black,FontWeight.w300))),
                          Expanded(child: Text("849.69",style: mystyleroboto(18,Colors.black,FontWeight.w500))),
                        ],),
                      ),
                      Spacer(),
                      Container(width: 180,height: 60,decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(25)),
                        child: Center(child: Text("Add To Card",style: mystyleroboto(18,Colors.white),)),)
                    ],
                  ),)),
                ],),
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
