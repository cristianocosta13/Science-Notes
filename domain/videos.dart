class Video {
  late int id;
  late String urlImage;
  late String title;
  late String duration;
  late String urlVideo;
  late int idContent;

  Video(
      {required this.id,
        required this.urlImage,
        required this.title,
        required this.duration,
        required this.urlVideo,
        required this.idContent});

  Video.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    urlImage = json['url_image'];
    title = json['title'];
    duration = json['duration'];
    urlVideo = json['url_video'];
    idContent = json['id_content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['url_image'] = this.urlImage;
    data['title'] = this.title;
    data['duration'] = this.duration;
    data['url_video'] = this.urlVideo;
    data['id_content'] = this.idContent;
    return data;
  }
}

// class Videos {
//   String urlImage;
//   String tituloVideo;
//   String tempoDuracao;
//   String urlVideo;
//
//   Videos(
//       {required this.urlImage,
//       required this.tituloVideo,
//       required this.tempoDuracao,
//       required this.urlVideo});
// }
