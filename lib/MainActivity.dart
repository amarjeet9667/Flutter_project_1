import 'package:flutter/material.dart';
class MyLogin extends StatefulWidget{
  const MyLogin({Key? key}) : super(key: key);
  @override
  _MyLoginState createState() => _MyLoginState();

}
class _MyLoginState  extends State<MyLogin>{
  @override
  Widget build(BuildContext context){
    return Container(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Container(
            child: Center(
              child: Text(
                'Welcome',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,),
              ),
            ),
          ),
        ),
        body: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, top: 80),
              child: Column(
                children: [
                  TextField(
                    style: TextStyle(
                      color: Colors.black,),
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: 'Enter Email',
                      prefixIcon: Icon(Icons.email),
                      prefixIconColor: Colors.grey.shade100,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40)
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    obscureText: true,
                    style: TextStyle(color:Colors.black),
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: 'Enter Password',
                      prefixIcon: Icon(Icons.lock),
                      prefixIconColor: Colors.grey.shade100,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  OutlinedButton(onPressed: (){
                    Navigator.pushNamed(context, 'login');
                  },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(Size(150, 45)),
                      backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),

                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(onPressed: (){
                    Navigator.pushNamed(context, 'forget');
                  },
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Forget Password',
                        style: TextStyle(
                          color: Colors.lightBlue,
                          fontSize: 18,

                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextButton(onPressed: (){
                    Navigator.pushNamed(context, 'signup');
                  },
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                          color: Colors.lightBlue,
                          decoration: TextDecoration.underline,
                          fontSize: 22,
                        ),
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