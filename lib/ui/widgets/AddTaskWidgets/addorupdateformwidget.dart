import 'package:flutter/material.dart';
import 'package:taskmanager/core/Helpers/ValidationHelpers.dart';
import 'package:taskmanager/core/models/Task.dart';

class AddorEditForm extends StatefulWidget {
  Task task;
  AddorEditForm();
  _AddorEditFormState createState() => _AddorEditFormState();
}

class _AddorEditFormState extends State<AddorEditForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController textEditingController = TextEditingController();
  ScrollController _controller = new ScrollController();
  var selectedStatus, selectedPriority;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          AddingTaskTextField(
            hint: "Title",
            controller: textEditingController,
          ),
          SizedBox(
            height: 10,
          ),
          AddingTaskTextField(
            hint: "Sub Title",
            controller: textEditingController,
          ),
          SizedBox(
            height: 10,
          ),
          AddingTaskTextField(
            hint: "Due Date",
            controller: textEditingController,
          ),
          SizedBox(
            height: 10,
          ),
          AddingTaskTextField(
            hint: "Due Time",
            controller: textEditingController,
          ),
          SizedBox(
            height: 10,
          ),
          DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              isExpanded: true,
              isDense: false,
              items: <String>['Foo', 'Bar'].map((String value) {
                return new DropdownMenuItem<String>(
                  value: value,
                  child: new Text(value),
                );
              }).toList(),
              onChanged: (String newValue) {
                setState(() {
                  selectedStatus = newValue;
                });
              },
              value: selectedStatus,
            ),
          ),
        ],
      )),
    );
  }
}

class AddingTaskTextField extends StatelessWidget {
  TextEditingController controller;
  String hint;
  AddingTaskTextField({@required this.hint, @required this.controller})
      : assert(hint != null),
        assert(controller != null);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (ValidationHelper().isInputNull(value))
          return ValidationHelper().emptyErrorMessage + hint;
        return null;
      },
      decoration: new InputDecoration(
        labelText: hint,
        fillColor: Colors.white,

        border: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(15.0),
          borderSide: new BorderSide(),
        ),
        //fillColor: Colors.green
      ),
    );
  }
}
