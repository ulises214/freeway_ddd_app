/// Class with all the asset's routes
abstract class AssetsPaths {
  /// Logos for the application (svg/image)
  static const logos = _LogosPaths();

  /// Images used in the application (image)
  static final images = _ImagesPaths();

  /// Icons used in the application (svg)
  static final icons = _IconsPaths();
}

class _ImagesPaths {
  final splashScreenBackground = 'assets/images/splash-screen-background.jpg';
  final defaultProfile = 'assets/images/defaultProfile.png';
}

class _LogosPaths {
  const _LogosPaths();
  final verticalSvg = 'assets/logos/vertical.svg';
  final horizontalSvg = 'assets/logos/horizontal.svg';
  final launcherPng = 'assets/logos/launcher.png';
}

class _IconsPaths {
  static String _buildPathName(String name, [String ext = 'svg']) => 'assets/icons/$name.$ext';

  final searchService = _buildPathName('signInSearch');
  final offerService = _buildPathName('signInOffer');

  final user = _buildPathName('user');
  final userInput = _buildPathName('userInput');
  final password = _buildPathName('password');

  final eye = _buildPathName('eye');
  final mail = _buildPathName('mail');

  final cancel = _buildPathName('cancel');
  final uploadFile = _buildPathName('upload');

  final bell = _buildPathName('bell');
  final search = _buildPathName('search');
  final premium = _buildPathName('premium');
  final origin = _buildPathName('origin');

  final history = _buildPathName('history');
  final bottomAppbarTruck = _buildPathName('bottomAppbarTruck');
  final bottomAppbarHelp = _buildPathName('bottomAppbarHelp');
  final bottomAppbarHome = _buildPathName('bottomAppbarHome');

  final success = _buildPathName('success');
}
