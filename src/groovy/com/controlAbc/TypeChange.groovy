package com.controlAbc

enum TypeChange {

  HIGH("record.high"),
  LOW("record.low"),
  CHANGE_SOFTWARE("record.change.software"),
  CHANGE_HARDWARE("record.change.software"),

  private final String code

  TypeChange(String code){
    this.code = code
  }

  String getCode(){ return this.code }
}
