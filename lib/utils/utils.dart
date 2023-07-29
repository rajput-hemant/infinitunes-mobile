bool isJioSaavnLink(String url) {
  final RegExp regex = RegExp(
      r'^(https?:\/\/)?(www.)?jiosaavn\.com\/(song|shows|album|artist|featured)\/(.+)$');

  return regex.hasMatch(url);
}

String clearUrl(String url) {
  return url
      .toLowerCase()
      .replaceAll(RegExp(r'[^\w\s]'), '')
      .replaceAll(' ', '-')
      .replaceAll('--', '-');
}
