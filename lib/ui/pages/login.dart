import 'package:flutter/material.dart';
import 'package:custom1/helpers/router-path.dart' as router;
import 'package:custom1/ui/template/layout.dart';
import 'package:custom1/helpers/validation-mixins.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with ValidationMixins {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _obscureText = true;
  bool _validate = false;
  String _email = '';
  String _password = '';
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutCustom(
        type: 1,
        safeArea: true,
        child: Form(
          autovalidate: _validate,
          key: _formKey,
          child: Center(
            child: Container(
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    autofocus: true,
                    keyboardType: TextInputType.emailAddress,
                    validator: validateEmail,
                    onSaved: (newValue) {
                      _email = newValue;
                    },
                    decoration: InputDecoration(
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color: Colors.red,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(),
                      ),
                      hintText: 'you@email.com',
                      labelText: 'Email',
                      contentPadding: const EdgeInsets.fromLTRB(
                          6, 6, 48, 6), // 48 -> icon width
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Stack(
                    alignment: _password.length <= 6
                        ? Alignment.centerRight
                        : Alignment.topRight,
                    fit: StackFit.loose,
                    children: <Widget>[
                      TextFormField(
                        keyboardType: TextInputType.text,
                        obscureText: _obscureText,
                        onSaved: (newValue) {
                          setState(() {
                            _password = newValue;
                          });
                        },
                        validator: validatePassword,
                        decoration: InputDecoration(
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 2.0,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(),
                          ),
                          labelText: 'Password',
                          contentPadding: const EdgeInsets.fromLTRB(
                              6, 6, 48, 6), // 48 -> icon width
                        ),
                      ),
                      IconButton(
                        icon: Icon(_obscureText
                            ? Icons.lock_outline
                            : Icons.lock_open),
                        onPressed: () {
                          FocusScope.of(context).requestFocus(FocusNode());
                          _toggle();
                          // Your codes...
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  RaisedButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        // No any error in validation
                        _formKey.currentState.save();
                        print('Mobile $_email');
                        print('Email $_password');
                        Navigator.of(context).pushNamed(router.HomeRoute);
                      } else {
                        // validation error
                        setState(() {
                          _validate = true;
                        });
                      }
                    },
                    child: Text('Iniciar sesión'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
}
