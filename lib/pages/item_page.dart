import 'package:flutter/material.dart';
import 'package:flutter_uts/models/item.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          itemArgs.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Material(
          child: ListView(
        children: [
          Hero(
              tag: 'Item Hero',
              child: Image.network(
                itemArgs.picture,
                width: double.infinity,
                fit: BoxFit.cover,
              )),
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Rp ${itemArgs.price.toString()}',
                  style: const TextStyle(fontSize: 24, color: Colors.blue),
                ),
                Text(
                  itemArgs.name,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                        SizedBox(width: 8),
                        Text(itemArgs.rating.toString(),
                            style: const TextStyle(
                                fontSize: 16, color: Colors.blueGrey)),
                      ],
                    ),
                    Text(
                      'Stok : ${itemArgs.stock.toString()}',
                      style:
                          const TextStyle(fontSize: 16, color: Colors.blueGrey),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Text(
                  'Harga sedang tinggi dikarenakan biaya ekspedisi mahal',
                  style: TextStyle(fontSize: 12, color: Colors.blueGrey),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
