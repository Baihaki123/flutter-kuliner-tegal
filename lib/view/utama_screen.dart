import 'package:flutter/material.dart';
import 'package:kuliner_tegal/data/list_data.dart';
import 'package:kuliner_tegal/model/produk.dart';

import 'detail_screen.dart';
import 'utama/utama.dart';
import 'utama/utama_list.dart';

class UtamaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Scaffold(
            appBar: AppBar(
              title: Text("NegaL"),
              backgroundColor: Colors.blue.shade900,
            ),
            body: LayoutBuilder(
                builder:(BuildContext context, BoxConstraints constraints) {
                  if (constraints.maxWidth <= 600) {
                    return ProductList();
                  } else if (constraints.maxWidth <= 1200) {
                    return ProductGrid(2);
                  } else {
                    return ProductGrid(4);
                  }
                }
            ),
          );
        }
    );
  }
}