import 'package:cadastro/src/utils/components/botton_large.dart';
import 'package:cadastro/src/utils/components/textformfild_widget.dart';
import 'package:cadastro/src/utils/mask/name_mask.dart';
import 'package:cadastro/src/view/controller/controller_textformfild.dart';
import 'package:cadastro/src/view/page_perfil/page_perfil.dart';
import 'package:flutter/material.dart';

class BoxFormCadastro extends StatefulWidget {
  const BoxFormCadastro({Key? key}) : super(key: key);

  @override
  _BoxFormPageOneState createState() => _BoxFormPageOneState();
}

class _BoxFormPageOneState extends State<BoxFormCadastro> {
  final formkey = GlobalKey<FormState>();
  final controller = ControllerTextFormFild();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          WidgetTextFormField(
            nameField: 'Full Name',
            hintText: 'Julia Nanatsu',
            icon: Icons.person_outline_sharp,
            validator: controller.nameValidate,
            inputFormatters: [NameMask()],
          ),
          WidgetTextFormField(
            nameField: 'E-mail',
            hintText: 'julianana@gmail.com',
            icon: Icons.email_outlined,
            validator: controller.emailValidate,
          ),
          WidgetTextFormField(
            nameField: 'Password',
            hintText: '********',
            icon: Icons.lock_outlined,
            suffixIcon1: Icons.visibility_off_outlined,
            suffixIcon2: Icons.visibility_outlined,
            validator: controller.passwordValidate,
            onChanged: (value) => controller.password1 = value,
          ),
          WidgetTextFormField(
            nameField: 'Confirm Password',
            hintText: '********',
            icon: Icons.lock_outlined,
            suffixIcon1: Icons.visibility_off_outlined,
            suffixIcon2: Icons.visibility_outlined,
            validator: controller.confirmPassword,
            onChanged: (value) {
              controller.password2 = value;
            },
          ),
          const SizedBox(height: 40),
          BottomLarg(
            text: 'Sign in',
            onTap: () {
              if (formkey.currentState?.validate() == true) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const PagePerfil(),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
