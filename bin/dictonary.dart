import 'dart:convert';

void main(List<String> arguments) {
  var foods = jsonDecode('''
[
 {
 "name": "pizza", "price": 44.0
 },
 {
 "name": "burger","price": 35.0
 },
 {
 "name": "Albaik","price": 23.0
 }
 ]
 
''');

  print(foods.toString());

  var value = foods.map((order) => order["price"] as double);
  var totalprice = value.fold(0.0, (a, b) => b *= 4);
  print(totalprice);
  // final total = foods.entries.where((e) => e.value == "price").toList().length;
  // print(total);
}
