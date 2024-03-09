import 'package:animation/main.dart';
import 'package:animation/view/home_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final language = ['en', 'ml', 'hi'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: DropdownButton(
              icon: const Icon(
                Icons.language,
                color: Colors.white,
              ),
              underline: const SizedBox(),
              items: language
                  .map(
                    (e) => DropdownMenuItem<String>(
                      child: Text(
                        e,
                        style: const TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      value: e,
                    ),
                  )
                  .toList(),
              onChanged: (language) {
                if (language != null) {
                  MyApp.setLocale(context, Locale(language));
                }
              },
            ),
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                'assets/bg.png',
                height: 250.0,
                width:250,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10,top: 10,right: 20,left: 20),
              child: TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: AppLocalizations.of(context)!.username,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10,top: 10,right: 20,left: 20),
              child: TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: AppLocalizations.of(context)!.password,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  prefixIcon: const Icon(Icons.lock),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10,top: 10,right: 20,left: 20),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.08,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) {
                        return const MyHomePage();
                      },
                    ));
                  },
                  child: Text(AppLocalizations.of(context)!.login),
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(150, 50)),
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