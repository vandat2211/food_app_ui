import 'package:flutter/material.dart';
class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return SliverAppBar(
      expandedHeight: 200,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          "assets/images/background.png",
          fit: BoxFit.cover,
        ),
      ),
      leading: const Padding(
          padding: EdgeInsets.only(left: 16),
          child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ))),
      actions: const [
        CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.share,
              color: Colors.black,
            )),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.search,
                color: Colors.black,
              )),
        ),
      ],
    );
  }
}
