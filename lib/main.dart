import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          // Seção de Animação
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.purple[800], // Fundo colorido para destacar a seção da animação
              child: Center(
                child: RiveAnimation.asset(
                  'assets/animations/sketis.riv',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),

          // Seção de Login
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Logo e Título
                  Text(
                    'RIVE',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Express login via Google and Facebook',
                    style: TextStyle(color: Colors.grey[600]),
                  ),

                  // Botões de Login Social
                  SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialButton(
                        icon: Icons.g_mobiledata, // Substitua por ícone adequado
                        label: 'Google',
                        onPressed: () {},
                      ),
                      SizedBox(width: 12),
                      SocialButton(
                        icon: Icons.facebook, // Substitua por ícone adequado
                        label: 'Facebook',
                        onPressed: () {},
                      ),
                    ],
                  ),

                  // Formulário de Login com tamanho fixo
                  SizedBox(height: 32),
                  Container(
                    width: 300, // Defina a largura desejada para o formulário
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Email or Username',
                            border: InputBorder.none,
                          ),
                        ),
                        Divider(height: 12, color: Colors.grey[300]),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Password',
                            border: InputBorder.none,
                          ),
                          obscureText: true,
                        ),
                      ],
                    ),
                  ),

                  // Botão de Login
                  SizedBox(
                    height: 1,
                  ),
                  SizedBox(
                    width: 300, // Defina a largura desejada para o botão
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 12), // Ajuste a altura do botão
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Log in',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),

                  // Links adicionais
                  SizedBox(height: 16),
                  TextButton(
                    onPressed: () {},
                    child: Text('Log in with SSO'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Forgot password?'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const SocialButton({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, size: 20),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: Colors.grey[200],
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
