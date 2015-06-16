package com.controlAbc

class Site {

  String cr
  String name

  static hasMany = [ records : Record]

  static constraints = {
    cr unique: true
    name blank:false
  }
}
