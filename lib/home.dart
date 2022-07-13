import 'package:flutter/material.dart';

import 'appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          HomeAppBar(),
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mayfield Bakery & Cafe",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  "\$\$ - Chinese,american,Deshi food",
                  style: TextStyle(fontSize: 16, color: Colors.black38),
                ),
                Row(
                  children: [
                    Text(
                      "4.3 ",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.green,
                      size: 16,
                    ),
                    Text(
                      " 200+Ratings",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    )
                  ],
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.monetization_on_rounded,
                        color: Colors.green,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Free",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                          Text(
                            "Delivery",
                            style: TextStyle(fontSize: 16, color: Colors.black38),
                          )
                        ],
                      ),
                      Icon(
                        Icons.access_time_filled_rounded,
                        color: Colors.green,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "25",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                          Text(
                            "Minutes",
                            style: TextStyle(fontSize: 16, color: Colors.black38),
                          )
                        ],
                      ),
                      Container(
                        width: 100,
                        height: 36,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.green),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "TAKE AWAY",
                          style: TextStyle(color: Colors.green),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
