import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color orangeColor = Color(0xFFff8b39);
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isObscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: orangeColor,
        title: Text('Login'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/Perpusku.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.3), BlendMode.darken), //Blur
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 58,
                  backgroundImage: AssetImage('asset/Perpusku_logo.jpg'),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  "Login To Perpusku",
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 2.5,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: orangeColor,
                  decoration: InputDecoration(
                    labelText: "Masukan email",
                    floatingLabelStyle: const TextStyle(
                      color: orangeColor,
                      fontWeight: FontWeight.bold,
                    ),
                    hintText: "Silahkan isi email kamu !",
                    hintStyle: TextStyle(
                      color: whiteColor, // Ubah warna hint text menjadi putih
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                        width: 1.0,
                        color: Colors.grey[400]!,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                        width: 1.0,
                        color: orangeColor,
                      ),
                    ),
                  ),
                  style: TextStyle(
                    color: whiteColor,
                  ),
                  validator: (emailValue) {
                    if (emailValue?.isEmpty ?? true) {
                      return "Email tidak boleh kosong !";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  controller: passwordController,
                  obscureText: isObscurePassword,
                  cursorColor: orangeColor,
                  decoration: InputDecoration(
                    labelText: "Masukan Password",
                    floatingLabelStyle: const TextStyle(
                      color: orangeColor,
                      fontWeight: FontWeight.bold,
                    ),
                    hintText: "Silahkan isi password kamu !",
                    hintStyle: TextStyle(
                      color: whiteColor, // Ubah warna hint text menjadi putih
                    ),
                    suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          isObscurePassword = !isObscurePassword;
                        });
                      },
                      child: Icon(isObscurePassword
                          ? Icons.lock
                          : Icons.lock_open_rounded),
                    ),
                    suffixIconColor: orangeColor,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                        width: 1.0,
                        color: Colors.grey[400]!,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                        width: 1.0,
                        color: orangeColor,
                      ),
                    ),
                  ),
                  style: TextStyle(
                    color: whiteColor,
                  ),
                  validator: (passwordValue) {
                    if (passwordValue?.isEmpty ?? true) {
                      return "Password tidak boleh kosong !";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20.0),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushNamed(context, '/home'); // Login logic
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 18.0),
                      primary: orangeColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Sign in with',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: whiteColor),
                ),
                SizedBox(height: 14.0),
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('asset/google.jpg'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
