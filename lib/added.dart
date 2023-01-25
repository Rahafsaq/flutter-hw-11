import 'package:flutter/material.dart';

import 'models/data.dart';

class Added extends StatelessWidget {
  const Added({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'product details',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 57, 120, 86)),
          ),
          Container(
            height: 400,
            width: 350,
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Image(
                  image: NetworkImage(product.image),
                  height: 300,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    product.name,
                    style: const TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Text(
                        product.price,
                        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          TextButton(
            onPressed: () {
              Data.cart.add(product);
            },
            style: TextButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: const Color.fromARGB(255, 71, 140, 94)),
            child: const Text('Add to cart'),
          )
        ],
      ),
    );
  }
}
