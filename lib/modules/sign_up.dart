import 'package:flutter/material.dart';
import 'package:flutterworkspace/modules/login_screen.dart';
import 'package:flutterworkspace/shared/components/components.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var nameController = TextEditingController();
  var mobileController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key:formKey,
              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/images/logo.png'),
                    fit: BoxFit.contain,
                    height: 200,
                    width: 500,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                 defaultFormField(
                     controller: nameController,

                     validate: (String value)
                     {
                       if(value.isEmpty)
                       {
                         return'Enter your name';
                       }
                       return null;
                     },
                     label: 'Full Name',
                     prefix: Icons.edit,
                     type: TextInputType.name,
                 ),
                  SizedBox(
                    height: 15.0,
                  ),
                  defaultFormField(
                      controller: emailController,
                      label: "Email",
                      prefix: Icons.email,
                      type: TextInputType.emailAddress,
                      validate: (String value)
                      {
                        if (value.isEmpty)
                        {
                          return'email must not be empty';
                        }
                        return null;
                      }
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  defaultFormField(
                      controller: passwordController,
                      label: 'PassWord',
                      prefix: Icons.lock,
                      suffix:isPassword ? Icons.visibility : Icons.visibility_off,
                      isPassword: isPassword,
                      suffixPressed: (){
                        setState(() {
                          isPassword = ! isPassword ;
                        });

                      },

                      type: TextInputType.visiblePassword,
                      validate: (String value)
                      {
                        if (value.isEmpty)
                        {
                          return'password is too short';
                        }
                        return null;
                      }

                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  defaultFormField(
                      controller: mobileController,
                      label: "Mobile Number",
                      prefix: Icons.phone,
                      type: TextInputType.number,
                      validate: (String value)
                      {
                        if (value.isEmpty)
                        {
                          return'mobile number must not be empty';
                        }
                        return null;
                      }
                  ),
                  SizedBox(
                    height: 30.0,
                  ),

                  defaultButton(
                      function: ()
                      {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> LoginScreen()));

                        if(formKey.currentState!.validate()){
                          print(nameController.text);
                          print(emailController.text);
                          print(passwordController.text);
                          print(mobileController.text);
                        }
                      },
                      text: 'SIGN UP',

                  ),

                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already Have An Account?',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700],
                        ),
                      ),
                      TextButton(
                        onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> LoginScreen())
                          );
                        },
                        child:Text(
                          'LogIn',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
