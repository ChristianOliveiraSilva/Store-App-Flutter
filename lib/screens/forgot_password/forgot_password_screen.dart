import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  ForgotPasswordScreenState createState() => ForgotPasswordScreenState();
}

class ForgotPasswordScreenState extends State<ForgotPasswordScreen> {

  @override
  Widget build(BuildContext context) {
      return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: <Widget> [
                SizedBox(height: 100),
                Image.asset("images/logo.jpeg", height: 250),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                    child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Email da conta',
                        ),
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 32, left: 22),
                  child: Align(alignment: Alignment.centerLeft, child: SignUpText),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 100),
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(30) 
                    ),
                    child: const Text("Trocar senha", style: TextStyle(
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
      );
  }
}

const defaultBigTextStyle = TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 24);
const defaultTextStyle = TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 16);

Widget forgotPasswordText = GestureDetector(
    onTap: () {
      
    },
    child: Text('Esqueci minha senha', style: defaultTextStyle),
);

Widget SignUpText = GestureDetector(
    onTap: () {
      
    },
    child: Text('Já possui cadastro?', style: defaultTextStyle),
);

