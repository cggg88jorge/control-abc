package com.controlAbc

enum TypeChange {

  HIGH("Alta"),
  LOW("Baja"),
  CHANGE_SOFTWARE("Cambio de software"),
  CHANGE_HARDWARE("Cambio de hardware"),

  private final String code

  TypeChange(String code){
    this.code = code
  }

  String getCode(){ return this.code }
}
