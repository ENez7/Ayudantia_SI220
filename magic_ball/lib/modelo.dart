class Modelo {
  int? number;
  String? phrase;

  Modelo({this.number, this.phrase});

  factory Modelo.fromJSON(Map<dynamic, dynamic> json) {
    return Modelo(
      number: json['numberLuck'] as int,
      phrase: json['lucky'] as String?,
    );
  }
}
