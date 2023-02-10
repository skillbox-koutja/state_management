import 'package:flutter/painting.dart';
import 'package:restaurant_domain/model/customer.dart';

abstract class CustomersRepository {
  const CustomersRepository();

  Future<List<Customer>> fetch();
}

class ConstCustomersRepository extends CustomersRepository {
  const ConstCustomersRepository();

  static final allCustomers = <Customer>[
    Customer(
      name: 'Nathan',
      imageProvider: const NetworkImage('https://flutter'
          '.dev/docs/cookbook/img-files/effects/split-check/Avatar2.jpg'),
    ),
    Customer(
      name: 'Makayla',
      imageProvider: const NetworkImage('https://flutter'
          '.dev/docs/cookbook/img-files/effects/split-check/Avatar1.jpg'),
    ),
    Customer(
      name: 'Emilio',
      imageProvider: const NetworkImage('https://flutter'
          '.dev/docs/cookbook/img-files/effects/split-check/Avatar3.jpg'),
    ),
  ];

  @override
  Future<List<Customer>> fetch() {
    return Future.delayed(Duration(seconds: 1), () {
      return allCustomers;
    });
  }
}
