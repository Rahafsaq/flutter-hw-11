import 'package:flutter/material.dart';

import 'added.dart';
import 'models/data.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 216, 213, 213),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                const Icon(Icons.more_vert),
                const Icon(Icons.search_rounded),
                const Icon(Icons.shopping_cart),
                const SizedBox(
                  width: 350,
                ),
                Image.network(
                  'https://images-ext-2.discordapp.net/external/16UjiqVuvVHLJmDnUKO3Hd-j6r7-LOpE3t2fKUn4x08/https/cdn.salla.sa/Aedxd/8D8EilcRfEvFAvtNwz5eh9828wz1xhZiOOyXHYiv.png',
                  height: 50,
                  width: 50,
                ),
              ],
            ),
            Expanded(
              child: ListView(
                // scrollDirection: Axis.horizontal,
                children: [
                  const SingleChildScrollView(),
                  for (var product in Data.products)
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (Context) => SingleChildScrollView(
                                child: Container(
                                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                                    child: Added(
                                      product: product,
                                    ))),
                          );
                        },
                        child: Padding(
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
                      ),
                    ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      'Customers opinion:',
                      style: TextStyle(color: Color(0xffa4bea0), fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(50),
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Image.network(
                                  'data:image/png;base64,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',
                                  height: 55,
                                  width: 55,
                                ),
                              ),
                              Column(
                                children: const [
                                  Text(
                                    'Ahmad',
                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                  ),
                                  Text('Riyadh'),
                                ],
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.all(12),
                            child: Text(
                              'Distinguished products at competitive prices and upscale and respectful treatment.',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Row(
                            children: const [
                              SizedBox(
                                width: 20,
                              ),
                              Icon(
                                Icons.star_rate_rounded,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star_rate_rounded,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star_rate_rounded,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star_rate_rounded,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star_rate_rounded,
                                color: Colors.yellow,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
