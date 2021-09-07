class Info {
  String? api;
  String? description;
  String? auth;
  bool? https;
  String? cors;
  String? link;
  String? categoria;

  Info({
    this.api,
    this.description,
    this.auth,
    this.https,
    this.cors,
    this.link,
    this.categoria,
  });

  Info.newInfo({
    this.api,
    this.description,
    this.categoria,
  });

  factory Info.fromJSON(Map<dynamic, dynamic> json) {
    return Info(
      api: json['API'] as String?,
      description: json['Description'] as String?,
      auth: json['Auth'] as String?,
      https: json['HTTPS'] as bool?,
      cors: json['Cors'] as String?,
      link: json['Link'] as String?,
      categoria: json['Category'] as String?,
    );
  }
}
