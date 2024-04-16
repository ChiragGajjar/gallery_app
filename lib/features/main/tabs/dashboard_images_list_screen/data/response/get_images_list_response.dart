
class GetImagesListResponse {
  final String total;
  final List<GetImagesHitsListResponse> data;

  GetImagesListResponse({
    required this.total,
    required this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'total':total,
      'hits':data.map((x) => x.toJson()).toList(),
    };
  }

  factory GetImagesListResponse.fromJson(Map<String, dynamic> map) {
    return GetImagesListResponse(
      total: map['total']!= null ? map['total'].toString() : "",
      data: map['hits']!= null ? List<GetImagesHitsListResponse>.from(map['hits']?.map((x) => GetImagesHitsListResponse.fromJson(x))) : [],
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GetImagesListResponse &&
        total == total &&
        other.data == data;
  }

  @override
  int get hashCode =>
      total.hashCode ^
      data.hashCode;
}

class GetImagesHitsListResponse {
  final String id;
  final String type;
  final String tags;
  final String previewURL;
  final String largeImageURL;
  final String fullHDURL;
  final String imageURL;
  final String views;
  final String downloads;
  final String likes;
  final String comments;

  GetImagesHitsListResponse({
    required this.id,
    required this.type,
    required this.tags,
    required this.previewURL,
    required this.largeImageURL,
    required this.fullHDURL,
    required this.imageURL,
    required this.views,
    required this.downloads,
    required this.likes,
    required this.comments,
  });

  Map<String, dynamic> toJson() {
    return {
      'id':id,
      'type':type,
      'tags':tags,
      'previewURL':previewURL,
      'largeImageURL':largeImageURL,
      'fullHDURL':fullHDURL,
      'imageURL':imageURL,
      'views':views,
      'downloads':downloads,
      'likes':likes,
      'comments':comments,
    };
  }

  factory GetImagesHitsListResponse.fromJson(Map<String, dynamic> map) {
    return GetImagesHitsListResponse(
      id: map['id']!= null ? map['id'].toString() : '',
      type: map['type']!= null ? map['type'].toString() : '',
      tags: map['tags']!= null ? map['tags'].toString() : '',
      previewURL: map['previewURL']!= null ? map['previewURL'].toString() : '',
      largeImageURL: map['largeImageURL']!= null ? map['largeImageURL'].toString() : '',
      fullHDURL: map['fullHDURL']!= null ? map['fullHDURL'].toString() : '',
      imageURL: map['imageURL']!= null ? map['imageURL'].toString() : '',
      views: map['views']!= null ? map['views'].toString() : '',
      downloads: map['downloads']!= null ? map['downloads'].toString() : '',
      likes: map['likes']!= null ? map['likes'].toString() : '',
      comments: map['comments']!= null ? map['comments'].toString() : '',
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GetImagesHitsListResponse &&
        other.id == id &&
        other.tags == tags &&
        other.previewURL == previewURL &&
        other.largeImageURL == largeImageURL &&
        other.fullHDURL == fullHDURL &&
        other.imageURL == imageURL &&
        other.views == views &&
        other.downloads == downloads &&
        other.likes == likes &&
        other.comments == comments &&
        other.type == type;
  }

  @override
  int get hashCode =>
      id.hashCode ^
      tags.hashCode ^
      previewURL.hashCode ^
      largeImageURL.hashCode ^
      fullHDURL.hashCode ^
      imageURL.hashCode ^
      views.hashCode ^
      downloads.hashCode ^
      likes.hashCode ^
      comments.hashCode ^
      type.hashCode;
}
