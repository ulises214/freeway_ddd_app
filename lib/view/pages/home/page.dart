import 'package:flutter/material.dart';
import 'package:freeway_app/view/widgets/widgets.dart';

import '../../assets_paths.dart';
import '../../theme.dart';
import '../home_tab/tab.dart';
import 'widgets/filter_drawer.dart';
import 'widgets/home_filters.dart';
import 'widgets/notification_icon.dart';
import 'widgets/search_toggler.dart';

final List<String> _bottomAppBarIcons = [
  AssetsPaths.icons.bottomAppbarHome,
  AssetsPaths.icons.bottomAppbarTruck,
  AssetsPaths.icons.bottomAppbarHelp,
  AssetsPaths.icons.user,
];
final List<String> _bottomAppBarLabels = [
  'Inicio',
  'Repartidores',
  'Ayuda',
  'Perfil'
];

/// The main that display  alist of tabs
class HomePage extends StatefulWidget {
  /// Create the main page
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  bool isSearching = false;
  int _currentTab = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: _buildAppBar(),
      bottomNavigationBar: _buildBottomNavigation(),
      endDrawer: const FilterDrawer(),
      body: PageView.builder(
        itemCount: 4,
        itemBuilder: _buildPage,
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
      ),
    );
  }

  // ? Navigation
  Widget _buildBottomNavigation() {
    return BottomNavigationBar(
      currentIndex: _currentTab,
      onTap: _changeCurrentTab,
      selectedItemColor: FreeWayTheme.extraBlue1,
      items: _buildBottomItems(),
    );
  }

  List<BottomNavigationBarItem> _buildBottomItems() {
    return List.generate(
      4,
      (i) => BottomNavigationBarItem(
        icon: SvgIcon(
          svgPath: _bottomAppBarIcons[i],
          color: FreeWayTheme.gray3,
          size: 26,
        ),
        label: _bottomAppBarLabels[i],
        activeIcon: SvgIcon(
          svgPath: _bottomAppBarIcons[i],
          color: FreeWayTheme.extraBlue1,
          size: 26,
        ),
      ),
    );
  }

  Widget _buildPage(BuildContext context, int index) {
    switch (index) {
      case 0:
        return KeepAlivePage(
            child: HomeTab(
          openDrawer: _scaffoldKey.currentState!.openEndDrawer,
        ));
      default:
        return Container();
    }
  }

  void _changeCurrentTab(int index) {
    setState(() => _currentTab = index);
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 200),
      curve: Curves.bounceInOut,
    );
  }

  // ? AppBar
  void _toggleSearching() => setState(() {
        isSearching = !isSearching;
      });
  GradientAppBar _buildAppBar() {
    return GradientAppBar(
      bottom: const HomeFilters(),
      title: isSearching
          ? SearchField(hintText: 'Buscar servicio', onSearch: (text) {})
          : const StyledText('FreeWay',
              type: StyledTextType.h6, textColor: Colors.white),
      actions: [
        SearchToggler(isSearching: isSearching, onPressed: _toggleSearching),
        const Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: NotificationIcon(),
        )
      ],
    );
  }
}
