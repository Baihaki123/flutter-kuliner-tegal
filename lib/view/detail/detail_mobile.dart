import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuliner_tegal/model/produk.dart';
import 'package:kuliner_tegal/data/list_data.dart';

import '../detail_screen.dart';

class DetailMobilePage extends StatelessWidget {
  Product product;

  DetailMobilePage(this.product);


  @override
  Widget build(BuildContext context) {
    var rate;
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.network(product.imageProducts),
                  SafeArea(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.blue.shade900,
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                    left:32.0,
                    top: 12.0
                ),
                child: Text(
                    product.price,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Inder'
                    )
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: 32.0,
                    top: 8.0
                ),
                child: Text(
                  product.title,
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: 32.0,
                    right: 10.0,
                    top: 8.0
                ),
                child: Text(
                  product.subTitle,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontFamily: 'Inder'
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 16.0
                ),
                color: Color(0xFFECF0EF),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          bottom: 6.0
                      ),
                      child: Container(
                        width: 64.0,
                        height: 64.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(product.imageSeller),
                                fit: BoxFit.fill
                            )
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                            left: 16.0,
                            top: 6.0,
                            bottom: 6.0
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              product.storeName,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                    top: 4.0
                                )
                            ),
                            Container(
                              padding: EdgeInsets.all(6.0),
                              color: Color(0xFFCECECE),
                              child: Text(
                                product.city,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 8.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        )
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.food_bank),
                      SizedBox(height: 16.0),
                      Text("Kuliner")
                     ],
                  ),

                  Column(
                    children: [
                      Icon(Icons.star_sharp, color: Colors.yellow.shade800),
                      SizedBox(height: 16.0),
                      Text("Rate 4.9", style: TextStyle(color: Colors.yellow.shade800),)
                      ],
                  ),

                  Column(
                    children: [
                      FavoriteButton(),
                      Text("Favorite", style: TextStyle(color: Colors.red))
                      ],
                    )
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(
                    top: 12.0,
                    bottom: 12.0
                ),
                color: Color(0xFF778899),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                          top: 32.0,
                          left: 16.0
                      ),
                      child: Text(
                        "Deskripsi Produk",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(
                            top: 16.0,
                            bottom: 16.0
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Text(
                            product.description,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.white,
                            ),
                          ),
                        )
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}