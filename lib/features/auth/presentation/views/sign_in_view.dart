import 'package:flutter/material.dart';
import 'package:new_dalel_app/core/functions/navigation.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              customNavigate(context, '/signUp');
            },
            icon: const Icon(Icons.logout),
          )
        ],
      ),
    );
  }
}
