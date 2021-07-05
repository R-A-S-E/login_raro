import 'package:flutter/material.dart';
import 'package:login_raro/login_controller.dart';
import 'package:login_raro/shared/widgets/input_text_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Form(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InputTextWidget(
                label: 'Email',
                validator: (value) => value!.isEmpty ? 'Empty' : null,
                onChanged: (value) => controller.OnChanged(email: value)),
            InputTextWidget(
                obscureText: true,
                label: 'Password',
                validator: (value) => value!.isEmpty ? "Empty" : null,
                onChanged: (value) => controller.OnChanged(password: value)),
            Row(
              children: [
                Text("Forgot password ?"),
                TextButton(
                    onPressed: () => Navigator.pushNamed(context, "/Recuperar"),
                    child: Text("Reset"))
              ],
            ),
            Row(
              children: [
                Text("Create account ?"),
                TextButton(
                    onPressed: () => Navigator.pushNamed(context, "/Criar"),
                    child: Text("Sign up"))
              ],
            ),
            SizedBox(height: 50),
            Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      if (controller.login()) {
                        Navigator.pushReplacementNamed(context, "/Home");
                      }
                    },
                    child: Text("Sign in"))),
          ],
        )),
      ),
    );
  }
}
