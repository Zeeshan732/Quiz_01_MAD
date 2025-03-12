import 'dart:io';

class Product 
{
  String name;
  double price;

  Product(this.name, this.price);
}

class ShoppingCart
{
  List<Product> cart = [];

  void addToCart(Product product) 
  {
    cart.add(product);
    print('${product.name} added to your cart.\n');
  }

  void viewCart() 
  {
    if (cart.isEmpty)
    {
      print('Your cart is empty.\n');
      return;
    }

    double total = 0;
    print('\nYour Shopping Cart:');
    for (var item in cart) {
      print('- ${item.name}: \$${item.price}');
      total += item.price;
    }
    print('Total Cost: \$${total}\n');
  }
}

void main() 
{
  List<Product> products = [
    Product('IPHONE', 50000),
    Product('LED', 40000),
    Product('AIRBUDS', 2000),
    Product('PHONE CHARGER', 1500),
    Product('LAPTOP', 100000),
  ];

  ShoppingCart cart = ShoppingCart();

  while (true) 
  {
    print('Available Products:');
    for (int i = 0; i < products.length; i++) {
      print('${i + 1}. ${products[i].name} - \ ${products[i].price}');
    }
    print('6. View Cart');
    print('7. Exit');

    stdout.write('\nEnter your choice: ');
    String? input = stdin.readLineSync()?.trim();

    if (input == null || input.isEmpty) 
    {
      print('Please enter a valid choice.\n');
      continue;
    }

    if (input == '7') 
    {
      print('Exiting... Thank you for shopping!');
      break;
    } else if (input == '6') 
    {
      cart.viewCart();
    } else 
    {
      int? choice = int.tryParse(input);
      if (choice != null && choice >= 1 && choice <= products.length)
      {
        cart.addToCart(products[choice - 1]);
      } else {
        print('Invalid choice, please try again.\n');
      }
    }
  }
}
