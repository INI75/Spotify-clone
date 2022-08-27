import 'package:flutter/material.dart';

class Album { 
  Album({
    required this.albums,
  });
  late final List<Albums> albums;
  
  Album.fromJson(Map<String, dynamic> json){
    albums = List.from(json['albums']).map((e)=>Albums.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['albums'] = albums.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Albums {
  Albums({
    required this.albumType,
    required this.artists,
    required this.availableMarkets,
    required this.copyrights,
    required this.externalIds,
    required this.externalUrls,
    required this.genres,
    required this.href,
    required this.id,
    required this.images,
    required this.label,
    required this.name,
    required this.popularity,
    required this.releaseDate,
    required this.releaseDatePrecision,
    required this.totalTracks,
    required this.tracks,
    required this.type,
    required this.uri,
  });
  late final String albumType;
  late final List<Artists> artists;
  late final List<String> availableMarkets;
  late final List<Copyrights> copyrights;
  late final ExternalIds externalIds;
  late final ExternalUrls externalUrls;
  late final List<dynamic> genres;
  late final String href;
  late final String id;
  late final List<Images> images;
  late final String label;
  late final String name;
  late final int popularity;
  late final String releaseDate;
  late final String releaseDatePrecision;
  late final int totalTracks;
  late final Tracks tracks;
  late final String type;
  late final String uri;
  
  Albums.fromJson(Map<String, dynamic> json){
    albumType = json['album_type'];
    artists = List.from(json['artists']).map((e)=>Artists.fromJson(e)).toList();
    availableMarkets = List.castFrom<dynamic, String>(json['available_markets']);
    copyrights = List.from(json['copyrights']).map((e)=>Copyrights.fromJson(e)).toList();
    externalIds = ExternalIds.fromJson(json['external_ids']);
    externalUrls = ExternalUrls.fromJson(json['external_urls']);
    genres = List.castFrom<dynamic, dynamic>(json['genres']);
    href = json['href'];
    id = json['id'];
    images = List.from(json['images']).map((e)=>Images.fromJson(e)).toList();
    label = json['label'];
    name = json['name'];
    popularity = json['popularity'];
    releaseDate = json['release_date'];
    releaseDatePrecision = json['release_date_precision'];
    totalTracks = json['total_tracks'];
    tracks = Tracks.fromJson(json['tracks']);
    type = json['type'];
    uri = json['uri'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['album_type'] = albumType;
    _data['artists'] = artists.map((e)=>e.toJson()).toList();
    _data['available_markets'] = availableMarkets;
    _data['copyrights'] = copyrights.map((e)=>e.toJson()).toList();
    _data['external_ids'] = externalIds.toJson();
    _data['external_urls'] = externalUrls.toJson();
    _data['genres'] = genres;
    _data['href'] = href;
    _data['id'] = id;
    _data['images'] = images.map((e)=>e.toJson()).toList();
    _data['label'] = label;
    _data['name'] = name;
    _data['popularity'] = popularity;
    _data['release_date'] = releaseDate;
    _data['release_date_precision'] = releaseDatePrecision;
    _data['total_tracks'] = totalTracks;
    _data['tracks'] = tracks.toJson();
    _data['type'] = type;
    _data['uri'] = uri;
    return _data;
  }
}

class Artists {
  Artists({
    required this.externalUrls,
    required this.href,
    required this.id,
    required this.name,
    required this.type,
    required this.uri,
  });
  late final ExternalUrls externalUrls;
  late final String href;
  late final String id;
  late final String name;
  late final String type;
  late final String uri;
  
  Artists.fromJson(Map<String, dynamic> json){
    externalUrls = ExternalUrls.fromJson(json['external_urls']);
    href = json['href'];
    id = json['id'];
    name = json['name'];
    type = json['type'];
    uri = json['uri'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['external_urls'] = externalUrls.toJson();
    _data['href'] = href;
    _data['id'] = id;
    _data['name'] = name;
    _data['type'] = type;
    _data['uri'] = uri;
    return _data;
  }
}

class ExternalUrls {
  ExternalUrls({
    required this.spotify,
  });
  late final String spotify;
  
  ExternalUrls.fromJson(Map<String, dynamic> json){
    spotify = json['spotify'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['spotify'] = spotify;
    return _data;
  }
}

class Copyrights {
  Copyrights({
    required this.text,
    required this.type,
  });
  late final String text;
  late final String type;
  
  Copyrights.fromJson(Map<String, dynamic> json){
    text = json['text'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['text'] = text;
    _data['type'] = type;
    return _data;
  }
}

class ExternalIds {
  ExternalIds({
    required this.upc,
  });
  late final String upc;
  
  ExternalIds.fromJson(Map<String, dynamic> json){
    upc = json['upc'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['upc'] = upc;
    return _data;
  }
}

class Images {
  Images({
    required this.height,
    required this.url,
    required this.width,
  });
  late final int height;
  late final String url;
  late final int width;
  
  Images.fromJson(Map<String, dynamic> json){
    height = json['height'];
    url = json['url'];
    width = json['width'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['height'] = height;
    _data['url'] = url;
    _data['width'] = width;
    return _data;
  }
}

class Tracks {
  Tracks({
    required this.href,
    required this.items,
    required this.limit,
     this.next,
    required this.offset,
     this.previous,
    required this.total,
  });
  late final String href;
  late final List<Items> items;
  late final int limit;
  late final Null next;
  late final int offset;
  late final Null previous;
  late final int total;
  
  Tracks.fromJson(Map<String, dynamic> json){
    href = json['href'];
    items = List.from(json['items']).map((e)=>Items.fromJson(e)).toList();
    limit = json['limit'];
    next = null;
    offset = json['offset'];
    previous = null;
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['href'] = href;
    _data['items'] = items.map((e)=>e.toJson()).toList();
    _data['limit'] = limit;
    _data['next'] = next;
    _data['offset'] = offset;
    _data['previous'] = previous;
    _data['total'] = total;
    return _data;
  }
}

class Items {
  Items({
    required this.artists,
    required this.availableMarkets,
    required this.discNumber,
    required this.durationMs,
    required this.explicit,
    required this.externalUrls,
    required this.href,
    required this.id,
    required this.isLocal,
    required this.name,
     this.previewUrl,
    required this.trackNumber,
    required this.type,
    required this.uri,
  });
  late final List<Artists> artists;
  late final List<String> availableMarkets;
  late final int discNumber;
  late final int durationMs;
  late final bool explicit;
  late final ExternalUrls externalUrls;
  late final String href;
  late final String id;
  late final bool isLocal;
  late final String name;
  late final String? previewUrl;
  late final int trackNumber;
  late final String type;
  late final String uri;
  
  Items.fromJson(Map<String, dynamic> json){
    artists = List.from(json['artists']).map((e)=>Artists.fromJson(e)).toList();
    availableMarkets = List.castFrom<dynamic, String>(json['available_markets']);
    discNumber = json['disc_number'];
    durationMs = json['duration_ms'];
    explicit = json['explicit'];
    externalUrls = ExternalUrls.fromJson(json['external_urls']);
    href = json['href'];
    id = json['id'];
    isLocal = json['is_local'];
    name = json['name'];
    previewUrl = null;
    trackNumber = json['track_number'];
    type = json['type'];
    uri = json['uri'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['artists'] = artists.map((e)=>e.toJson()).toList();
    _data['available_markets'] = availableMarkets;
    _data['disc_number'] = discNumber;
    _data['duration_ms'] = durationMs;
    _data['explicit'] = explicit;
    _data['external_urls'] = externalUrls.toJson();
    _data['href'] = href;
    _data['id'] = id;
    _data['is_local'] = isLocal;
    _data['name'] = name;
    _data['preview_url'] = previewUrl;
    _data['track_number'] = trackNumber;
    _data['type'] = type;
    _data['uri'] = uri;
    return _data;
  }
}