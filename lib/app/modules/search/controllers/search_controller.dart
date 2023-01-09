import 'package:get/get.dart';
import 'package:movies/app/data/models/movie_model.dart';

class SearchController extends GetxController {
  final List<MovieModel> movieList = [
    MovieModel(
      'The Dark II',
      'Horror',
      'assets/images/image8.png',
      4,
    ),
    MovieModel(
      'The Dark Knight',
      'Heroes',
      'assets/images/image9.png',
      5,
    ),
    MovieModel(
      'The Dark Tower',
      'Action',
      'assets/images/image10.png',
      4,
    ),
  ];
  Rx<List<MovieModel>> moview = Rx<List<MovieModel>>([]);

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    moview.value = movieList;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  void filterMovie(String movieName) {
    List<MovieModel> results = [];
    if (movieName.isEmpty) {
      results = movieList;
    } else {
      results = movieList
          .where((element) => element.title
              .toString()
              .toLowerCase()
              .contains(movieName.toLowerCase()))
          .toList();
    }
    moview.value = results;
  }
}
