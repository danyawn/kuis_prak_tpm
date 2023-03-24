import 'package:flutter/material.dart';
import 'package:kuis_prak_tpm/groceries.dart';

class DetailPage extends StatelessWidget {
  final Groceries groceries;
  const DetailPage({Key? key, required this.groceries}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(groceries.name),
      ),
      body: Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Image.network(
                  groceries.productImageUrls[0],
                  fit: BoxFit.fitWidth,
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Text('Deskripsi Produk'),
                          SizedBox(height: 16.0),
                          Text(groceries.description),
                          SizedBox(height: 16.0),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Row(
                                children: [
                                  Text('Harga : '),
                                  Text(groceries.price),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('     Diskon : '),
                                  Text(groceries.discount),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [Text('Stok : '), Text(groceries.stock)],
                          ),
                          Row(
                            children: [
                              Text('Toko : '),
                              Text(groceries.storeName)
                            ],
                          ),
                          Row(
                            children: [
                              Text('Product URL : '),
                              Text(groceries.productUrl)
                            ],
                          )
                        ],
                      )
                    ],
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
