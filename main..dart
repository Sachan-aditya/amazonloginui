import "package:flutter/material.dart";

void main() {
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 1,
              centerTitle: true,
              title: Image.asset('assets/images/amzon.png')),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: InkWell(
              child: Column(children: <Widget>[
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sign in",
                        style: TextStyle(
                            color: Color.fromARGB(255, 38, 35, 35),
                            fontSize: 30,
                            fontWeight: FontWeight.w700)),
                    Text("Forgot Password?",
                        style: TextStyle(
                            color: Color.fromARGB(255, 89, 160, 222),
                            fontSize: 15,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    labelText: 'Email(or phone number)',
                  ),
                ),
                TextField(
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      labelText: 'Password',
                      suffixIcon: IconButton(
                          icon: Icon(
                            _isObscure
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                            const SizedBox(
                              height: 40,
                            );
                          })),
                ),
                const SizedBox(height: 20),
                Card(
                  elevation: 15,
                  shape: const BeveledRectangleBorder(
                      side: BorderSide(color: Colors.orange)),
                  child: Container(
                    width: double.maxFinite,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 241, 171, 66),
                      shape: BoxShape.rectangle,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.zero,
                      child: Text(
                        "Sign-in",
                        style: TextStyle(color: Colors.black, fontSize: 23),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ColoredBox(
                  color: Colors.green,
                  child: Material(
                    child: CheckboxListTile(
                      title: const Text('Keep me signed in'),
                      value: true,
                      onChanged: (bool? value) {},
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const InkWell(
                  child: Row(children: <Widget>[
                    Expanded(
                        child: Divider(
                      thickness: 2,
                    )),
                    Text(
                      "New to Amazon?",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 2,
                    )),
                  ]),
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  child: Card(
                    elevation: 15,
                    shape: const BeveledRectangleBorder(
                        side: BorderSide(
                            color: Color.fromARGB(255, 255, 251, 251))),
                    child: Container(
                      width: double.maxFinite,
                      height: 40,
                      decoration: const BoxDecoration(
                          color: Colors.white, shape: BoxShape.rectangle),
                      child: const Padding(
                        padding: EdgeInsets.zero,
                        child: Text(
                          "I am old Customer",
                          style: TextStyle(
                              color: Color.fromARGB(255, 45, 44, 44),
                              fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                const Expanded(
                    child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Conditons of Use      Privacy Notice',
                    style: TextStyle(color: Color.fromARGB(255, 9, 91, 158)),
                  ),
                ))
              ]),
            ),
          ),
        ));
  }
}
