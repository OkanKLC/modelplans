import 'package:flutter/material.dart';
import 'package:test1/main.dart';
import 'package:test1/user.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController inputController = new TextEditingController();
  String isim = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Container(
          child: Padding(

            padding: const EdgeInsets.all(100.0),

            child: Column(

              children: [
                SizedBox(
                  height: 200,
                ),
                Text('Model Plans',style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),),
                Center(
                  child: TextField(
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    controller: inputController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ElevatedButton(
                    style:
                    ElevatedButton.styleFrom(primary: Colors.blueGrey[800]),
                    onPressed: () {
                      User.kullaniciAdi = inputController.text;
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ModelPlans()),
                      );},

                      child: Text('GİRİŞ'),
                       ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
