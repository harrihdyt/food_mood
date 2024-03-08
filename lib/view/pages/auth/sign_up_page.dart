import 'package:flutter/material.dart';
import 'package:food_ui/common/themes/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: kOrangePeetColor,
            )),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              'Sign Up',
              style: kOrangePeetTextStyle.copyWith(
                fontSize: 24,
                fontWeight: bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
