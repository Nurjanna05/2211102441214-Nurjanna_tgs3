import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fashion',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 0, 0, 0), 
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Fashion',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
               fontFamily: " cursive ",
              letterSpacing: 2.0, 
              color: Color.fromARGB(255, 0, 0, 0)
            ),
          ),
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          childAspectRatio: 1.0, 
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductItem(product: products[index]);
        },
      ),
    );
  }
}

class Product {
  final String image;

  Product({required this.image});
}

final List<Product> products = [
  Product(
    image: 'https://images.tokopedia.net/img/JFrBQq/2022/7/27/6cbc245d-bd8a-4580-93a2-c5bd6bda80c7.jpg',
  ),

  Product(
    image: 'https://images.tokopedia.net/img/JFrBQq/2022/4/18/56731f86-5081-4eac-8057-772a49020679.jpg',
  ),

  Product(
    image: 'https://images.tokopedia.net/img/JFrBQq/2022/4/18/e4ef1b20-9574-4fa7-9748-02f8fda28d2d.jpg',
  ),

  Product(
    image: 'https://images.tokopedia.net/img/JFrBQq/2022/4/18/ca5bbc48-5f55-4635-b1e0-1e6bd6caa265.jpg',
  ),

  Product(
    image: 'https://images.tokopedia.net/img/JFrBQq/2022/4/18/e1425cd8-5916-4d28-be89-70bd6998efa5.jpg',
  ),

  Product(
    image: 'https://images.tokopedia.net/img/JFrBQq/2022/4/18/6a2467ad-914d-47a5-9316-4c21d8ebd7fb.jpg',
  ),

  Product(
    image: 'https://images.tokopedia.net/img/JFrBQq/2022/4/18/cce86171-2d97-4d9a-8b96-22b47ccadad6.jpg',
  ),

  Product(
    image: 'https://images.tokopedia.net/img/JFrBQq/2022/4/18/3248a8c1-1f61-454a-90b0-f5a237a769bd.jpg',
  ),

  Product(
    image: 'https://images.tokopedia.net/img/JFrBQq/2022/4/18/f603f228-6f5a-4979-9258-d2b292f3282d.jpg',
  ),

  Product(
    image: 'https://images.tokopedia.net/img/JFrBQq/2022/4/18/1056d870-1615-4f3d-830f-2e72bd1dbb5a.jpg',
  ),

];

class ProductItem extends StatelessWidget {
  final Product product;

  ProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
  
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network(
                      product.image,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5), 
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0), 
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
