import 'package:fashion_hub/models/dress.dart';
import 'package:flutter/material.dart';

class DressTile extends StatelessWidget {
  Dress dress;
  void Function()? onTap;
  DressTile({super.key, required this.dress, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(left: 25),
        width: 290,
        //height: 500,
        decoration: BoxDecoration(
            color: Colors.white54, borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(2),
              child:
                  //pic
                  Image.asset(
                dress.imagepath,
                fit: BoxFit.cover,
                height: 350,
                width: 290,
              ),
            ),
            //description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Text(
                dress.description,
                style: TextStyle(color: Colors.black, fontSize: 10),
              ),
            ),
            //price
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        dress.name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Text(
                          dress.price,
                          style: TextStyle(color: Colors.grey[900]),
                        ),
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(12)),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        )),
                  )
                ],
              ),
            )

            //button cart
          ],
        ),
      ),
    );
  }
}
