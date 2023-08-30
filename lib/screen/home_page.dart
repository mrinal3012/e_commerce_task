import 'package:e_commerce_task/screen/login_Page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,height: double.infinity,
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage(),));
          },
          child: Container(
            height: double.infinity,
          width: double.infinity,
          child: Image.asset("images/home.jpg",fit: BoxFit.cover,),
          ),
        ),
      ),
    );
  }
}
