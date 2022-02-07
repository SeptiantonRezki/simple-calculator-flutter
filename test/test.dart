double handleOperation(
    String typeOpertion, String itemToCalculate, String resultBefore) {
  if (typeOpertion == "+") {
    return double.parse(itemToCalculate) +
        double.parse(resultBefore == "" ? "1" : resultBefore);
  } else if (typeOpertion == "-") {
    return double.parse(itemToCalculate) -
        double.parse(resultBefore == "" ? "1" : resultBefore);
  } else if (typeOpertion == ":") {
    return double.parse(itemToCalculate) /
        double.parse(resultBefore == "" ? "1" : resultBefore);
  } else if (typeOpertion == "X") {
    return double.parse(itemToCalculate) *
        double.parse(resultBefore == "" ? "1" : resultBefore);
  } else if (typeOpertion == "%") {
    return double.parse(itemToCalculate) *
        double.parse(resultBefore == "" ? "1" : resultBefore);
  } else if (typeOpertion == "=") {
    return double.parse(itemToCalculate) *
        double.parse(resultBefore == "" ? "1" : resultBefore);
  }
  return 0;
}

void main() {
  String newItem = "10X15+10X15"; // 150+10
  String result = "";
  List newMapString = newItem.split("");
  // int lengthString = newItem.split("").length;
  // List newMapStringRemoveLast = newMapString.removeAt(1);
  // print(newItem.split(""));
  // print(newItem.split("").removeAt(newItem.split("").length - 1));
  // print(newItem);
  // print(newMapString);
  // newMapString.removeAt(newMapString.length - 1);
  // print(newMapString);
  // print(newMapString.join());
  var itemOne = "";
  var itemArray = [];
  var operationTypeList = [];
  for (var i = 0; i < newMapString.length; i++) {
    var itemDouble = double.tryParse(newMapString[i]);
    if (itemDouble != null) {
      itemOne = itemOne + newMapString[i];
    } else if (itemDouble == null) {
      // print(itemOne);
      itemArray.add(itemOne);
      operationTypeList.add(newMapString[i]);
      itemOne = "";
      // 10+
      // if 10+ is
      // 10+20+30+
      // if (newMapString[i + 1] != null) {
      //   result = itemOne;
      //   result = handleOperation(newMapString[i], itemOne, result).toString();
      // } else {
      //   result = itemOne;
      // }
      // itemOne = "";
      // print(result);
    } else if (itemOne != "") {
      itemArray.add(itemOne);
      itemOne = "";
    }
  }
  print(operationTypeList);
  print(itemArray);
  var newOpertion = [];
  for (var i = 0; i < operationTypeList.length; i++) {
    if (operationTypeList[i] == "X" || operationTypeList[i] == ":") {
      // operationTypeList.removeAt(i);
      // var newValue = operationTypeList[i];
      // if (newOpertion.isEmpty) {
      //   newOpertion.add(operationTypeList[i]);
      // } else {
      //   newOpertion.insert(0, operationTypeList[i]);
      // }
      print("kali");
    } else if (operationTypeList[i] == "+" || operationTypeList[i] == "-") {
      // operationTypeList.removeAt(i);
      // operationTypeList.insert(
      //     operationTypeList.length - 1, operationTypeList[i]);
      print("penambahan");
    }
  }
  // print(newOpertion);
  // var indexExample = 0;
  // var getAllIndexX = [];
  // print(operationTypeList.where((e) {
  //   if (e == "X") {
  //     getAllIndexX.add(indexExample);
  //   }
  //   indexExample++;
  //   return e == "X" ? true : false;
  // }));
  // print(getAllIndexX);

  // String newItem = "10X15+10X15"; // 150+10
  // for (var item in operationTypeList) {
  //   print(item);
  // }
  // operationTypeList.map((element) {
  //   print(element);
  // });
  // for (var i = 0; i < operationTypeList.length; i++) {
  //   if (i == 0) {
  //     result = itemArray[i];
  //   }
  //   if (itemArray.asMap().containsKey(i + 1)) {
  //     result = handleOperation(operationTypeList[i], itemArray[i + 1], result)
  //         .toString();
  //   }
  // }

  // print(result);
  // print(newMapStringRemoveLast);
//   for (int i = 0; i < 5; i++) {
//     print('hello ${i + 1}');
//   }
// stop
}
