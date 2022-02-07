import 'package:flutter/material.dart';
import 'package:flutter_ssr_calculator/utils/v_navigation.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double result = 0;
  var userInputNumberOne = "";
  var userInputNumberTop = "";
  var userInputNumberTop2 = "";
  var historyUserCalculate = "";
  var operatorUseNow = "";
  var conditionInputValue = false;
  var isCalculated = false;

  handleSolutionTwo(String inputValue) {
    if (inputValue != "") {
      var itemDouble = int.tryParse(inputValue);
      if (itemDouble != null) {
        if (conditionInputValue) {
          userInputNumberOne = "";
          conditionInputValue = false;
        }
        if (userInputNumberOne == "0") {
          userInputNumberOne = "";
        }
        setState(() {
          userInputNumberOne = userInputNumberOne + itemDouble.toString();
        });
      } else if (itemDouble == null) {
        if (inputValue == "+") {
          if (userInputNumberOne == "0") {
            return;
          }
          var newResult = result;
          if (userInputNumberOne != "" && userInputNumberTop != "") {
            newResult = double.parse(userInputNumberTop) +
                double.parse(userInputNumberOne);
          }
          if (userInputNumberTop == "") {
            setState(() {
              conditionInputValue = true;
              operatorUseNow = inputValue;
              userInputNumberTop = userInputNumberOne;
              result = newResult;
            });
          } else if (userInputNumberTop != "" && userInputNumberTop != "") {
            setState(() {
              conditionInputValue = true;
              operatorUseNow = inputValue;
              userInputNumberTop = newResult.toString();
              userInputNumberTop2 = "";
              result = newResult;
            });
          } else {
            setState(() {
              conditionInputValue = true;
              operatorUseNow = inputValue;
              userInputNumberTop2 = userInputNumberOne;
              result = newResult;
            });
          }
        } else if (inputValue == "-") {
          if (userInputNumberOne == "0") {
            return;
          }
          var newResult = result;
          if (userInputNumberOne != "" && userInputNumberTop != "") {
            newResult = double.parse(userInputNumberTop) -
                double.parse(userInputNumberOne);
          }
          if (userInputNumberTop == "") {
            setState(() {
              conditionInputValue = true;
              operatorUseNow = inputValue;
              userInputNumberTop = userInputNumberOne;
              result = newResult;
            });
          } else if (userInputNumberTop != "" && userInputNumberTop != "") {
            setState(() {
              conditionInputValue = true;
              operatorUseNow = inputValue;
              userInputNumberTop = newResult.toString();
              userInputNumberTop2 = "";
              result = newResult;
            });
          } else {
            setState(() {
              conditionInputValue = true;
              operatorUseNow = inputValue;
              userInputNumberTop2 = userInputNumberOne;
              result = newResult;
            });
          }
        } else if (inputValue == ":") {
          if (userInputNumberOne == "0") {
            return;
          }
          var newResult = result;
          if (userInputNumberOne != "" && userInputNumberTop != "") {
            newResult = double.parse(userInputNumberTop) /
                double.parse(userInputNumberOne);
          }
          if (userInputNumberTop == "") {
            setState(() {
              conditionInputValue = true;
              operatorUseNow = inputValue;
              userInputNumberTop = userInputNumberOne;
              result = newResult;
            });
          } else if (userInputNumberTop != "" && userInputNumberTop != "") {
            setState(() {
              conditionInputValue = true;
              operatorUseNow = inputValue;
              userInputNumberTop = newResult.toString();
              userInputNumberTop2 = "";
              result = newResult;
            });
          } else {
            setState(() {
              conditionInputValue = true;
              operatorUseNow = inputValue;
              userInputNumberTop2 = userInputNumberOne;
              result = newResult;
            });
          }
        } else if (inputValue == "X") {
          if (userInputNumberOne == "0") {
            return;
          }
          var newResult = result;
          if (userInputNumberOne != "" && userInputNumberTop != "") {
            newResult = double.parse(userInputNumberTop) *
                double.parse(userInputNumberOne);
          }
          if (userInputNumberTop == "") {
            setState(() {
              conditionInputValue = true;
              operatorUseNow = inputValue;
              userInputNumberTop = userInputNumberOne;
              result = newResult;
            });
          } else if (userInputNumberTop != "" && userInputNumberTop != "") {
            setState(() {
              conditionInputValue = true;
              operatorUseNow = inputValue;
              userInputNumberTop = newResult.toString();
              userInputNumberTop2 = "";
              result = newResult;
            });
          } else {
            setState(() {
              conditionInputValue = true;
              operatorUseNow = inputValue;
              userInputNumberTop2 = userInputNumberOne;
              result = newResult;
            });
          }
        } else if (inputValue == "%") {
          if (userInputNumberOne == "0") {
            return;
          }
          var newResult = result;
          if (userInputNumberOne != "" && userInputNumberTop != "") {
            newResult = double.parse(userInputNumberTop) *
                double.parse(userInputNumberOne) /
                100;
          }
          if (userInputNumberTop == "") {
            setState(() {
              conditionInputValue = true;
              operatorUseNow = inputValue;
              userInputNumberTop = userInputNumberOne;
              result = newResult;
            });
          } else if (userInputNumberTop != "" && userInputNumberTop != "") {
            setState(() {
              conditionInputValue = true;
              operatorUseNow = inputValue;
              userInputNumberTop = newResult.toString();
              userInputNumberTop2 = "";
              result = newResult;
            });
          } else {
            setState(() {
              conditionInputValue = true;
              operatorUseNow = inputValue;
              userInputNumberTop2 = userInputNumberOne;
              result = newResult;
            });
          }
        } else if (inputValue == "=") {
          if (userInputNumberOne == "0") {
            return;
          }
          if (operatorUseNow == "") {
            setState(() {
              userInputNumberOne = result.toString();
            });
          } else if (operatorUseNow == "+") {
            var varResult = double.parse(userInputNumberOne) +
                double.parse(userInputNumberTop);
            setState(() {
              result = varResult;
              userInputNumberTop = varResult.toString();
              userInputNumberOne = varResult.toString();
            });
          } else if (operatorUseNow == "-") {
            var varResult = double.parse(userInputNumberOne) -
                double.parse(userInputNumberTop);
            setState(() {
              result = varResult;
              userInputNumberTop = varResult.toString();
              userInputNumberOne = varResult.toString();
            });
          } else if (operatorUseNow == ":") {
            var varResult = double.parse(userInputNumberOne) /
                double.parse(userInputNumberTop);
            setState(() {
              result = varResult;
              userInputNumberTop = varResult.toString();
              userInputNumberOne = varResult.toString();
            });
          } else if (operatorUseNow == "X") {
            var varResult = double.parse(userInputNumberOne) *
                double.parse(userInputNumberTop);
            setState(() {
              result = varResult;
              userInputNumberTop = varResult.toString();
              userInputNumberOne = varResult.toString();
            });
          } else if (operatorUseNow == "%") {
            var varResult = double.parse(userInputNumberOne) +
                double.parse(userInputNumberTop) / 100;
            setState(() {
              result = varResult;
              userInputNumberTop = varResult.toString();
              userInputNumberOne = varResult.toString();
            });
          }
        } else if (inputValue == "D") {
          if (userInputNumberOne == "0") {
            userInputNumberOne = "";
          }
          List newMapString = userInputNumberOne.split("");
          if (newMapString.length - 1 != -1) {
            newMapString.removeAt(newMapString.length - 1);
            setState(() {
              userInputNumberOne = newMapString.join();
            });
          } else {
            setState(() {
              userInputNumberOne = "0";
            });
          }
        } else if (inputValue == "C") {
          if (userInputNumberOne == "0" || userInputNumberOne == "0.0") {
            userInputNumberOne = "";
          }
          setState(() {
            result = 0;
            userInputNumberOne = "";
            userInputNumberTop = "";
            userInputNumberTop2 = "";
            historyUserCalculate = "";
            operatorUseNow = "";
            conditionInputValue = false;
          });
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return WillPopScope(
      onWillPop: () async {
        VNavigation.gotoNavigation(context);
        return true;
      },
      child: Scaffold(
        body: SizedBox(
          height: height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  height: height / 8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          VNavigation.gotoSettings(context);
                        },
                        child: Ink(
                            child: const SizedBox(child: Icon(Icons.settings))),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: height / 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "${userInputNumberTop == "" ? "0" : userInputNumberTop}${operatorUseNow == "" ? "" : " " + operatorUseNow}${userInputNumberTop2 == "" ? "" : " " + userInputNumberTop2}",
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        userInputNumberOne == "" ? "0" : userInputNumberOne,
                        style: const TextStyle(fontSize: 40),
                      ),
                      const SizedBox(height: 20),
                      Text("result : ${result.toString()}"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: calculatorButtons(handleSolutionTwo),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget calculatorButtons(Function handleClick) {
  return Column(
    children: [
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buttonCalculator("C", handleClick),
            buttonCalculator("%", handleClick),
            buttonCalculator("D", handleClick),
            buttonCalculator(":", handleClick),
          ],
        ),
      ),
      Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buttonCalculator("7", handleClick),
            buttonCalculator("8", handleClick),
            buttonCalculator("9", handleClick),
            buttonCalculator("X", handleClick),
          ],
        ),
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buttonCalculator("4", handleClick),
            buttonCalculator("5", handleClick),
            buttonCalculator("6", handleClick),
            buttonCalculator("-", handleClick),
          ],
        ),
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buttonCalculator("1", handleClick),
            buttonCalculator("2", handleClick),
            buttonCalculator("3", handleClick),
            buttonCalculator("+", handleClick),
          ],
        ),
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buttonCalculator("", handleClick),
            buttonCalculator("0", handleClick),
            buttonCalculator(",", handleClick),
            buttonCalculator("=", handleClick),
          ],
        ),
      ),
    ],
  );
}

Widget buttonCalculator(String value, Function handleClick) {
  return Expanded(
    child: InkWell(
      onTap: () {
        handleClick(value);
      },
      child: Ink(
        child: Container(
          color: Colors.blue,
          child: Center(
            child: Text(
              value,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    ),
  );
}
