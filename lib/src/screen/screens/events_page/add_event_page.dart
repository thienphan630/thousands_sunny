import 'package:flutter/material.dart';

class AddEventPage extends StatefulWidget {
  const AddEventPage({super.key});

  @override
  State<AddEventPage> createState() => _AddEventPageState();
}

DateTime date = DateTime.now();

class _AddEventPageState extends State<AddEventPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const EventsInputCustom(hint: "Chủ đề ..."),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Ngày bắt đầu:",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              ElevatedButton(
                onPressed: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime.now(),
                    initialDatePickerMode: DatePickerMode.year,
                    initialEntryMode: DatePickerEntryMode.calendar,
                  );
                  if (pickedDate == null) return;
                  setState(() => date = pickedDate);
                },
                child: Text("${date.day} / ${date.month} / ${date.year}"),
              ),
            ],
          ),
          const EventsInputCustom(hint: "Ghi chú ... "),
          ElevatedButton(onPressed: () {}, child: const Text("Lưu"))
        ],
      ),
    );
  }
}

class EventsInputCustom extends StatelessWidget {
  const EventsInputCustom({
    Key? key,
    required this.hint,
  }) : super(key: key);
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: hint,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 12,
          ),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)))),
    );
  }
}
