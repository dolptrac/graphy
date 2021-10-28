import "package:flutter/material.dart";
import 'package:graphy/utils/constant.dart';
import 'package:graphy/widgets/bappbar.dart';
import 'package:graphy/widgets/heading.dart';
import 'package:graphy/widgets/nft_container.dart';

class Discover extends StatefulWidget {
  const Discover({Key? key}) : super(key: key);

  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      bottomNavigationBar: BAppBar(),
      backgroundColor: kDarkColor,
      body: ListView(
        children: [
          NftContainer(),
          NftContainer(),
          NftContainer(),
        ],
      ),
    );
  }

  appBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Heading(title: "Discover"),
      bottom: PreferredSize(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            cursorColor: Colors.amber,
            cursorHeight: 25,
            decoration: InputDecoration(
              hintText: "Search",
              hintStyle: TextStyle(color: Colors.amber),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              suffixIcon: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
            ),
          ),
        ),
        preferredSize: Size.fromHeight(65),
      ),
    );
  }
}
