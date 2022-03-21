
import 'package:flutter/material.dart';
import 'package:kuliner_tegal/model/produk.dart';

import 'detail/detail_mobile.dart';
import 'detail/detail_web.dart';

class DetailScreen extends StatelessWidget {

  Product product;

  DetailScreen(this.product);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 800) {
            return DetailWebPage(product);
          } else {
            return DetailMobilePage(product);
          }
        }
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FavoriteButton();
}

class _FavoriteButton extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
