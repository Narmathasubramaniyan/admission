// input_box.dart

// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Admission'),
    );
  }
}

class NameInputWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        hintText: 'Enter your name',
        labelText: 'Name',
      ),
    );
  }
}

class ParentNumberInputWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        hintText: 'Enter parent\'s number',
        labelText: 'Parent\'s Number',
      ),
      keyboardType: TextInputType.phone,
    );
  }
}

class AddressInputWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        hintText: 'Enter your address',
        labelText: 'Address',
      ),
      maxLines: null, // Allow multiple lines for address
    );
  }
}

class StandardDropdownWidget extends StatelessWidget {
  final List<String> standards = [
    'LKG',
    'UKG',
    '1st',
    '2nd',
    '3rd',
    '4th',
    '5th',
    '6th',
    '7th',
    '8th',
    '9th',
    '10th',
    '11th',
    '12th'
  ];
  final void Function(String?) onChanged;
  final String? value;

  StandardDropdownWidget({required this.onChanged, required this.value});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: value,
      onChanged: onChanged,
      items: standards.map((standard) {
        return DropdownMenuItem<String>(
          value: standard,
          child: Text(standard),
        );
      }).toList(),
      decoration: const InputDecoration(
        labelText: 'Standard',
        hintText: 'Select standard',
      ),
    );
  }
}

class SectionDropdownWidget extends StatelessWidget {
  final List<String> sections = ['A', 'B', 'C', 'D'];
  final void Function(String?) onChanged;
  final String? value;

  SectionDropdownWidget({required this.onChanged, required this.value});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: value,
      onChanged: onChanged,
      items: sections.map((section) {
        return DropdownMenuItem<String>(
          value: section,
          child: Text(section),
        );
      }).toList(),
      decoration: const InputDecoration(
        labelText: 'Section',
        hintText: 'Select section',
      ),
    );
  }
}

int getFeesForStandard(String standard) {
  // Example logic to calculate fees based on the selected standard
  switch (standard) {
    case 'LKG':
      return 5000;
    case 'UKG':
      return 6000;
    case '1st':
      return 7000;
    case '2st':
      return 8000;
    case '3st':
      return 9000;
    case '4st':
      return 10000;
    case '5st':
      return 11000;
    case '6st':
      return 12000;
    case '7st':
      return 13000;
    case '8st':
      return 14000;
    case '9st':
      return 15000;
    case '10st':
      return 16000;
    case '11st':
      return 17000;
    case '12st':
      return 18000;
    // Add more cases for other standards as needed
    default:
      return 0;
  }
}

class FeesInputWidget extends StatelessWidget {
  final String standard;
  final Function(int) onChanged;

  FeesInputWidget({required this.standard, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    int fees = getFeesForStandard(standard);

    return TextField(
      decoration: const InputDecoration(
        labelText: 'Fees',
        hintText: 'Fees amount',
        prefixText: '\$',
        suffixText: 'per annum',
      ),
      keyboardType: TextInputType.number,
      onChanged: (value) {
        // Implement onChanged logic if needed
        // This is optional based on your requirements
        // Example: onChanged(int.parse(value));
      },
      readOnly: true,
      controller: TextEditingController(text: fees.toString()),
    );
  }
}

class PaidRupeeInputWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        labelText: 'Paid Amount',
        hintText: 'Enter amount paid',
        prefixText: '\$',
      ),
      keyboardType: TextInputType.number,
    );
  }
}

class SubmitButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;

  SubmitButtonWidget({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: const Text('Submit'),
    );
  }
}
