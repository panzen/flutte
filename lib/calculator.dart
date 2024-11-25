import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
  // _ButtonToTextFieldState createState() => _ButtonToTextFieldState();

  final TextEditingController _controllerForname = TextEditingController();

  void setState(Null Function() param0) {}
}

class _CalculatorState extends State<Calculator> {
  final TextEditingController _controllerForname = TextEditingController();
  String _displayValue = '';

  void _appendValue(String value) {
    setState(() {
      _controllerForname.text += value;
    });
  }

  void _clearDisplay() {
    setState(() {
      _displayValue = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: const Text(
            'Calculator',
            style: TextStyle(
              fontSize: 30, // Font size
              fontWeight: FontWeight.bold, // Font weight
              fontStyle: FontStyle.italic, // Font style (italic or normal)
              color: Color.fromARGB(255, 31, 32, 32), // Text color
              letterSpacing: 2.0, // Space between letters
              wordSpacing: 4.0, // Space between words
              decoration: TextDecoration
                  .underline, // Underline, overline, or line-through
            ),
          ),
        ),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Container(
              height: 280,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 244, 236, 236),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    offset: Offset(5, 5),
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Center(
                child: Text(_controllerForname.text),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _appendValue('7');
                      });
                      print("Button 7 pressed!");
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 70),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),

                      backgroundColor: const Color.fromARGB(
                          255, 246, 224, 241), // Button size
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    child: Text(
                      "7",
                      style: TextStyle(
                        fontSize: 24.0, // Text size
                        fontWeight: FontWeight.bold, // Bold text
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Button 8 pressed!");
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 70),

                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),

                      backgroundColor: const Color.fromARGB(
                          255, 246, 224, 241), // Button size
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    child: Text(
                      "8",
                      style: TextStyle(
                        fontSize: 24.0, // Text size
                        fontWeight: FontWeight.bold, // Bold text
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Button 9 pressed!");
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 70),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),

                      backgroundColor: const Color.fromARGB(
                          255, 246, 224, 241), // Button size
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    child: Text(
                      "9",
                      style: TextStyle(
                        fontSize: 24.0, // Text size
                        fontWeight: FontWeight.bold, // Bold text
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Button % pressed!");
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 70),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),

                      backgroundColor: const Color.fromARGB(
                          255, 246, 224, 241), // Button size
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    child: Text(
                      "%",
                      style: TextStyle(
                        fontSize: 24.0, // Text size
                        fontWeight: FontWeight.bold, // Bold text
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Button - pressed!");
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 70),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),

                      backgroundColor: const Color.fromARGB(
                          255, 246, 224, 241), // Button size
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    child: Text(
                      "-",
                      style: TextStyle(
                        fontSize: 24.0, // Text size
                        fontWeight: FontWeight.bold, // Bold text
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Button 4 pressed!");
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 70),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),

                      backgroundColor: const Color.fromARGB(
                          255, 246, 224, 241), // Button size
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    child: Text(
                      "4",
                      style: TextStyle(
                        fontSize: 24.0, // Text size
                        fontWeight: FontWeight.bold, // Bold text
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Button 5 pressed!");
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 70),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),

                      backgroundColor: const Color.fromARGB(
                          255, 246, 224, 241), // Button size
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    child: Text(
                      "5",
                      style: TextStyle(
                        fontSize: 24.0, // Text size
                        fontWeight: FontWeight.bold, // Bold text
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Button 6 pressed!");
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 70),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),

                      backgroundColor: const Color.fromARGB(
                          255, 246, 224, 241), // Button size
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    child: Text(
                      "6",
                      style: TextStyle(
                        fontSize: 24.0, // Text size
                        fontWeight: FontWeight.bold, // Bold text
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Button x pressed!");
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 70),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),

                      backgroundColor: const Color.fromARGB(
                          255, 246, 224, 241), // Button size
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    child: Text(
                      "x",
                      style: TextStyle(
                        fontSize: 24.0, // Text size
                        fontWeight: FontWeight.bold, // Bold text
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Button 1 pressed!");
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 70),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),

                      backgroundColor: const Color.fromARGB(
                          255, 246, 224, 241), // Button size
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    child: Text(
                      "1",
                      style: TextStyle(
                        fontSize: 24.0, // Text size
                        fontWeight: FontWeight.bold, // Bold text
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Button 2 pressed!");
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 70),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),

                      backgroundColor: const Color.fromARGB(
                          255, 246, 224, 241), // Button size
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    child: Text(
                      "2",
                      style: TextStyle(
                        fontSize: 24.0, // Text size
                        fontWeight: FontWeight.bold, // Bold text
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Button 3 pressed!");
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 70),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),

                      backgroundColor: const Color.fromARGB(
                          255, 246, 224, 241), // Button size
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    child: Text(
                      "3",
                      style: TextStyle(
                        fontSize: 24.0, // Text size
                        fontWeight: FontWeight.bold, // Bold text
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Button + pressed!");
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 70),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),

                      backgroundColor: const Color.fromARGB(
                          255, 246, 224, 241), // Button size
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    child: Text(
                      "+",
                      style: TextStyle(
                        fontSize: 24.0, // Text size
                        fontWeight: FontWeight.bold, // Bold text
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Button . pressed!");
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 70),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),

                      backgroundColor: const Color.fromARGB(
                          255, 246, 224, 241), // Button size
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    child: Text(
                      ".",
                      style: TextStyle(
                        fontSize: 24.0, // Text size
                        fontWeight: FontWeight.bold, // Bold text
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Button 0 pressed!");
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 70),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),

                      backgroundColor: const Color.fromARGB(
                          255, 246, 224, 241), // Button size
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    child: Text(
                      "0",
                      style: TextStyle(
                        fontSize: 24.0, // Text size
                        fontWeight: FontWeight.bold, // Bold text
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Button C pressed!");
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 70),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),

                      backgroundColor: const Color.fromARGB(
                          255, 246, 224, 241), // Button size
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    child: Text(
                      "C",
                      style: TextStyle(
                        fontSize: 24.0, // Text size
                        fontWeight: FontWeight.bold, // Bold text
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Button = pressed!");
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 70),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),

                      backgroundColor: const Color.fromARGB(
                          255, 246, 224, 241), // Button size
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    child: Text(
                      "=",
                      style: TextStyle(
                        fontSize: 24.0, // Text size
                        fontWeight: FontWeight.bold, // Bold text
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     ElevatedButton(
            //       child: Align(
            //         alignment: Alignment.bottomCenter,
            //         child: Text(
            //           "=",
            //           style: TextStyle(
            //             fontSize: 24.0, // Text size
            //             fontWeight: FontWeight.bold, // Bold text
            //           ),
            //         ),
            //       ),
            //       onPressed: () {
            //         print("Button = pressed!");
            //       },
            //       style: ElevatedButton.styleFrom(
            //         padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),

            //         backgroundColor:
            //             const Color.fromARGB(255, 246, 224, 241), // Button size
            //         shape: RoundedRectangleBorder(
            //           borderRadius:
            //               BorderRadius.circular(10), // Rounded corners
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
