import 'package:e_commerce_task/navigation/alart_page.dart';
import 'package:e_commerce_task/navigation/card_page.dart';
import 'package:e_commerce_task/navigation/collaction_page.dart';
import 'package:e_commerce_task/screen/home_page.dart';
import 'package:e_commerce_task/screen/product_page.dart';
import 'package:flutter/material.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {

  int currentTab = 0;
  final List<Widget> screen = [
    ProductPage(),
    CardPage(),
    AlartPage(),
    CollactionPage()
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = ProductPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: currentScreen,
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = ProductPage();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home_filled,
                          color:
                          currentTab == 0 ? Colors.redAccent : Colors.black.withOpacity(.5),
                        ),
                        Text("Home",
                            // style: mystyleroboto(16, currentTab == 0 ? Colors.redAccent : Colors.black.withOpacity(.5),FontWeight.w500)
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = CardPage();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.explore,
                          color:
                          currentTab == 1 ? Colors.redAccent  : Colors.black.withOpacity(.5),
                        ),
                        Text("Explore",
                            // style: mystyleroboto(16, currentTab == 1 ? Colors.redAccent : Colors.black.withOpacity(.5),FontWeight.w500)
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = AlartPage();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.inbox,
                          color:
                          currentTab == 2 ? Colors.redAccent  : Colors.black.withOpacity(.5),
                        ),
                        Text("Index",
                            // style: mystyleroboto(16, currentTab == 2 ? Colors.redAccent : Colors.black.withOpacity(.5),FontWeight.w500)
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = CollactionPage();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shop,
                          color:
                          currentTab == 3 ? Colors.redAccent : Colors.black.withOpacity(.5),
                        ),
                        Text("Shop",
                            // style: mystyleroboto(16, currentTab == 3 ? Colors.redAccent : Colors.black.withOpacity(.5),FontWeight.w500)
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
