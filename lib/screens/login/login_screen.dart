import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  final cpfController = TextEditingController();

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
                        controller: cpfController,
                        decoration: InputDecoration(
                          labelText: 'CPF',
                        ),
                      ),
                ),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                    child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Senha',
                        ),
                      )
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SignUpText,
                      forgotPasswordText,
                    ],
                  ),
                ),
                SizedBox(height: 100),
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
                    child: const Text("Logar", style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      color: Colors.white
                    )),
                  ),
                ),
              ],
            )
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
    child: Text('Faça cadastro', style: defaultTextStyle),
);

