import 'package:car_rental_for_customer/app/app.dart';
import 'package:car_rental_for_customer/bootstrap.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  await dotenv.load(fileName: '.env');
  await bootstrap(() => const App());
}
