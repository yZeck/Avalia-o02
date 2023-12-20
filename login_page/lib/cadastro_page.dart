import 'package:flutter/material.dart';

class AppTheme {
  static final gradientBackground = BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Color.fromARGB(255, 56, 169, 150),
        Color.fromARGB(255, 166, 201, 187),
      ],
    ),
  );

  static final textFieldDecoration = BoxDecoration(
    color: Colors.black12,
    borderRadius: BorderRadius.all(
      Radius.circular(7),
    ),
  );

  static final textStyle = TextStyle(
    color: Colors.white,
    fontSize: 14,
  );

  static final buttonStyle = TextStyle(
    color: Colors.black45,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );
}

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _HomeState();
}

class _HomeState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Cadastre-se na EnglishTech'),
          actions: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                // Navegar de volta para a página de login
                Navigator.pop(context);
              },
            ),
          ],
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(27),
          decoration: AppTheme.gradientBackground,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(2),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Nome Completo',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(2),
                child: TextField(
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Data de Nascimento',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(2),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'E-mail',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(2),
                child: TextField(
                  keyboardType: TextInputType.streetAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Endereço',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(2),
                child: TextField(
                  keyboardType: TextInputType.none,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Senha',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(2),
                child: TextField(
                  keyboardType: TextInputType.none,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Cadastro de Senha',
                  ),
                ),
              ),
              TextButton(
                child: const Text("Salvar"),
                onPressed: () {
                  print("valor digitado:");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
