import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  GlobalKey<FormState> key = new GlobalKey<FormState>();
  TextEditingController namaController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_left_sharp,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        title: Text("Sign Up"),
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        child: Form(
          key: key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "wajib";
                  }
                  return null;
                },
                controller: namaController,
                decoration: InputDecoration(label: Text("nama")),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "wajib";
                  }
                  return null;
                },
                controller: emailController,
                decoration: InputDecoration(label: Text("email")),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "wajib";
                  }
                  return null;
                },
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(label: Text("password")),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                  onTap: () {
                    print(namaController.text);
                    print(emailController.text);
                    print(passwordController.text);
                  },
                  child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
