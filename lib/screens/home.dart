import 'package:flutter/material.dart';
import 'package:graphy/services/network_handler.dart';
import 'package:graphy/utils/constant.dart';
import 'package:graphy/widgets/bappbar.dart';
import 'package:graphy/widgets/heading.dart';
import 'package:graphy/widgets/nft_container.dart';

var apiKEY = "YOUR APIKEY";
var url = "https://api.nft.storage/";
var imageSupport = ".ipfs.dweb.link";
var testCid = 'bafybeihd4dnd5rfjm35kl6acqmnh75kp2nnblzpkqdr7z2yobig6pomnzy';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkColor,
      appBar: buildAppBar(),
      bottomNavigationBar: buildBottomBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          NetworkHandler _handler = NetworkHandler(apiKey: apiKEY);
          try {
            _handler.getRequest("$url$cid");
          } catch (e) {
            print("THIS IS THE ERROR RBOOO.........$e");
          }
        },
        child: Icon(
          Icons.add,
          color: Colors.amber,
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      body: Padding(
        padding: kPadding,
        child: ListView(
          children: [
            buildHeading("Trending"),
            buildNFTContainer(),
            buildNFTContainer()
          ],
        ),
      ),
    );
  }

  buildBottomBar() {
    return BAppBar();
  }

  buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
      ],
      title: Container(
        width: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.amber,
            ),
            Text("Dolp")
          ],
        ),
      ),
    );
  }

  buildHeading(String title) {
    return Heading(
      title: title,
    );
  }

  buildNFTContainer() {
    return NftContainer(
      imageUrl: "https://$cid$imageSupport",
    );
  }
}
