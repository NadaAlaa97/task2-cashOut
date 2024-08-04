import 'package:flutter/material.dart';

import '../Model/products_model.dart';

class ProductViewModel extends ChangeNotifier{
  List<Product> products = [
    Product(name: 'سماعات رأس لاسلكية لايف', imageUrl: 'https://media.croma.com/image/upload/v1689155904/Croma%20Assets/Communication/Headphones%20and%20Earphones/Images/273405_0_pily78.png',
        price:45000 , rating: 4.5, reviews: 139, description: 'سماعات راس لاسلكيه'),
    Product(name: 'سماعات رأس لاسلكية لايف', imageUrl: 'https://media.croma.com/image/upload/v1689155904/Croma%20Assets/Communication/Headphones%20and%20Earphones/Images/273405_0_pily78.png',
        price:45000 , rating: 4.5, reviews: 139, description: 'سماعات راس لاسلكيه'),
    Product(name: 'سماعات رأس لاسلكية لايف', imageUrl: 'https://media.croma.com/image/upload/v1689155904/Croma%20Assets/Communication/Headphones%20and%20Earphones/Images/273405_0_pily78.png',
        price:45000 , rating: 4.5, reviews: 139, description: 'سماعات راس لاسلكيه'),
    Product(name: 'سماعات رأس لاسلكية لايف', imageUrl: 'https://media.croma.com/image/upload/v1689155904/Croma%20Assets/Communication/Headphones%20and%20Earphones/Images/273405_0_pily78.png',
        price:45000 , rating: 4.5, reviews: 139, description: 'سماعات راس لاسلكيه'),
    Product(name: 'سماعات رأس لاسلكية لايف', imageUrl: 'https://media.croma.com/image/upload/v1689155904/Croma%20Assets/Communication/Headphones%20and%20Earphones/Images/273405_0_pily78.png',
        price:45000 , rating: 4.5, reviews: 139, description: 'سماعات راس لاسلكيه'),
    Product(name: 'سماعات رأس لاسلكية لايف', imageUrl: 'https://media.croma.com/image/upload/v1689155904/Croma%20Assets/Communication/Headphones%20and%20Earphones/Images/273405_0_pily78.png',
        price:45000 , rating: 4.5, reviews: 139, description: 'سماعات راس لاسلكيه'),
    Product(name: 'سماعات رأس لاسلكية لايف', imageUrl: 'https://media.croma.com/image/upload/v1689155904/Croma%20Assets/Communication/Headphones%20and%20Earphones/Images/273405_0_pily78.png',
        price:45000 , rating: 4.5, reviews: 139, description: 'سماعات راس لاسلكيه'),

  ];
  void loadProducts(){
    products=[
      Product(name: 'سماعات رأس لاسلكية لايف', imageUrl: 'https://media.croma.com/image/upload/v1689155904/Croma%20Assets/Communication/Headphones%20and%20Earphones/Images/273405_0_pily78.png',
          price: 45000, rating: 4.5, reviews: 139, description: 'سماعات راس لاسلكيه'),
      Product(name: 'سماعات رأس لاسلكية لايف', imageUrl: 'https://media.croma.com/image/upload/v1689155904/Croma%20Assets/Communication/Headphones%20and%20Earphones/Images/273405_0_pily78.png',
          price:45000 , rating: 4.5, reviews: 139, description: 'سماعات راس لاسلكيه'),
      Product(name: 'سماعات رأس لاسلكية لايف', imageUrl: 'https://media.croma.com/image/upload/v1689155904/Croma%20Assets/Communication/Headphones%20and%20Earphones/Images/273405_0_pily78.png',
          price:45000 , rating: 4.5, reviews: 139, description: 'سماعات راس لاسلكيه'),
      Product(name: 'سماعات رأس لاسلكية لايف', imageUrl: 'https://media.croma.com/image/upload/v1689155904/Croma%20Assets/Communication/Headphones%20and%20Earphones/Images/273405_0_pily78.png',
          price:45000 , rating: 4.5, reviews: 139, description: 'سماعات راس لاسلكيه'),
      Product(name: 'سماعات رأس لاسلكية لايف', imageUrl: 'https://media.croma.com/image/upload/v1689155904/Croma%20Assets/Communication/Headphones%20and%20Earphones/Images/273405_0_pily78.png',
          price:45000 , rating: 4.5, reviews: 139, description: 'سماعات راس لاسلكيه'),
      Product(name: 'سماعات رأس لاسلكية لايف', imageUrl: 'https://media.croma.com/image/upload/v1689155904/Croma%20Assets/Communication/Headphones%20and%20Earphones/Images/273405_0_pily78.png',
          price:45000 , rating: 4.5, reviews: 139, description: 'سماعات راس لاسلكيه'),
      Product(name: 'سماعات رأس لاسلكية لايف', imageUrl: 'https://media.croma.com/image/upload/v1689155904/Croma%20Assets/Communication/Headphones%20and%20Earphones/Images/273405_0_pily78.png',
          price:45000 , rating: 4.5, reviews: 139, description: 'سماعات راس لاسلكيه'),
      Product(name: 'سماعات رأس لاسلكية لايف', imageUrl: 'https://media.croma.com/image/upload/v1689155904/Croma%20Assets/Communication/Headphones%20and%20Earphones/Images/273405_0_pily78.png',
          price:45000 , rating: 4.5, reviews: 139, description: 'سماعات راس لاسلكيه'),
    ];
    notifyListeners();
  }


}