import 'package:cadastro/src/utils/components/botton_large.dart';
import 'package:cadastro/src/utils/components/dropdrownbutton.dart';
import 'package:cadastro/src/utils/components/textformfild_widget.dart';
import 'package:cadastro/src/utils/mask/cpf_mask.dart';
import 'package:cadastro/src/utils/mask/name_mask.dart';
import 'package:cadastro/src/utils/mask/phone_mask.dart';
import 'package:cadastro/src/utils/mask/rg_mask.dart';
import 'package:cadastro/src/view/controller/controller_textformfild.dart';
import 'package:flutter/material.dart';

class BoxFormPerfil extends StatefulWidget {
  const BoxFormPerfil({Key? key}) : super(key: key);

  @override
  _BoxFormPageOneState createState() => _BoxFormPageOneState();
}

class _BoxFormPageOneState extends State<BoxFormPerfil> {
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
          DropDownButtonCustom(
            nameField: 'Country',
            onSaved: controller.onSavedContry,
          ),
          WidgetTextFormField(
            nameField: 'Telefone',
            hintText: '(15) 99798-4321',
            icon: Icons.phone_android_outlined,
            validator: controller.phoneValidate,
            inputFormatters: [PhoneMask()],
          ),
          WidgetTextFormField(
            nameField: 'RG',
            hintText: '12.345.678-9',
            icon: Icons.perm_identity_rounded,
            validator: controller.rgValidate,
            inputFormatters: [RgMask()],
          ),
          WidgetTextFormField(
            nameField: 'CPF',
            hintText: '123.456.789-01',
            icon: Icons.perm_identity,
            validator: controller.cpfValidate,
            inputFormatters: [CpfMask()],
          ),
          const SizedBox(height: 40),
          BottomLarg(
            text: 'Confirm',
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState?.save();
              }
            },
          ),
        ],
      ),
    );
  }
}
