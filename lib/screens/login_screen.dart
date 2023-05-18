import 'package:first_app/components/my_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);


  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      body: SafeArea(
        child: Column(
          children: [
            //icon
            const SizedBox(height: 50),
            const Center(child: Icon(Icons.lock, size: 50,)),
            const SizedBox(height: 50),
            //sub title
            const Text("Welcome back!"),
            const SizedBox(height:30),
            //2 text field
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: MyTextField(controller: usernameController, hintText: "Username", isObscureText: false,)
            ) ,
            SizedBox(height: 4,),
             Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: MyTextField(controller: passwordController, isObscureText: true, hintText: "passwork")
            ),
            const SizedBox(height: 12),
            ElevatedButton(onPressed: (){
              debugPrint(usernameController.text);
              debugPrint(passwordController.text);
              
              showDialog(context: context, builder: (context) => AlertDialog(
                title: Text("Your input"),
                content: Text("username: ${usernameController.text}\npassword: ${passwordController.text}"),

                actions: [
                  ElevatedButton(onPressed: ()=> Navigator.pop(context), child: const Text("Ok"))
                ],
              ));
            }, child: const Text("Login")),
          ],
        ),
      ),
    );
  }
}

