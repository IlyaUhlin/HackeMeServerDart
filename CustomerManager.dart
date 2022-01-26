import 'dart:io';

import 'dart:typed_data';

class CustomerManager{

  late final Socket _customer;
  CustomerManager(Socket customer) {
    this._customer = customer;
    _listenCustomer();
  }

  void _listenCustomer() {
    _customer.listen((Uint8List data) async{
      final customerData = String.fromCharCodes(data);
    },
      onDone: (){print("Customer disconnected");},
      onError: (error){print(error);}
    );
  }

}