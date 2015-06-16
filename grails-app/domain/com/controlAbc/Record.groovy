package com.controlAbc

class Record {

  TypeChange change 
  String applicant
  Date dateOfFinished
  String executor
  String description

  Site site

  static constraints = {
    change nullable: false
    applicant nullable: false
    dateOfFinished nullable: false
    executor nullable: false
    description nullable: false, range: 1..1000
    site nullable: false
  }
}
