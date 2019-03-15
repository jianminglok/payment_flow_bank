import 'package:flutter/material.dart';

class Account {
  String name;
  String cardNumber;
  Color color;

  String validThru;

  double amount;

  int months;

  String getLastCardNumber() {
    List l = cardNumber.split(" ");
    return l[l.length - 1];
  }

  Map toJson() {
    return {
      "name": name,
      "card_number": cardNumber,
      "color": color,
      "valid_thru": validThru,
      "amount": amount,
      "months": months,
    };
  }

  Account fromJson(map) {
    name = map["name"];
    cardNumber = map["card_number"];
    color = map["color"];
    validThru = map["valid_thru"];
    amount = map["amount"];
    months = map["months"];

    return this;
  }
}