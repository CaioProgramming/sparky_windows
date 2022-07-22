import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SideMenuItem extends StatelessWidget {
  final String title;
  final String iconUrl;
  final Function onClickCallback;

  const SideMenuItem(
      {super.key,
      required this.title,
      required this.iconUrl,
      required this.onClickCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(iconUrl),
        backgroundColor: Colors.black26,
      ),
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .bodyText1
            ?.copyWith(fontWeight: FontWeight.w300),
        overflow: TextOverflow.ellipsis,
      ),
      dense: true,
    );
  }
}
