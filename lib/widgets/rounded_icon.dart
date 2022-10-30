import 'package:flutter/material.dart';

import '../common/theme_helper.dart';

class RoundedIcon extends StatelessWidget {
  const RoundedIcon({Key? key, required this.imageUrl, required this.name})
      : super(key: key);
  final String imageUrl;
  final String name;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                  color: Colors.black26, offset: Offset(0, 2), blurRadius: 0.6),
            ],
            image: DecorationImage(
              image: AssetImage(imageUrl),
            )),
      ),
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return ThemeHelper()
                .alartDialog(name, "You tap on $name social icon.", context);
          },
        );
      },
    );
  }
}
