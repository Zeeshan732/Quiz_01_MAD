// import 'dart:io';

// // Product class to represent each product
// class Product {
//   String name;
//   double price;

//   Product(this.name, this.price);
// }

// // ShoppingCart class to manage selected products
// class ShoppingCart {
//   List<Product> cart = [];

//   void addToCart(Product product) {
//     cart.add(product);
//     print('${product.name} added to your cart.\n');
//   }

//   void viewCart() {
//     if (cart.isEmpty) {
//       print('Your cart is empty.\n');
//       return;
//     }

//     double total = 0;
//     print('\nYour Shopping Cart:');
//     for (var item in cart) {
//       print('- ${item.name}: \$${item.price}');
//       total += item.price;
//     }
//     print('Total Cost: \$${total}\n');
//   }
// }

// // Main function to run the application
// void main() {
//   List<Product> products = [
//     Product('Laptop', 799.99),
//     Product('Smartphone', 499.99),
//     Product('Headphones', 99.99),
//     Product('Keyboard', 49.99),
//     Product('Mouse', 29.99),
//   ];

//   ShoppingCart cart = ShoppingCart();

//   while (true) {
//     print('Available Products:');
//     for (int i = 0; i < products.length; i++) {
//       print('${i + 1}. ${products[i].name} - \$${products[i].price}');
//     }
//     print('6. View Cart');
//     print('7. Exit');

//     stdout.write('\nEnter your choice: ');
//     String? input = stdin.readLineSync()?.trim(); // Trim spaces and check for null

//     if (input == null || input.isEmpty) { // Check if input is empty or null
//       print('⚠️ No input provided. Please enter a valid choice.\n');
//       continue;
//     }

//     if (input == '7') {
//       print('Exiting... Thank you for shopping!');
//       break;
//     } else if (input == '6') {
//       cart.viewCart();
//     } else {
//       int? choice = int.tryParse(input);
//       if (choice != null && choice >= 1 && choice <= products.length) {
//         cart.addToCart(products[choice - 1]);
//       } else {
//         print('⚠️ Invalid choice, please try again.\n');
//       }
//     }
//   }
// }

import 'dart:io';

class Product {
  String name;
  double price;

  Product(this.name, this.price);
}

class ShoppingCart {
  List<Product> cart = [];

  void addtoCart(Product product) {
    cart.add(product);
    print('${product.name}');

    void viewCart() {
      if (cart.isEmpty) {
        print("YOur CArt is Empty");
      }
    }

    double total = 0;

    for (var item in cart) {
      print('${item.name}' + '${item.price}');
      total += item.price;
    }
  }

  void main() {
    List<Product> product = [
      Product('Laptop', 799.99),
      Product('Smartphone', 499.99),
      Product('Headphones', 99.99),
      Product('Keyboard', 49.99),
      Product('Mouse', 29.99),
    ];

    ShoppingCart cart = ShoppingCart();

    while (true) {
      for (int i = 0; i < product.length; i++) {
        print(
          '${i + 1}'
                  '${product[i].name}' +
              '${product[i].price}',
        );
      }

      print('6. View Item');
      print('7. Exit');
    }
  }
}
