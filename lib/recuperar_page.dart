import 'package:flutter/material.dart';
import 'package:login_raro/shared/widgets/input_text_widget.dart';

class RecuperarPage extends StatelessWidget {
  const RecuperarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Form(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Reset password",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              InputTextWidget(
                  label: "Email adress",
                  validator: (value) => (value!.isEmpty) ? "Empty" : null,
                  onChanged: (value) {}),
              SizedBox(
                height: 40,
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child:
                      ElevatedButton(onPressed: () {}, child: Text("Send "))),
            ],
          )),
        ),
      ),
    );
  }
}
