// ignore: unused_import
//import 'dart:ffi';

import 'package:assignment/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login_page extends StatelessWidget {
  const Login_page({super.key});

  @override
  Widget build(BuildContext context) {
    var controller;
    var hintText;
    return Scaffold(
      body: Center(
        child: AnnotatedRegion(
            child: GestureDetector(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(200.0),
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.center,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xffac18e),
                              Color(0xff5ac18e),
                              Color(0xff5ac18e),
                              Color(0xff5ac18e),
                            ]),
                      ),
                      child: Column(
                        children: [
                          Text('Login'),
                          Icon(
                            Icons.person,
                            size: 100,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          TextField(
                            controller: controller,
                            obscureText: false,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey.shade400),
                              ),
                              fillColor: Colors.grey.shade200,
                              filled: true,
                              hintText: hintText,
                              labelText: 'Email',
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          TextField(
                            controller: controller,
                            obscureText: true,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey.shade400),
                              ),
                              fillColor: Colors.grey.shade200,
                              filled: true,
                              hintText: hintText,
                              labelText: 'password',
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const landing_page();
                                  },
                                ),
                              );
                            },
                            child: Text(
                              'login',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'not a member? Register now',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.blue,
                                  ),
                                ),
                                Text(
                                  'forgot password?',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            value: SystemUiOverlayStyle()),
      ),
    );
  }
}
