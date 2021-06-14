import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models_view/home/home_model_view.dart';
import 'widgets/all_services_list.dart';
import 'widgets/hightlighted_travel.dart';
import 'widgets/open_filter_drawer_button.dart';
import 'widgets/recommended_travels.dart';

/// First tag in the HomePage
class HomeTab extends StatefulWidget {
  /// Create the first tab
  const HomeTab({Key? key, required this.openDrawer}) : super(key: key);

  /// Function to call when the filter icon is pressed
  final VoidCallback openDrawer;
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  void initState() {
    super.initState();
    Get.put(HomeVidewModel());
  }

  @override
  void dispose() {
    Get.delete<HomeVidewModel>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Column(
              children: const [
                RecommendedTravels(),
                SizedBox(height: 20),
                HighlightedTravel(),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: SizedBox(
                      width: double.infinity, child: AllServicesList()),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 8.0,
          right: 0.0,
          child: OpenFilterDrawerButton(onTap: widget.openDrawer),
        ),
      ],
    );
  }
}
