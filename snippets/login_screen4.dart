import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginForm(),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  late String _username;
  late String _password;

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // Perform login logic here, such as calling an authentication API
      print('Logging in with username: $_username, password: $_password');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://png.pngtree.com/thumb_back/fh260/background/20210605/pngtree-dark-abstract-geometric-stories-lines-triangle-background-landing-vertical-app-decorative-image_726430.jpg'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://media.istockphoto.com/id/1303206558/photo/headshot-portrait-of-smiling-businessman-talk-on-video-call.jpg?s=1024x1024&w=is&k=20&c=b7OI0XGNUkThz1VhBeAxPtLfG3ZJr64w5p53zjgYrKo="),
                      radius: 110,
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Login to Your Account',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Username',
                        prefixIcon: Icon(Icons.person),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your username';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _username = value!;
                      },
                    ),
                    SizedBox(height: 16.0),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.lock),
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _password = value!;
                      },
                    ),
                    SizedBox(height: 16.0),
                    ElevatedButton(
                      onPressed: _submitForm,
                      child: Text('Login'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
