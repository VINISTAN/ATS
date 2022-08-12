import'package:flutter/material.dart';

class AppDropdownInput<T> extends StatefulWidget {
   String ?  hintText;
  final List<T> options;
  final T value;
  final String Function(T) getLabel;

  final onChanged;
  //final void Function(T)? onChanged;


  AppDropdownInput({
     this.hintText,
    this.options = const [],
    required this.getLabel,
    required this.value,
    required this.onChanged,
  });

  @override
  State<AppDropdownInput<T>> createState() => _AppDropdownInputState<T>();
}

class _AppDropdownInputState<T> extends State<AppDropdownInput<T>> {
  @override
  Widget build(BuildContext context) {
    return FormField<T>(
      builder: (FormFieldState<T> state) {
        return InputDecorator(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                horizontal: 10.0, vertical: 7.0),
            labelText: widget.hintText,
            border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
          ),
          isEmpty: widget.value == null || widget.value == '',
          child: DropdownButtonHideUnderline(
            child: DropdownButton<T>(
              value: widget.value,
              isDense: true,
              onChanged: widget.onChanged,
              items: widget.options.map((T value) {
                return DropdownMenuItem<T>(
                  value: value,
                  child: Text(widget.getLabel(value)),
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}

class ClientNameDropdown extends StatefulWidget {
  const ClientNameDropdown({Key? key}) : super(key: key);

  @override
  State<ClientNameDropdown> createState() => _ClientNameDropdownState();
}

class _ClientNameDropdownState extends State<ClientNameDropdown> {
  String ? selected_client;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppDropdownInput<String?>(
            hintText: "Select client",
            options: ["Adiso","Aigoeye","Axtria"],
            value: selected_client,
            onChanged: (String value) {
              setState(() {
                selected_client = value;
                print("selected Client : ${selected_client}");
                // state.didChange(newValue);
              });
            },

            getLabel: (String? value) => value.toString(),
          ),
        ],
      ),
    );
  }
}
