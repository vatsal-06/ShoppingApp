import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  final Map<String, dynamic> product;
  const ProductDetailsPage({
    super.key,
    required this.product,
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),

      body: Column(
        children: [
          Center(
            child: Text(product['title'] as String, style: Theme.of(context).textTheme.titleLarge,
            ),
          ),

          const Spacer(),

          Padding(
            padding: const EdgeInsets.all(16.0),  
            child: Image.asset(product['imageUrl'] as String,
            ),
          ),

          const Spacer(flex: 2,),

          Container(
            padding: const EdgeInsets.all(16),
            height: 250,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(245, 247, 249, 1),
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
            child: Column(
              children: [
                Text('\$${product['price']}', style: Theme.of(context).textTheme.titleLarge,),
                const SizedBox(height: 10,),
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: (product['sizes'] as List<int>).length,
                    itemBuilder: (context, index) {
                      final size =(product['sizes'] as List<int>)[index];

                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Chip(
                          label: Text(size.toString()),
                        ),
                      );
                    },
                  ),
                ),

                const SizedBox(height: 10,),

                ElevatedButton(
                  onPressed: () {}, 
                  style: ButtonStyle(
                    minimumSize: WidgetStateProperty.all(const Size(double.infinity, 50)),
                    backgroundColor: WidgetStateProperty.all(Theme.of(context).primaryColor),
                    padding: WidgetStateProperty.all(const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.shopping_cart, color: Colors.black,),
                      SizedBox(width: 4,),
                      Text('Add to Cart', style: TextStyle(color: Colors.black),),
                    ],
                  ),
                  ),
            ],
            ),
          ),

        ],
      ),
    );
  }
}