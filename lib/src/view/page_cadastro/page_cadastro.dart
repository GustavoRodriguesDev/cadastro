// ignore_for_file: prefer_const_constructors

import 'package:cadastro/src/utils/components/top_side.dart';
import 'package:flutter/material.dart';
import 'components/box_form_cadastro.dart';

class PageCadastro extends StatefulWidget {
  const PageCadastro({Key? key}) : super(key: key);

  @override
  _PageCadastroState createState() => _PageCadastroState();
}

class _PageCadastroState extends State<PageCadastro> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        color: const Color(0xFFFAFAFA),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(14.0),
              child: Topside(
                onPressed: () {},
                image: 'assets/icon/tchau.png',
                text1: 'Hello ',
                text2: 'Are you new here ?',
                text3: 'if you have an account/',
                text4: 'Login',
              ),
            ),
            Container(
              height: height * 0.80019,
              width: width,
              padding: const EdgeInsets.symmetric(horizontal: 14),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Color(0xFFFFFFFF)),
              child: const SingleChildScrollView(
                padding: EdgeInsets.all(10),
                child: BoxFormCadastro(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
