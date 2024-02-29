import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginnState();
}

class _LoginnState extends State<Login> {
  var phoneController = TextEditingController();
  var emmailController = TextEditingController();
  var nnameController = TextEditingController();
  var passwordController = TextEditingController();

  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  GlobalKey<FormState> gglobalFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height / 3),
          child: AppBar(
            title: const Text(""),
            bottom: const TabBar(tabs: [
              Tab(
                text: "LOGIN",
              ),
              Tab(
                text: "REGESTER",
              )
            ]),
          ),
        ),
        body: TabBarView(
          children: [
            Scaffold(
              // backgroundColor: Colors.green[500],
              appBar: AppBar(
                backgroundColor: Colors.white,
                // backgroundColor: Colors.green[500],
                elevation: 0.0,
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Form(
                    key: globalFormKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: phoneController,
                            keyboardType: TextInputType.emailAddress,

                            //onSaved: (input)=> requestModel.phoneNumber=input!,

                            onFieldSubmitted: (value) {
                              print(value);
                            },
                            onChanged: (value) {
                              print(value);
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Phone Number must not be empty ';
                              }
                              if (!value.isNum) {
                                return 'You must enter just a numbers';
                              }
                              if (value.length == 10) {
                                return null;
                              }
                              return "email must be 10 digits";
                            },
                            decoration: const InputDecoration(
                              //    iconColor: Colors.green,
                              labelText: 'email ',
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.black38,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: passwordController,
                            keyboardType: TextInputType.number,
                            //  onSaved: (input)=> requestModel.password!,
                            obscureText: true,
                            onFieldSubmitted: (value) {
                              print(value);
                            },
                            onChanged: (value) {
                              print(value);
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'password must not be empty ';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              iconColor: Colors.black38,
                              labelText: 'Password',
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.black38,
                              ),
                              suffixIcon: Icon(
                                Icons.remove_red_eye,
                                color: Colors.black38,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Container(
                              width: double.infinity,
                              height: 45.0,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextButton(
                                onPressed: () {
                                  // Get.to();
                                },
                                child: const Text(
                                  'Login...',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Scaffold(
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Form(
                    key: gglobalFormKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: emmailController,
                            keyboardType: TextInputType.name,
                            onFieldSubmitted: (value) {
                              print(value);
                            },
                            onChanged: (value) {
                              print(value);
                            },
                            validator: (value1) {
                              if (value1 == null || value1.isEmpty) {
                                return 'email must not be empty ';
                              }

                              return null;
                            },
                            decoration: const InputDecoration(
                              //    iconColor: Colors.green,
                              labelText: 'email ',
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.black38,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: passwordController,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            onFieldSubmitted: (value) {
                              print(value);
                            },
                            onChanged: (value) {
                              print(value);
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'password must not be empty ';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              iconColor: Colors.black38,
                              labelText: 'Password',
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.black38,
                              ),
                              suffixIcon: Icon(
                                Icons.remove_red_eye,
                                color: Colors.black38,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: nnameController,
                            keyboardType: TextInputType.name,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'name must not be empty ';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              //    iconColor: Colors.green,
                              labelText: 'Name ',
                              border: OutlineInputBorder(),
                              prefix: Icon(
                                Icons.remove,
                                color: Colors.black38,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Container(
                              width: double.infinity,
                              height: 45.0,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Sign in ',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
