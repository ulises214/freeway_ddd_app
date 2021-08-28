part of '_dialogs.dart';

class _Title extends StatelessWidget {
  const _Title({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final ModalIcon icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StyledText(
          title,
          textProperties: const TextProperties(
            type: TextType.h6,
            color: FreeWayColors.officialBlue1,
          ),
        ),
        Center(child: icon),
      ],
    );
  }
}
