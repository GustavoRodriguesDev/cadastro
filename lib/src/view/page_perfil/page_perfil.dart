import 'package:cadastro/src/utils/components/top_side.dart';
import 'package:cadastro/src/view/page_cadastro/page_cadastro.dart';
import 'package:cadastro/src/view/page_perfil/components/box_form_perfil.dart';
import 'package:flutter/material.dart';

class PagePerfil extends StatefulWidget {
  const PagePerfil({Key? key}) : super(key: key);

  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PagePerfil> {
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
              padding: const EdgeInsets.all(14.0),
              child: Topside(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const PageCadastro(),
                    ),
                  );
                },
                image: 'assets/icon/tchau.png',
                text1: 'Setting up your ',
                text2: 'Profile',
                text3: 'Add your profile photo',
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
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      height: 135,
                      width: 135,
                      alignment: Alignment.bottomRight,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        image: const DecorationImage(
                            image: AssetImage('assets/perfil/perfil.jpg')),
                      ),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF928BE3),
                        ),
                        child: const Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const BoxFormPerfil(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
