

import 'package:datademo2/pages/home_page.dart';
import 'package:flutter/material.dart';

import '../model/user_model.dart';
import '../service/get_service.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);
  static const String id = "signup_page";

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  final emailController = TextEditingController();
  final numberController = TextEditingController();
  final addressController = TextEditingController();


  Future<void> _doSignUp() async{
    String email = emailController.text.toString().trim();
    String phone = numberController.text.toString().trim();
    String address = addressController.text.toString().trim();

    var user = User.from(email: email, address: address, phone: phone);
    if(email != null && address != null && phone != null){
      GetService.store(user);

      final  user1 = GetService.load();

      print(user1.email);
      print(user1.address);
      print(user1.phone);

    }

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.teal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome", style: TextStyle(color: Colors.teal[200]),),
                  const SizedBox(height: 5,),
                  const Text("Sign Up", style: TextStyle(color: Colors.white, fontSize: 30),)
                ],
              ),
            ),
            const SizedBox(height: 30,),

            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)
                    )
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 35,right: 35),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 70,),
                        Container(
                          padding: const EdgeInsets.only(left: 15),
                          child: const Text("Email",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold, fontSize: 18),),
                        ),
                        const SizedBox(height: 5,),
                        Container(
                          padding: const EdgeInsets.only(left: 15),
                          height: 45,
                          child: TextField(
                            controller: emailController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email",
                              hintStyle: TextStyle(color: Colors.grey[200],fontSize: 15),
                              // border: InputBorder.none,
                            ),
                          ),
                        ),
                        Container(
                          height: 1,
                          color: Colors.grey[200],
                        ),
                        const SizedBox(height: 30,),
                        Container(
                          padding: const EdgeInsets.only(left: 15),
                          child: const Text("Number",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold, fontSize: 18),),
                        ),
                        const SizedBox(height: 5,),
                        Container(
                          padding: const EdgeInsets.only(left: 15),
                          height: 45,
                          child: TextField(
                            controller: numberController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter Number",
                              hintStyle: TextStyle(color: Colors.grey[200],fontSize: 15),
                              // border: InputBorder.none,
                            ),
                          ),
                        ),
                        Container(
                          height: 1,
                          color: Colors.grey[200],
                        ),

                        const SizedBox(height: 30,),
                        Container(
                          padding: const EdgeInsets.only(left: 15),
                          child: const Text("Address",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold, fontSize: 18),),
                        ),
                        const SizedBox(height: 5,),
                        Container(
                          padding: const EdgeInsets.only(left: 15),
                          height: 45,
                          child: TextField(
                            controller: addressController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter Address",
                              hintStyle: TextStyle(color: Colors.grey[200],fontSize: 15),
                              // border: InputBorder.none,
                            ),
                          ),
                        ),
                        Container(
                          height: 1,
                          color: Colors.grey[200],
                        ),

                        const SizedBox(height: 40,),

                        Container(
                          height: 45,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.teal,
                          ),
                          child: TextButton(
                            onPressed: _doSignUp,
                            child: const Text("Sign up",
                              style: TextStyle(color: Colors.white,
                                fontSize: 20,),),
                          ),
                        ),
                        const SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 1,
                              width: 70,
                              color: Colors.grey[200],
                            ),
                            const SizedBox(width: 8,),
                            Text("OR",
                              style: TextStyle(fontSize: 20,
                                  color: Colors.grey[200]),),
                            const SizedBox(width: 8,),
                            Container(
                              height: 1,
                              width: 70,
                              color: Colors.grey[200],
                            ),
                          ],
                        ),
                        const SizedBox(height: 45,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            const Text("f",
                              style: TextStyle(fontSize: 30,
                                  fontWeight: FontWeight.bold,color: Colors.blue),),
                            const SizedBox(width: 45,),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/twitter.png"),
                                    fit: BoxFit.cover,
                                  )
                              ),
                            ),
                            const SizedBox(width: 45,),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/insta.png"),
                                    fit: BoxFit.cover,
                                  )
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 50,),
                        Container(
                          padding:const EdgeInsets.only(bottom: 50),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Don't have an account?", style: TextStyle(color: Colors.grey, fontSize: 16),),

                              const SizedBox(width: 5,),

                              GestureDetector(
                                onTap: (){
                                  Navigator.pushReplacementNamed(context, HomePage.id);
                                },
                                child: const Text("Sign In", style: TextStyle(color: Colors.blue, fontSize: 16,),),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
