import 'package:flutter/material.dart';

class MenuItem extends StatefulWidget {
  const MenuItem(
      {Key? key, required this.leading, this.trailing, required this.title})
      : super(key: key);
  final Widget leading;
  final Widget? trailing;
  final Widget title;
  @override
  _MenuItemState createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  bool isSelected = false;
  Color hoverColor = const Color.fromRGBO(72, 72, 72, 1);
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isSelected = true;
        });
      },
      onExit: (event) {
        setState(() {
          isSelected = false;
        });
      },
      child: Container(
        color: !isSelected ? Colors.transparent : hoverColor,
        child: ListTile(
          selected: true,
          leading: widget.leading,
          title: widget.title,
          onTap: () {},
          trailing: widget.trailing,
        ),
      ),
    );
  }
}
