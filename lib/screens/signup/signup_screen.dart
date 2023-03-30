import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  SignupScreenState createState() => SignupScreenState();
}

class SignupScreenState extends State<SignupScreen> {

  @override
  Widget build(BuildContext context) {
      return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: <Widget> [
                Image.asset("images/logo.jpeg", height: 150),
                Text('Dados pessoais', style: defaultTextStyle),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                    child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Nome',
                        ),
                      ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                    child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Sobrenome',
                        ),
                      ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                    child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                        ),
                      ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                    child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Data de nascimento',
                        ),
                      ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                    child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Sexo',
                        ),
                      ),
                ),

                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Text('Endereço', style: defaultTextStyle),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                    child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Rua',
                        ),
                      ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                    child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Número da casa',
                        ),
                      ),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                    child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Bairro',
                        ),
                      )
                ),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                    child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Estado',
                        ),
                      )
                ),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                    child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Cidade',
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
                SizedBox(height: 50),
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
                    child: const Text("Cadastrar", style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      color: Colors.white
                    )),
                  ),
                ),
                SizedBox(height: 50),
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
    child: Text('Já possui cadastro?', style: defaultTextStyle),
);

