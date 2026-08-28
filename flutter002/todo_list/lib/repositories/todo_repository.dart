import 'package:shared_preferences/shared_preferences.dart';

class TodoRepository {
  TodoRepository() {
    SharedPreferences.getInstance().then((value) => sharedPreferences);
  }

  late SharedPreferences sharedPreferences;
}