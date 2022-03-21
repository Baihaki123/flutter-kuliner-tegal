import 'package:flutter/material.dart';
import 'package:kuliner_tegal/data/list_data.dart';

import '../detail_screen.dart';

class ProductGrid extends StatelessWidget {
  int totalGrid;

  ProductGrid(this.totalGrid);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scrollbar(
        isAlwaysShown: true,
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 24.0
          ),
          child: GridView.count(
            crossAxisCount: totalGrid,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            children: listOfProducts.map((product) {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailScreen(product);
                  }));
                },
                child: Card(
                  color: const Color(0xFF778899),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                            child: Image.network(product.imageProducts)
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: 36.0
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.title,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: Colors.white
                                ),
                              ),
                              SizedBox(height: 4.0),
                              Text(
                                product.storeName,
                                style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.white,
                                    fontFamily: 'Poppins'
                                ),
                              ),
                              SizedBox(height: 12.0),
                              Text(
                                product.price,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0,
                                    color: const Color(0xFF87CEEB)
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        )
    );
  }
}