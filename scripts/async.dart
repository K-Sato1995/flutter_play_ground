Future<String> fetchOrder() {
  return Future.delayed(Duration(seconds: 2), () => 'Large Latte');
}

main() async {
  var result = await fetchOrder();
  print(result);
}
