import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 150,
            height: 200,
            margin: EdgeInsets.all(10),
            child: Image.asset(
              "assets/login.png",
              // width: 30,
              // height: 40,
            ),
          ),
          Center(
            child: Container(
              width: 70,
              height: 30,
              // margin: EdgeInsets.only(bottom: 60),
              child: Text(
                "Sign In",
                style: TextStyle(fontSize: 18, color: Colors.blueAccent),
              ),
            ),
          ),
          Column(
            children: [
              Container(
                width: 350,
                height: 50,
                margin: EdgeInsets.all(10),
                child: Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefix: Icon(Icons.email),
                        labelText: "Email: ",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ),
              Container(
                width: 350,
                margin: EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.password),
                      labelText: "Password: ",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Container(
                width: 80,
                height: 20,
                margin: EdgeInsets.all(20),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "LOGIN",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Color.fromARGB(255, 6, 112, 199),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              Container(
                child: Text(
                  "Forget email",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  "Forget password",
                  style: TextStyle(color: Colors.grey),
                ),
              )
            ],
          ),
        ],
      )),
    );
  }
}
