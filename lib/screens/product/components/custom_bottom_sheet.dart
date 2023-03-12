import 'package:cestile_app/screens/cart/cart_screen.dart';
import 'package:cestile_app/screens/product/components/custom_bottom_sheet_ball.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBottomSheet extends StatelessWidget {
  List sizes = [
    'P', 'M', 'G', 'Thais Carla'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 50),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10),
          Container(
            height: 4,
            width: 50,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 223, 221, 221),
              borderRadius: BorderRadius.circular(10)
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Text("Tamanho:", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
              SizedBox(width: 30),
              for(int i = 0; i < sizes.length; i++) 
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color(0xFFF7F8FA),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Text(sizes[i]),
                )
            ],
          ),

          SizedBox(height: 10),
          Row(
            children: [
              Text("Color:", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
              SizedBox(width: 30),
              CustomBottomSheetBall(0xFF031C3C),
              CustomBottomSheetBall(0xFF3BA48D),
              CustomBottomSheetBall(0xFFFF5252),
            ],
          ),

          SizedBox(height: 10),
          Row(
            children: [
              Text("Total:", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
              SizedBox(width: 30),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 187, 187, 187),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(CupertinoIcons.minus, size: 18, color: Colors.redAccent),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text("01", style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w400,
                ))
              ),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 187, 187, 187),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(CupertinoIcons.plus, size: 18, color: Colors.redAccent),
              )
            ],
          ),

          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total da compra:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
              Text("R\$ 405.56", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.redAccent)),
            ],
          ),

          SizedBox(height: 30),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => CartScreen()
              ));
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 100),
              decoration: BoxDecoration(
                color: Color(0xFFFD725A),
                borderRadius: BorderRadius.circular(30) 
              ),
              child: Text("Checkout", style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
                color: Colors.white
              )),
            ),
          ),
        ],
      ),
    );
  }
}