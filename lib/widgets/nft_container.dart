import 'package:flutter/material.dart';
import '../utils/constant.dart';

class NftContainer extends StatelessWidget {
  const NftContainer({Key? key, this.imageUrl}) : super(key: key);

  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            blurRadius: 25,
            color: Colors.black87.withAlpha(124),
            spreadRadius: 0.03,
            offset: Offset(-9, 3),
          ),
        ],
      ),
      height: 250,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 12,
        ),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                child: Image.network(imageUrl!),
                // decoration: BoxDecoration(
                //   image: DecorationImage(
                //     image: NetworkImage(imageUrl!),
                //   ),
                // ),
              ),
            ),
            Expanded(
                child: Container(
              color: kLightColor,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Overload",
                              style: kNFTNameTextStyle,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 12,
                                  backgroundColor: Colors.amber,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Bitrus Mandil",
                                  style: kNFTNameTextStyle,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        "1.22 FIL",
                        style: kPriceTextStyle,
                      ),
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
