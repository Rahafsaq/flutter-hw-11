import 'package:flutter/material.dart';

import 'models/data.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 204, 201, 201),
      body: SafeArea(
        child: Center(
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Text(
                    'Cart',
                    style:
                        TextStyle(color: Color.fromARGB(255, 113, 148, 108), fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  for (var product in Data.cart)
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
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
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
