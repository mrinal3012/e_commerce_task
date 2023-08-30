import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  // GlobalKey<FormState> _formkey = GlobalKey();
  bool input = true;
  int localValue = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
      body: Container(
       child: Column(
      children: [
        Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      child: input == true
                          ? Image.asset("images/login1.jpg",fit: BoxFit.cover,)
                          : Image.asset("images/login2.jpg"),
                    )),
                Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            flex: 5,
                            child: Text(
                              "Login Details",
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            )),
                        Expanded(
                            flex: 5,
                            child: Form(
                              // key: _formkey,
                              child: Container(
                                  child: TextFormField(
                                    controller: emailController,
                                    validator: (value) {
                                      if (value == localValue) {
                                      } else {
                                        return "Please enter valid email!";
                                      }
                                    },
                                    decoration: InputDecoration(
                                        hintText:
                                        "Username,email & phone number",
                                        border: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(5))),
                                  )),
                            )),
                        Expanded(
                            flex: 5,
                            child: Container(child: TextFormField(controller: passwordController, decoration: InputDecoration(
                                hintText: "Password", border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
                            ))),
                      ],
                    )),
                Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                            flex: 1,
                            child: Text(
                              "Forgot Password,",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff635C5C),
                                  fontWeight: FontWeight.w600),
                            )),
                        Expanded(
                            flex: 2,
                            child: Container(
                              child: MaterialButton(
                                color: input == true
                                    ? Color(0xff0B6EFE)
                                    : Color(0xff0B6EFE).withOpacity(.5),
                                minWidth: double.infinity,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                onPressed: () {
                                  input==true?false:false;
                                  setState(() {

                                  });
                                  // login(emailController.text.toString(),
                                  //     passwordController.text.toString());
                                  // if (_formkey.currentState!.validate()) {
                                  //   print("succesful");
                                  //   // Navigator.of(context).push(MaterialPageRoute(builder: (context) => UserPage(),));
                                  // } else {
                                  //   input = false;
                                  //   setState(() {});
                                  // }
                                },
                                child: Text(
                                  "Login", style: input == true
                                    ? TextStyle(fontSize: 24, color: Color(0xffFFFFFF), fontWeight: FontWeight.w700)
                                      : TextStyle(fontSize: 24, color: Color(0xffFFFFFF).withOpacity(.5), fontWeight: FontWeight.w700),
                                ),
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                Expanded(flex: 1, child: Image.asset("images/rectangle1.jpg"),),
                                Expanded(flex: 1, child: Center(child: Text("Or Sing Up With")),),
                                Expanded(flex: 1, child: Image.asset("images/rectangle2.jpg"),),



                              ],
                            )),
                      ],
                    )),
              ]),
            )),
        Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/vector.png"),
                  )),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: 52,
                            height: 52,
                            decoration: BoxDecoration(
                                color: Color(0xffECE9EC),
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Image.asset("images/google.jpg"),
                                ))),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                            width: 52,
                            height: 52,
                            decoration: BoxDecoration(
                                color: Color(0xffECE9EC),
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30)),
                                  child:
                                  Image.asset("images/facbook.jpg"),
                                ))),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                            width: 52,
                            height: 52,
                            decoration: BoxDecoration(
                                color: Color(0xffECE9EC),
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Image.asset("images/apple.jpg"),
                                ))),
                      ]),
                ],
              ),
            )),
      ],
  ),
),
      ),
    );
  }
}
