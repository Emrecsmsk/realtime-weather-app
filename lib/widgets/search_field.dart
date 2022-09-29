import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchField extends StatefulWidget {
  SearchField({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  void initState() {
    super.initState();
    _formController = TextEditingController();
  }

  late TextEditingController _formController;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          labelText: 'enter'.tr,
        ),
        controller: _formController,
        keyboardType: TextInputType.name,
      ),
    );
  }
}
