import 'package:flutter/material.dart';
import 'package:loginappui/pages/home_page.dart';

import '../Servis_pages/prefs_service.dart';
import '../models/user_models.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({Key? key}) : super(key: key);

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const HomePage()
              )
            );
          },
            icon: const Icon(Icons.arrow_back_sharp, color: Colors.black,)
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(height: 50),
              const Text("Let's Get Started!", style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold),),
              const SizedBox(height: 5,),
              const Text("Create an account to Q Allure get alf features", style: TextStyle(color: Colors.grey, ),),
              const SizedBox(height: 40,),
              Container(
                color: Colors.grey.shade50,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 20,left: 20),
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90),
                          color: Colors.white
                      ),
                      child: TextField(
                        controller: nameController,
                        style: const TextStyle(color: Colors.blue, fontSize: 18,),
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.person),
                            hintText: "Name",
                            hintStyle: const TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(width: 3, color: Colors.white),
                                borderRadius: BorderRadius.circular(90)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(width: 3, color: Colors.blue,
                                ),
                                borderRadius: BorderRadius.circular(90)
                            ),
                            border: InputBorder.none
                        ),
                        cursorRadius: const Radius.circular(4),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      margin: const EdgeInsets.only(right: 20,left: 20),
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90),
                          color: Colors.white
                      ),
                      child: TextField(
                        controller: emailController,
                        style: const TextStyle(color: Colors.blue, fontSize: 18,),
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.mail_outline_outlined),
                            hintText: "Email",
                            hintStyle: const TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(width: 3, color: Colors.white),
                                borderRadius: BorderRadius.circular(90)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(width: 3, color: Colors.blue,
                                ),
                                borderRadius: BorderRadius.circular(90)
                            ),
                            border: InputBorder.none
                        ),
                        cursorRadius: const Radius.circular(4),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      margin: const EdgeInsets.only(right: 20,left: 20),
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90),
                          color: Colors.white
                      ),
                      child: TextField(
                        controller: phoneController,
                        style: const TextStyle(color: Colors.blue, fontSize: 18,),
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.phone_android_rounded),
                            hintText: "Phone",
                            hintStyle: const TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(width: 3, color: Colors.white),
                                borderRadius: BorderRadius.circular(90)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(width: 3, color: Colors.blue,
                                ),
                                borderRadius: BorderRadius.circular(90)
                            ),
                            border: InputBorder.none
                        ),
                        cursorRadius: const Radius.circular(4),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      margin: const EdgeInsets.only(right: 20,left: 20),
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90),
                          color: Colors.white
                      ),
                      child: TextField(controller: passwordController,
                        style: const TextStyle(color: Colors.blue, fontSize: 18,),
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.lock),
                            hintText: "Password",
                            hintStyle: const TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(width: 3, color: Colors.white),
                                borderRadius: BorderRadius.circular(90)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(width: 3, color: Colors.blue,
                                ),
                                borderRadius: BorderRadius.circular(90)
                            ),
                            border: InputBorder.none
                        ),
                        cursorRadius: const Radius.circular(4),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      margin: const EdgeInsets.only(right: 20,left: 20),
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90),
                          color: Colors.white
                      ),
                      child: TextField(
                        controller: cpasswordController,
                        style: const TextStyle(color: Colors.blue, fontSize: 18,),
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.lock),
                            hintText: "Confirm Password",
                            hintStyle: const TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(width: 3, color: Colors.white),
                                borderRadius: BorderRadius.circular(90)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(width: 3, color: Colors.blue,
                                ),
                                borderRadius: BorderRadius.circular(90)
                            ),
                            border: InputBorder.none
                        ),
                        cursorRadius: const Radius.circular(4),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40,),
              Container(
                margin: const EdgeInsets.only(right: 100, left: 100),
                decoration: BoxDecoration(
                    boxShadow:  const [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          offset: Offset(5, 5)
                      )
                    ],
                    borderRadius: BorderRadius.circular(90),
                    color: Colors.blue.shade900
                ),
                height: 50,
                width: double.infinity,
                child: TextButton(onPressed: userService,
                  child: const Text("CREATE", style: TextStyle(color: Colors.white),),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?"),
                  TextButton(onPressed: (){
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (context) => const HomePage()
                        )
                    );
                  },
                    child: const Text("Login hare"),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }


  void userService(){
    User user = User(
      "Name: $nameController",
      "Email: $emailController",
      "Phone: $phoneController",
      "Password: $passwordController",

      "Confirm Password: $cpasswordController",
    );
    PrefsService.storeUser(user);
    PrefsService.loadUser().then((value) => {
      // ignore: avoid_print
      print(value?.toJson()),
    });
  }
  void removeStirng(){
    PrefsService.removeUser().then((value) => {
      // ignore: avoid_print
      print(value),
    });
    PrefsService.loadName().then((value) => {
      // ignore: avoid_print
      print("String $value"),
    });
  }

}
