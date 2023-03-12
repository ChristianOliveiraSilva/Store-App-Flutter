import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItemSamples extends StatelessWidget {

  List imgList = [
    "Black Pant",
    "Black T-Shirt",
    "Ladies Bag",
    "Warm Jacket",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for(int i = 0; i < imgList.length; i++)
          Container(
            height: 110,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10), 
            ),
            child: Row(
              children: [
                Checkbox(
                  value: true,
                  activeColor: Color(0xFFFD725A),
                  onChanged: (value) {},
                ),

                Container(
                  height: 70,
                  width: 70,
                  margin: EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 224, 224, 224),
                    borderRadius: BorderRadius.circular(10), 
                  ),
                  child: Image.asset("images/${imgList[i].replaceAll(" ", "")}.png"),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(imgList[i], style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.8)
                      )),
                      Text("Best Selling", style: TextStyle(
                        fontSize: 12,
                        color: Colors.black.withOpacity(0.5)
                      )),
                      Text("R\$ 300.00", style: TextStyle(
                        fontSize: 16,
                        color: Colors.black.withOpacity(0.7)
                      )),
                    ],
                  ),
                ),

                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.delete, color: Colors.redAccent),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Color(0xFFF7F8FA),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(CupertinoIcons.minus, size: 15, color: Colors.redAccent),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Text("01", style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w400,
                            ))
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Color(0xFFF7F8FA),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(CupertinoIcons.plus, size: 15, color: Colors.redAccent),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
      ],
    );
  }
}

