import 'package:flutter/material.dart';
import 'user.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  HomePage(),
    );
  }
}



bool isSecured = true;

Map<String, User> users = {
  "Mahmoud@gmail.com": User(email: 'Mahmuod@gmail.com', password: '1234'),
  "Aljazi@gmail.com": User(email: 'Aljazi@gmail.com', password: 'a123'),
};

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text(
          "Tawakkalna",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/asset.jpg',
            width: 350,
            height: 350,
            ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Column(
          children: [
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  label: Text('Enter Email'),
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                  borderSide: BorderSide(), 
                  ), 
                ), 
                ),
          SizedBox(height: 20),      
          TextFormField(
            controller: passwordController,
              obscureText: isSecured,
                decoration: InputDecoration(
                  label: Text('Enter Password'),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon:IconButton(
                    onPressed: (){
                     setState(() {
                       isSecured = !isSecured;
                     });
                    },
                    icon:  Icon(Icons.remove_red_eye),
                  ),
                  border: OutlineInputBorder(
                  borderSide: BorderSide(), 
                  ),
                ), 
                ),
           SizedBox(height: 40),
          InkWell(
            onTap: (){
            User user = users[emailController.text]!;

            if(user.email == emailController.text &&
             user.password == passwordController.text ){
            print('logged');
            }else{
              print('email or password is wrong');
            }
            },
            child: Container(
            padding:EdgeInsets.all(15),            
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color:Colors.green,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Text('Login', style: TextStyle(color: Colors.white, fontSize:20),
              ),
             SizedBox(          
              width:5,
              ),
             Icon(
              Icons.login,
              color: Colors.white,
              ),
                ],
                ),
            ),
          ),
          ],
            ),
      ),
    ],
    ),
      ),
    );

  }
}
