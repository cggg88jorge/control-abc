package com.controlAbc

class Incidence {

  String requested
  Date finishedDate
  String executor
  String description

  Site site

  TypeChange typeChange = TypeChange.HIGH

  static constraints = {
    description size:1..1000
  }
}
