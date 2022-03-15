import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WidgetTextFormField extends StatefulWidget {
  final String hintText;
  final String nameField;
  final IconData icon;
  final IconData? suffixIcon1;
  final IconData? suffixIcon2;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final void Function(String)? onChanged;

  const WidgetTextFormField(
      {this.onChanged,
      this.inputFormatters,
      this.validator,
      this.suffixIcon1,
      this.suffixIcon2,
      required this.icon,
      required this.nameField,
      required this.hintText,
      Key? key})
      : super(key: key);

  @override
  State<WidgetTextFormField> createState() => _WidgetTextFormFieldState();
}

class _WidgetTextFormFieldState extends State<WidgetTextFormField> {
  bool obscure = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 124,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          Text(
            widget.nameField,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
          ),
          const SizedBox(height: 15),
          TextFormField(
            onChanged: widget.onChanged,
            inputFormatters: widget.inputFormatters,
            validator: widget.validator,
            obscureText: obscure,
            decoration: InputDecoration(
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFF928BE3),
                ),
              ),
              suffixIconColor: const Color(0xFF928BE3),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              suffixIcon: GestureDetector(
                  onTap: () => setState(() {
                        obscure = !obscure;
                      }),
                  child: obscure
                      ? Icon(
                          widget.suffixIcon1,
                          color: const Color(0xFF928BE3),
                        )
                      : Icon(
                          widget.suffixIcon2,
                          color: const Color(0xFF928BE3),
                        )),
              prefixIcon: Icon(
                widget.icon,
                color: const Color(0xFF928BE3),
              ),
              hintText: widget.hintText,
            ),
          ),
        ],
      ),
    );
  }
}
