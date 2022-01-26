import 'dart:io';

class Disposer {
  String currentPath = "D:\\root\\home\\";
  String homePath = "D:\\root\\home\\";

  Future<File?> writeFile(nameOfFile, data) async {
    if (nameOfFile == "" && nameOfFile == null) {
      throw ArgumentError("Filename cannot be empty", nameOfFile);
    } else if (data == "" && data == null) {
      throw ArgumentError("Data cannot be empty", data);
    }
    File file = File(currentPath + nameOfFile);
    final fileExists = await file.exists();
    if (fileExists) {
      try {
        return await file.writeAsString(data);
      }catch(e){
        print(e);
      }
    } else {
      throw FileSystemException(
          "The file does not exist", currentPath + nameOfFile);
    }
  }

  Future<String?> readFile(nameOfFile) async {
    if (nameOfFile == "" && nameOfFile == null) {
      throw ArgumentError("Filename cannot be empty", nameOfFile);
    }
    File file = new File(currentPath + nameOfFile);
    final fileExists = await file.exists();
    if (fileExists) {
      try {
        return await file.readAsString();
      }catch(e){
        print(e);
      }
    } else {
      throw FileSystemException(
          "The file does not exist", currentPath + nameOfFile);
    }
  }

  Future<File?> createFile(nameOfFile) async {
    if (nameOfFile == "" && nameOfFile == null) {
      throw ArgumentError("Filename cannot be empty", nameOfFile);
    }
    File file = new File(currentPath + nameOfFile);
    try {
      return await file.create(recursive: true);
    }catch(e){
      print(e);
    }
  }
}
