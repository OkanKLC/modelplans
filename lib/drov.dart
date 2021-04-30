import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test1/info.dart';
import 'package:test1/jet.dart';
import 'package:test1/main.dart';
import 'package:test1/prop.dart';
import 'user.dart';
void main() {
  runApp(MyDrover());
}

class MyDrover extends StatefulWidget {
  @override
  _MyDroverState createState() => _MyDroverState();
}
class _MyDroverState extends State<MyDrover>{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            ),
            child: Text(User.kullaniciAdi,style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),),

            ),


          ListTile(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ModelPlans()),
              );
            },
            title: Text("Anasayfa"),
          ),
          ListTile(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => JetSayfa()),
              );
            },
            title: Text("Jet Uçak Planları"),
          ),
          ListTile(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PropSayfa()),
              );
            },
            title: Text("Prop Uçak Planları"),
          ),

          ListTile(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HakSayfa()),
              );
            },
            title: Text("Hakkımızda"),
          ),


        ],
      ),

    );
  }

}