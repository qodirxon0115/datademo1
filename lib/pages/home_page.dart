import 'package:datademo2/model/user_model.dart';
import 'package:datademo2/pages/signup_page.dart';
import 'package:datademo2/service/get_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = "home_page";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

   Future<void> _doSignIn() async{
    String email = emailController.text.toString().trim();
    String address = passwordController.text.toString().trim();

    var user = User(email: email, address: address);
    if(email != null || address != null){
      GetService.store(user);

      final user1 = GetService.load();
      print(user1.email);
      print(user1.address);

    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // padding: const EdgeInsets.all(20),
        width: double.infinity,
        color: Colors.teal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(40),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/image_11.png"),
                    fit: BoxFit.cover,
                  )
                ),
              ),
            ),
            // const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome", style: TextStyle(color: Colors.grey[500]),),
                  const SizedBox(height: 5,),
                  const Text("Sign In", style: TextStyle(color: Colors.white, fontSize: 30),)
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
                           child: const Text("Password",
                             style: TextStyle(
                                 color: Colors.black,
                                 fontWeight: FontWeight.bold, fontSize: 18),),
                         ),
                         const SizedBox(height: 5,),
                         Container(
                           padding: const EdgeInsets.only(left: 15),
                           height: 45,
                           child: TextField(
                             controller: passwordController,
                             decoration: InputDecoration(
                               border: InputBorder.none,
                               hintText: "Enter Password",
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
                         Center(
                           child: Text("Forget  Password ?",
                             style: TextStyle(color: Colors.grey[200],
                                 fontSize: 18, fontWeight: FontWeight.bold),),
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
                             onPressed: _doSignIn,
                             child: const Text("Sign In",
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
                                    Navigator.pushReplacementNamed(context, SignUpPage.id);
                                 },
                                 child: const Text("Sign up", style: TextStyle(color: Colors.blue, fontSize: 16,),),
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
