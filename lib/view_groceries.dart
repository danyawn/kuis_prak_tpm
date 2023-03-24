import 'package:flutter/material.dart';
import 'groceries.dart';
import 'detail_grocery.dart';

class groceriesView extends StatelessWidget {
  const groceriesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: groceryList.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailPage(
                        groceries: groceryList[index],
                      )));
            },
            child: groceriesCard(groceries: groceryList[index]));
      },
    );
  }
}

class groceriesCard extends StatelessWidget {
  final Groceries groceries;

  const groceriesCard({Key? key, required this.groceries}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
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
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    groceries.name,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(height: 16.0),
                  SizedBox(height: 16.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text("Nama Toko : " + groceries.storeName),
                          SizedBox(
                            width: 8.0,
                          ),
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
    );
  }
}
