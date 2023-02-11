import 'package:flutter/painting.dart';
import 'package:restaurant_domain/model/customer.dart';

abstract class CustomersRepository {
  const CustomersRepository();

  Future<List<Customer>> fetch();
}

class ConstCustomersRepository extends CustomersRepository {
  static final allCustomers = <Customer>[
    const Customer(
      name: 'Nathan',
      imageProvider: NetworkImage('https://flutter'
          '.dev/docs/cookbook/img-files/effects/split-check/Avatar2.jpg'),
    ),
    const Customer(
      name: 'Makayla',
      imageProvider: NetworkImage('https://flutter'
          '.dev/docs/cookbook/img-files/effects/split-check/Avatar1.jpg'),
    ),
    const Customer(
      name: 'Emilio',
      imageProvider: NetworkImage('https://flutter'
          '.dev/docs/cookbook/img-files/effects/split-check/Avatar3.jpg'),
    ),
  ];

  const ConstCustomersRepository();

  @override
  Future<List<Customer>> fetch() {
    return Future.delayed(const Duration(seconds: 1), () {
      return allCustomers;
    });
  }
}
