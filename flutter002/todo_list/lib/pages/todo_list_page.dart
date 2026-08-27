import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16), 
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Preço',
              hintText: 'exemple@exemple.com',
              //border: InputBorder.none,
              errorText: null,
              prefixText: 'R\$ ',
              suffixText: 'cm',
              labelStyle: TextStyle(
                fontSize: 20,
              )
            ),
            //obscureText: true,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.purple,
            ),
          ),
        ),
      ),
    );
  }
}
