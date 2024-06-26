// admission_page.dart

// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:admission/components/input_box.dart';

class AdmissionPage extends StatefulWidget {
  // Constructor with named key
  AdmissionPage({Key? key}) : super(key: key);

  @override
  _AdmissionPageState createState() => _AdmissionPageState();
}

class _AdmissionPageState extends State<AdmissionPage> {
  String selectedStandard = 'LKG';
  String selectedSection = 'A';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admission'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(height: 16.0),
            NameInputWidget(),
            const SizedBox(height: 16.0),
            ParentNumberInputWidget(),
            const SizedBox(height: 16.0),
            AddressInputWidget(),
            const SizedBox(height: 16.0),
            StandardDropdownWidget(
              value: selectedStandard,
              onChanged: (value) {
                setState(() {
                  selectedStandard = value!;
                });
              },
            ),
            const SizedBox(height: 16.0),
            SectionDropdownWidget(
              value: selectedSection,
              onChanged: (value) {
                setState(() {
                  selectedSection = value!;
                });
              },
            ),
            const SizedBox(height: 16.0),
            FeesInputWidget(
              standard: selectedStandard,
              onChanged: (fees) {
                // Handle fees change if needed
              },
            ),
            const SizedBox(height: 16.0),
            PaidRupeeInputWidget(),
            const SizedBox(height: 16.0),
            SubmitButtonWidget(
              onPressed: () {
                // Implement form submission logic here
                // Validate fields and save data
              },
            ),
          ],
        ),
      ),
    );
  }
}
