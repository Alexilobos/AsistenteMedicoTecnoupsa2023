import 'package:flutter/material.dart';
import 'home.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio de sesión'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    '../asset/icons/loginRobot.png',
                    width: 80,
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Iniciar Sesión',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 25),
                  const TextField(
                    //controller: usernameController,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Color.fromARGB(255, 219, 212, 212),
                      ),
                      labelText: 'Nombre de Usuario',
                      hintText: 'Ingresa tu Usuario',
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    controller: usernameController,
                    style: const TextStyle(color: Colors.black),
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Color.fromARGB(255, 219, 212, 212),
                      ),
                      labelText: 'Contraseña',
                      hintText: 'Ingresa tu contraseña',
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    child: const Text('Iniciar sesión'),
                    onPressed: () {
                      // Aquí puedes agregar la lógica para verificar el usuario y la contraseña
                      /*String username = usernameController.text;
                      String password = passwordController.text;
                      print('Usuario: $username');
                      print('Contraseña: $password');*/
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage()),
                      );
                    },
                  ),
                ],
              ),
            ),
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
