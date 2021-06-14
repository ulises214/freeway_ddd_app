import 'dart:math';

import '../../../utils/array/random_element.dart';
import '../../model/travel/models.dart';

// ignore: todo
// ! TODO remove this
const _samppleImages = [
  'https://www.excelenciasdelmotor.com/sites/default/files/u7/cami%C3%B3n-google-aut%C3%B3nomo-1074x483.jpg',
  'https://i.pinimg.com/564x/68/63/69/6863693facbc5d43beacce8455d03c37.jpg',
  'https://i.blogs.es/9e1592/otto-google-camion-autonomo/450_1000.jpg',
  'https://s1.eestatic.com/2018/03/09/actualidad/actualidad_290735220_130139399_1024x576.jpg'
];

/// Controller for home page
class HomeVidewModel {
  /// Get the list of [RecomendedTravel] to consume in the view
  Future<List<RecomendedTravel>> getRecomendedTravels() async {
    final random = Random();
    return _samppleImages
        .map(
          (e) => RecomendedTravel(
            title: 'Ejemplo de titulo',
            uriProfileImage: e,
            isForPremium: true,
            origin: getRandomElement(['Manzanillo', 'Colima']),
            rating: random.nextInt(6),
          ),
        )
        .toList();
  }
}
