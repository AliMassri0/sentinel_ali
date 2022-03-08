import 'package:flutter/material.dart';
import 'package:sentinel/navigationBar.dart';
  class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool PasswordVisible = true;
  bool check = true;
  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: mediaQueryHeight * 0.4,
                  width: mediaQueryWidth,
                  child: Image.asset(
                    'assets/images/task.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  color: Colors.white.withOpacity(0.5),
                  width: mediaQueryWidth,
                  height: mediaQueryHeight * 0.4,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Welcome To ',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'SENTINEL',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const Text(
                      'Health Analytics',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w100),
                    )
                  ],
                ),
              ],
              
            ),
             Padding(padding: EdgeInsets.all(mediaQueryHeight*0.02)),
            Container(
              width: mediaQueryWidth*0.94,
              alignment: Alignment.centerLeft,
              child: const Text(
                "Email address",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
             Padding(padding: EdgeInsets.all(mediaQueryHeight*0.01)),
            SizedBox(
              width: mediaQueryWidth*0.94,
              child: const TextField(
              
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 25),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1,
                     color: Colors.grey),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            Padding(padding: EdgeInsets.all(mediaQueryHeight*0.02)),
            SizedBox(
              width: mediaQueryWidth*0.94,
              child: const Text(
                "Password",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20),
              ),
            ),
             Padding(padding: EdgeInsets.all(mediaQueryHeight*0.01)),
            SizedBox(
              width: mediaQueryWidth * 0.94,
              child: TextField(
                decoration: InputDecoration(
                  labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 25),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color:
                     Colors.grey),
                  ),
                  suffixIcon: IconButton(
                    color: Colors.black,
                    onPressed: () {
                      setState(() {
                        PasswordVisible = !PasswordVisible;
                      });
                    },
                    icon: Icon(
                      PasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                  ),
                ),
                obscureText: PasswordVisible,
              ),
            ),
            Padding(padding: EdgeInsets.all(mediaQueryHeight*0.01)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: mediaQueryWidth * 0.01,
                  vertical: mediaQueryHeight * 0.01),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            check = !check;
                          });
                        },
                        icon: Icon(
                          check
                              ? Icons.check_box
                              : Icons.check_box_outline_blank,
                          color: Colors.blue,
                        ),
                      ),
                      const Text(
                        "Remember me",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 15),
                      ),
                    ],
                  ),
                  TextButton(
                    child: const Text("Forgot Password",
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        )),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(mediaQueryHeight*0.01)),
            ElevatedButton(
              child: const Text(
                'LOG IN',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
              style: ElevatedButton.styleFrom(
                  primary: const Color.fromRGBO(205, 8, 27, 1),
                  padding: EdgeInsets.symmetric(
                    horizontal: mediaQueryWidth * 0.4,
                    vertical: mediaQueryHeight * 0.05,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const NavBar()));},
              
            )
          ],
        ),
      ),
    );
  }
}