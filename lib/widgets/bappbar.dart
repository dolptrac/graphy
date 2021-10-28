import 'package:flutter/material.dart';
import '../utils/constant.dart';
import '../screens/discover.dart';

class BAppBar extends StatefulWidget {
  const BAppBar({Key? key}) : super(key: key);

  @override
  _BAppBarState createState() => _BAppBarState();
}

class _BAppBarState extends State<BAppBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: 20,
                color: Colors.black87.withAlpha(84),
                spreadRadius: 0.3)
          ],
          color: Colors.amber,
        ),
        height: 45,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(
                Icons.home,
                color: kLightColor,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                color: kLightColor,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => Discover(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      shape: CircularNotchedRectangle(),
    );
  }
}
