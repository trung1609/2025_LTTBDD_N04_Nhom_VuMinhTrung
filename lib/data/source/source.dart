import 'dart:convert';

import 'package:flutter/services.dart';

import '../model/song.dart';
import 'package:http/http.dart' as http;

//interface chung
abstract interface class DataSource{
  Future<List<Song>?> loadData();

}
class RemoteDataSource implements DataSource{
  @override
  Future<List<Song>?> loadData() async {
    const url = 'https://thantrieu.com/resources/braniumapis/songs.json';
    final uri =  Uri.parse(url); //chuyển String thành Uri
    final response = await http.get(uri); //gửi request lên server
    if(response.statusCode == 200){
      final bodyContent = utf8.decode(response.bodyBytes); // giải mã dữ liệu từ internet về
      var songWrapper = jsonDecode(bodyContent) as Map; //chuyển String thành Map
      var songList = songWrapper['songs'] as List; // lấy danh sách bài hát
      List<Song> songs = songList.map((song) => Song.fromJson(song)).toList(); // chuyển object sang List<Song>
      return songs;
    }else{
      return null;
    }
  }
}
class LocalDataSource implements DataSource{
  @override
  Future<List<Song>?> loadData() async{
    final String response = await rootBundle.loadString('assets/songs.json');
    final jsonBody = jsonDecode(response) as Map;
    final songList = jsonBody['songs'] as List;
    List<Song> songs = songList.map((song) => Song.fromJson(song)).toList();
    return songs;
  }

}