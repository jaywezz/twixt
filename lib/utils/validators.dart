String? phoneNumberValidator(String? phoneNumber) {
  if (phoneNumber!.isEmpty) {
    return "Phone Cannot be empty"; // Phone number is empty
  }else{
    final RegExp phoneRegex = RegExp(r'^\d{11}$');
    if(phoneRegex.hasMatch(phoneNumber)){
      return "Invalid phone number";
    }else{
      return null;
    }
  }
}

String? passwordValidator(String? password) {
  if (password!.isEmpty) {
    return "Password Cannot be empty"; // Phone number is empty
  }else{
    return null;
  }
}

String? emailValidator(String? em) {

  String p = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  RegExp regExp = RegExp(p);
  if(em!.isEmpty){
    return "Email required";
  }else{
    if(regExp.hasMatch(em)){
      return null;
    }else{
      return "Invalid email address";
    }
  }

}
