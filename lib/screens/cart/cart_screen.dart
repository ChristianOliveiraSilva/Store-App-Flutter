import 'package:cestile_app/screens/cart/components/cart_item.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          size: 22,
                        ),
                      ),
                    ),

                    Text("Carrinho", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    )),

                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(
                          Icons.more_horiz,
                          size: 22,
                        ),
                      ),
                    ),
                  ],
                )
              ),

              Container(
                padding: EdgeInsets.only(top: 15),
                child: Column(
                  children: [
                    CartItemSamples(),
                    SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Selcione todos"),
                          Checkbox(
                            value: true,
                            activeColor: Colors.redAccent,
                            onChanged: (value) {}
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Preço do delivery:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                              Text("R\$ 8.56", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.redAccent)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Total da compra:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                              Text("R\$ 405.56", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.redAccent)),
                            ],
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 50),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
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
                    
                    SizedBox(height: 50),
                  ],
                ),
              )
            ]
          )
        ),
      ),
    );
  }
}

