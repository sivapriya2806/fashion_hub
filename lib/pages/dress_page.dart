import 'package:fashion_hub/models/dress.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/dress_tile.dart';
import '../models/cart.dart';

class DressPage extends StatefulWidget {
  const DressPage({super.key});

  @override
  State<DressPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<DressPage> {
  void addDressToCart(Dress dress) {
    Provider.of<Cart>(context, listen: false).addItemToCart(dress);

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Succesfully added'),
              content: Text('check your cart'),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      color: Colors.grey[350],
                      borderRadius: BorderRadius.circular(8)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'search',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),

                //message
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 10),
                  child: Text(
                    "Everyone files.. some fly longer than others",
                    style: TextStyle(color: Color.fromRGBO(166, 153, 153, 1)),
                  ),
                ),

                //pictures
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 25.0),
                      child: Text(
                        'Hot Picks 👗',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.white60),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 12, bottom: 10),
                      child: Text(
                        'See all',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white60,
                            fontSize: 15),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      Dress dress = value.getDressList()[index];
                      return DressTile(
                        dress: dress,
                        onTap: () => addDressToCart(dress),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
                  child: Divider(
                    color: Colors.white60,
                  ),
                )
              ],
            ));
  }
}
