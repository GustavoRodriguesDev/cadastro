import 'package:cadastro/src/utils/components/customdropitem.dart';
import 'package:flutter/material.dart';

class DropDownButtonCustom extends StatefulWidget {
  final String nameField;
  final void Function(String?) onSaved;
  const DropDownButtonCustom(
      {this.nameField = '', required this.onSaved, Key? key})
      : super(key: key);

  @override
  State<DropDownButtonCustom> createState() => _DropDownButtonCustomState();
}

class _DropDownButtonCustomState extends State<DropDownButtonCustom> {
  final List<CustomDropItem> items = [
    const CustomDropItem(image: 'assets/bandeira/brasil.jpg', text: 'Brasil'),
    const CustomDropItem(
        image: 'assets/bandeira/argentina.jpg', text: 'Argentina'),
    const CustomDropItem(image: 'assets/bandeira/chile.jpg', text: 'Chile'),
    const CustomDropItem(image: 'assets/bandeira/uruguai.jpg', text: 'Uruguai'),
    const CustomDropItem(
        image: 'assets/bandeira/venezuela.jpg', text: 'Venezuela'),
  ];
  late CustomDropItem selectItems;
  @override
  void initState() {
    super.initState();
    selectItems = items[0];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 15),
        Text(
          widget.nameField,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
        ),
        const SizedBox(height: 30),
        DropdownButtonFormField<CustomDropItem>(
          onSaved: (value) {
            widget.onSaved(value?.text ?? '');
          },
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
          isExpanded: true,
          value: selectItems,
          icon: const Icon(
            Icons.arrow_downward,
          ),
          elevation: 16,
          style: const TextStyle(color: Colors.deepPurple),
          onChanged: (newValue) {
            selectItems = newValue!;
          },
          items: items.map<DropdownMenuItem<CustomDropItem>>((value) {
            return DropdownMenuItem<CustomDropItem>(
              value: value,
              child: value,
            );
          }).toList(),
        ),
      ],
    );
  }
}
