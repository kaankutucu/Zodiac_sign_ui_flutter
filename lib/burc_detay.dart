import 'package:flutter/material.dart';
import 'package:flutter_zodiac_sign_ui_flutter/burc_liste.dart';
import 'package:flutter_zodiac_sign_ui_flutter/models/burc.dart';
import 'package:flutter_palette/flutter_palette.dart';



class BurcDetay extends StatelessWidget {
  int gelenIndex;
  Burc secilenBurc;

  BurcDetay(this.gelenIndex);

  @override
  Widget build(BuildContext context) {
    secilenBurc = BurcListe.tumBurclar[gelenIndex];

    return Scaffold(
      body: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            primary: true,
            backgroundColor: Colors.purple.shade500,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "images/" + secilenBurc.burcBuyukResim,
                fit: BoxFit.cover,
              ),
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(secilenBurc.burcAdi + "Burcu ve Ozellikleri"),
              ),
              centerTitle: true,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.purple.shade200,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: SingleChildScrollView(
                child: Text(
                  secilenBurc.burcDetayi,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
