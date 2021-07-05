import 'package:flutter/material.dart';
import 'package:login_raro/shared/model/contas.dart';
import 'package:login_raro/shared/widgets/input_text_widget.dart';

class CriarPage extends StatefulWidget {
  const CriarPage({Key? key}) : super(key: key);

  @override
  _CriarPageState createState() => _CriarPageState();
}

class _CriarPageState extends State<CriarPage> {
  List<Contas> conts = [];
  var name;
  var email;
  var password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Form(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Create account",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            InputTextWidget(
                label: 'Name',
                validator: (value) => (value!.isEmpty) ? "Empty" : null,
                onChanged: (value) => name = value),
            InputTextWidget(
                label: 'Email Adress',
                textInputType: TextInputType.emailAddress,
                validator: (value) => (value!.isEmpty) ? "Empty" : null,
                onChanged: (value) => email = value),
            InputTextWidget(
                label: 'Password',
                obscureText: true,
                validator: (value) => (value!.isEmpty) ? "Empty" : null,
                onChanged: (value) => password = value),
            SizedBox(
              height: 40,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      Contas contas = Contas();
                      contas.name = name;
                      contas.email = email;
                      contas.password = password;
                      addconts(contas);
                    },
                    child: Text("Sign up"))),
            Row(
              children: [
                Text("Already have an account ?"),
                TextButton(
                    onPressed: () =>
                        Navigator.pushReplacementNamed(context, "/Login"),
                    child: Text("Sign in"))
              ],
            ),
          ],
        )),
      ),
    );
  }

  void addconts(contas) {
    conts.add(contas);
    Navigator.pop(context);
  }
}
