void main() {
  List<Map> orders = [
    {'orderId': 1, 'ordername': 'cola', 'price': 10},
    {'orderId': 2, 'ordername': 'chips', 'price': 20},
    {'orderId': 3, 'ordername': 'ice cream', 'price': 30},
    {'orderId': 4, 'ordername': 'chocolate', 'price': 40},
  ];

  for (int i = 0; i < orders.length; i++) {
    function(
      orderId: orders[i]['orderId'],
      price: orders[i]['price'],
      ordername: orders[i]['ordername'],
    );
  }
}

void function({required int orderId, required int price, String? ordername}) {
  double taxValue = 0.02;
  double newPrice = price + taxValue;

  print('Order ID: $orderId');
  if (ordername != null) {
    print('Order Name: $ordername');
  }
  print('Original Price: $price');
  print('New Price after Tax: $newPrice');
  print('------------------------------');
}
