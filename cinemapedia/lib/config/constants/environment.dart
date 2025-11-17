import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environmet {
  static String movieDdKey = dotenv.env['TMBD_KEY'] ?? 'no existe apikey';
}
