import 'dart:io';

import 'CustomerManager.dart';

void main() {

}

class Server {
  void startServer() async {
    final server = await ServerSocket.bind(InternetAddress.anyIPv4, 1234);
    print("Server is started");
    server.listen((customer) {
      CustomerManager(customer);
    });
  }
}
