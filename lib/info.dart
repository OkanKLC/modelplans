import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'drov.dart';

class HakSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
          title: Text(
            'Model Plans',
            style: TextStyle(

              color: Colors.white,
              fontSize: 24,
            ),
          ),
          actions: [
            IconButton(

              icon: Icon(Icons.arrow_back),
              onPressed: (){
                Navigator.pop(context);
              },

            ),
          ],



        ),
        drawer: MyDrover(
        ),
        body: HakkUyg(),
      ),
    );
  }
}

class HakkUyg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.blueGrey,

                height: 300,
                child: Center(child: Text('Bu uygulama Dr. Öğretim üyesi Ahmet Cevahir Çınar tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 193301062 numaralı Okan KILIÇ tarafından 30 Nisan 2021 günü yapılmıştır'),
                ),

              ),

            ],

          ),

        ),
      ),
    );
  }
}

