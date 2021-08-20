// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '../assets_paths.dart';
import '../theme.dart';
import 'svg_icon.dart';

/// Styled search input displayed in appbar
class SearchField extends StatelessWidget {
  /// Creates an Search input with app styles
  ///
  /// If [onSearch] is provided its called when the left side icon is pressed
  SearchField({
    Key? key,
    required this.hintText,
    this.onSearch,
    this.color = FreeWayTheme.black,
    this.hintColor,
    this.backgroundColor = Colors.white,
  }) : super(key: key);

  /// Text displayed as placeholder before writting
  final String hintText;

  /// The function to call when te left side icon is pressed to make a search
  final void Function(String text)? onSearch;

  /// The color that the text in this input will take
  final Color color;

  /// The color that [hintText] will take
  final Color? hintColor;

  /// The background color for this input
  final Color backgroundColor;
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
      child: TextField(
        style: Theme.of(context).textTheme.bodyText1!.copyWith(color: color),
        controller: _controller,
        autofocus: true,
        cursorColor: color,
        decoration: InputDecoration(
          fillColor: Colors.transparent,
          filled: true,
          isCollapsed: true,
          hintStyle: hintColor != null
              ? Theme.of(context).textTheme.bodyText1!.copyWith(color: hintColor)
              : null,
          hintText: hintText,
          border: InputBorder.none,
          icon: IconButton(
            onPressed: () => onSearch?.call(_controller.text),
            icon: SvgIcon(
              svgPath: AssetsPaths.icons.search,
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
