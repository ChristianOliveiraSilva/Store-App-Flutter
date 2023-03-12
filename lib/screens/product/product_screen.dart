import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  String img;
  ProductScreen(this.img);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topCenter,
              height: MediaQuery.of(context).size.height / 1.7,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 224, 224, 224),
                image: DecorationImage(
                  image: AssetImage("images/${img.replaceAll(" ", "")}.png"),
                  fit: BoxFit.cover,
                )
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
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
                        )
                      ),
                    ),
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
                          Icons.favorite,
                          color: Colors.red,
                          size: 22,
                        )
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 10),

            Padding(
              padding: EdgeInsets.only(top: 8, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(img, style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        )),
                        Text("R\$ 300.00", style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Colors.red.withOpacity(0.5),
                        )),
                      ],
                    ),
                  ),

                  SizedBox(height: 8),

                  Text("Para mulheres", style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  )),

                  SizedBox(height: 15),
                  SizedBox(height: 20),

                  Text("Uma Descrição do produto aqui", style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  )),

                  SizedBox(height: 20),

                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(18),
                            decoration: BoxDecoration(
                              color: Color(0xFFF7F8FA),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Icon(CupertinoIcons.cart_fill, size: 22, color: Color(0xFFFD725A)),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 18, horizontal: 70),
                            decoration: BoxDecoration(
                              color: Color(0xFFFD725A),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Text("Compre Agora", style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1,
                              color: Colors.white.withOpacity(0.8)
                            ))
                          ),
                        ),
                      ]
                  )
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}