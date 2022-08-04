import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'login_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final greenColor = Color.fromARGB(255, 1, 186, 118);
  final greyColor = Color.fromARGB(255, 232, 232, 232);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            Row(
              children: [
                Expanded(
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.arrow_back_rounded,
                          size: 30,
                          color: Color.fromARGB(255, 1, 186, 118),
                        ))),
                const Expanded(
                  child: SizedBox(),
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                const Expanded(
                  child: SizedBox(),
                ),
              ],
            ),
            const SizedBox(
              height: 33,
            ),
            Text(
              "Create Account",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Text("Create a new account",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromARGB(255, 41, 40, 40), fontSize: 15)),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(right: 30, left: 30, top: 25),
              child: Column(
                children: [
                  Theme(
                    data: Theme.of(context).copyWith(
                        colorScheme: ThemeData()
                            .colorScheme
                            .copyWith(primary: greenColor)),
                    child: TextFormField(
                      style: const TextStyle(
                          color: Color.fromARGB(255, 1, 186, 118)),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: const Icon(Icons.person_outline),
                          labelText: 'NAME',
                          labelStyle: TextStyle(color: Colors.black54)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 30, left: 30, top: 25),
              child: Column(
                children: [
                  Theme(
                    data: Theme.of(context).copyWith(
                        colorScheme: ThemeData()
                            .colorScheme
                            .copyWith(primary: greenColor)),
                    child: TextFormField(
                      style: const TextStyle(
                          color: Color.fromARGB(255, 1, 186, 118)),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: const Icon(Icons.email_outlined),
                          labelText: 'EMAIL',
                          labelStyle: TextStyle(color: Colors.black54)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 30, left: 30, top: 25),
              child: Column(
                children: [
                  Theme(
                    data: Theme.of(context).copyWith(
                        colorScheme: ThemeData()
                            .colorScheme
                            .copyWith(primary: greenColor)),
                    child: TextFormField(
                      style: const TextStyle(
                          color: Color.fromARGB(255, 1, 186, 118)),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: const Icon(Icons.smartphone_outlined),
                          labelText: 'PHONE',
                          labelStyle: TextStyle(color: Colors.black54)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 30, left: 30, top: 25),
              child: Column(
                children: [
                  Theme(
                    data: Theme.of(context).copyWith(
                        colorScheme: ThemeData()
                            .colorScheme
                            .copyWith(primary: greenColor)),
                    child: TextFormField(
                      style: const TextStyle(
                          color: Color.fromARGB(255, 1, 186, 118)),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: const Icon(Icons.lock_outlined),
                          labelText: 'PASSWORD',
                          labelStyle: TextStyle(color: Colors.black54)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 30, left: 30, top: 25),
              child: Column(
                children: [
                  Theme(
                    data: Theme.of(context).copyWith(
                        colorScheme: ThemeData()
                            .colorScheme
                            .copyWith(primary: greenColor)),
                    child: TextFormField(
                      style: const TextStyle(
                          color: Color.fromARGB(255, 1, 186, 118)),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: const Icon(Icons.lock_outlined),
                          labelText: 'CONFIRM PASSWORD',
                          labelStyle: TextStyle(color: Colors.black54)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 33,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: ElevatedButton(
                  child: const Text('CREATE ACCOUNT'),
                  style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                      primary: greenColor,
                      minimumSize: const Size.fromHeight(50),
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  }),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have a account? ",
                      style: TextStyle(
                        color: Colors.black,
                      )),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text('Login', style: TextStyle(color: greenColor)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  onLogin() {}
}
