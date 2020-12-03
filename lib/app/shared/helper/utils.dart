
import 'package:flutter/services.dart' show rootBundle;

Future<String> loadMockFromAssets(String nameFile) async {
  return await rootBundle.loadString('assets/mocks/$nameFile.json');
}