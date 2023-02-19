import 'package:flutter/material.dart';

class DrawerCustom extends StatelessWidget {
  const DrawerCustom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      semanticLabel: "drawer open",
      width: MediaQuery.of(context).size.width * 3 / 4,
      child: const Center(child: Text("Iu bé <3")),
    );
  }
}
