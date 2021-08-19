import 'package:flutter/material.dart';
import 'package:freeway_app/view/widgets/widgets.dart';
import 'package:get/get.dart';

import '../../../../model/travel/models.dart';
import '../../../../models_view/home/home_model_view.dart';
import 'recommended_travel_card.dart';

/// Widget that display a list of recomended travels
class RecommendedTravels extends StatelessWidget {
  /// Create a list to display recommended travels
  const RecommendedTravels({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: FutureBuilder(
          future: Get.find<HomeVidewModel>().getRecomendedTravels(),
          builder: (context, AsyncSnapshot<List<RecomendedTravel>> snapshot) {
            if (snapshot.hasError) {
              return const StyledText('Error', type: StyledTextType.body1);
            }
            if (snapshot.data == null) {
              return const StyledText('Error', type: StyledTextType.body1);
            }
            return Row(
              children: snapshot.data!.map((e) => RecommendedTravelCard(travel: e)).toList(),
            );
          },
        ),
      ),
    );
  }
}
/*
 SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: List.generate(
              _samppleImages.length,
              (index) => RecommendedTravelCard(
                urlImage: _samppleImages[index],
              ),
            ),
          ),
        ),
      ),
 */
