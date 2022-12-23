import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginappui/Servis_pages/prefs_service.dart';
import 'package:loginappui/pages/create_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                const SizedBox(height: 50,),
                const SizedBox(
                  height: 190,
                  width: 190,
                  child: Image(image: AssetImage("assets/images/rasm.png")),
                ),
                const Text("Welcome back!", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                const SizedBox(height: 5,),
                const Text("Log in to your existant account of Allure", style: TextStyle(color: Colors.grey),),
                const SizedBox(height: 10,),
                Container(
                  margin: const EdgeInsets.all(20),
                  height: 70,
                  decoration: BoxDecoration(
                      boxShadow:  const [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5,
                            offset: Offset(5, 5)
                        )
                      ],
                    borderRadius: BorderRadius.circular(90),
                    color: Colors.white
                  ),
                  child: TextField(
                    controller: emailController,
                    style: const TextStyle(color: Colors.blue, fontSize: 23,),
                   decoration: InputDecoration(
                       prefixIcon: const Icon(CupertinoIcons.person),
                       hintText: "Email",
                     hintStyle: const TextStyle(fontSize: 20,color: Colors.grey),
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
                Container(
                  margin: const EdgeInsets.only(right: 20,left: 20),
                  height: 70,
                  decoration: BoxDecoration(
                      boxShadow:  const [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5,
                            offset: Offset(5, 5)
                        )
                      ],
                      borderRadius: BorderRadius.circular(90),
                      color: Colors.white
                  ),
                  child: TextField(
                    controller: passwordController,
                    style: const TextStyle(color: Colors.blue, fontSize: 23,),
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
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(),
                      const SizedBox(),
                      TextButton(onPressed: (){}, child: const Text("Forgot Password?", style: TextStyle(color: Colors.black87),)),
                    ],
                  ),
                ),
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
                  child: TextButton(
                    onPressed: (){
                      dateService();
                      dateService1();
                  },
                  child: const Text("LOG IN", style: TextStyle(color: Colors.white),),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(),
                    Container(
                      margin: const EdgeInsets.only(top: 50),
                      height: 30,
                      child: const Text("Or connect using", style: TextStyle(color: Colors.grey),),
                    ),
                    const SizedBox(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: () {  },
                      color: Colors.blue,
                      child: SizedBox(
                        height: 40,
                        width: 100,
                        child: Row(
                          children: const [
                            Icon(Icons.facebook_sharp, color: Colors.white,),
                            Text("Facebook", style: TextStyle(color: Colors.white),)
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20,),
                    MaterialButton(
                      onPressed: (){},
                      color: Colors.red,
                      child: SizedBox(
                        width: 100,
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text("G", style: TextStyle(fontSize: 30, color: Colors.white),),
                            SizedBox(width: 5,),
                            Text("Google", style: TextStyle(color: Colors.white),),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?"),
                    TextButton(
                      onPressed: (){
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => const CreatePage()
                            )
                        );
                      },
                      child: const Text("Sign Up"),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void dateService(){
    PrefsService.storeName("Email: ${emailController.text}");
    PrefsService.loadName().then((value) => {
      // ignore: avoid_print
      print(value),
    });
  }
  void dateService1(){
    PrefsService.storeName("Password: ${passwordController.text}");
    PrefsService.loadName().then((value) => {
      // ignore: avoid_print
      print(value),
    });
  }


}
