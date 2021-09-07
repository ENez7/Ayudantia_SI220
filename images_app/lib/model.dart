class Model {
  int? albumId;
  int? id;
  String? title;
  String? flink;
  String? slink;

  Model({this.albumId, this.id, this.title, this.flink, this.slink});

  factory Model.fromJson(Map<dynamic, dynamic> json) {
    return Model(
      albumId: json['albumId'] as int,
      id: json['id'] as int,
      title: json['title'] as String?,
      flink: json['url'] as String?,
      slink: json['thumbnailUrl'] as String?,
    );
  }
}
