class ControllerTextFormFild {
  String? password1;
  String? password2;

  ControllerTextFormFild({this.password1, this.password2});
  String? nameValidate(String? text) {
    if (text == null || text.isEmpty) {
      return 'O campo nome não pode ser vazio!';
    } else if (!RegExp(r'[\sa-zA-Z]+[\sa-zA-Z]$').hasMatch(text)) {
      return 'Digite um name válido';
    }
    return null;
  }

  String? emailValidate(String? email) {
    if (email == null || email.isEmpty) {
      return 'O Campo de email não pode ser vazio';
    } else if (!RegExp(r'.+@[a-zZ-a]+[.]{1}[a-z]{3}').hasMatch(email)) {
      return 'Digite um e-mail valido';
    }
    return null;
  }

  String? phoneValidate(String? phone) {
    if (phone == null || phone.isEmpty) {
      return 'O Campo de telefone não pode ser vazio';
    } else if (!RegExp(r'^\(\d{2}\) \d{5}\-\d{4}$').hasMatch(phone)) {
      return 'Digite um telefone valido';
    }
    return null;
  }

  String? rgValidate(String? rg) {
    if (rg == null || rg.isEmpty) {
      return 'O Campo de RG não pode ser vazio';
    } else if (!RegExp(r'^\d{2}\.\d{3}\.\d{3}\-\d$').hasMatch(rg)) {
      return 'Digite um RG valido';
    }
    return null;
  }

  String? cpfValidate(String? cpf) {
    if (cpf == null || cpf.isEmpty) {
      return 'O Campo de CPF não pode ser vazio';
    } else if (!RegExp(r'\d{3}\.\d{3}\.\d{3}\-\d{2}').hasMatch(cpf)) {
      return 'Digite um CPF valido';
    }
    return null;
  }

  String? passwordValidate(String? pass) {
    if (pass == null || pass.isEmpty) {
      return 'O Campo de senha não pode ser vazio';
    } else if (!RegExp(r'').hasMatch(pass)) {
      return 'Digite uma senha valida';
    }
    return null;
  }

  String? confirmPassword(String? pass) {
    if (password1 != password2) {
      return 'As senhas não coincidem';
    } else if (pass == null || pass.isEmpty) {
      return 'O Campo de senha não pode ser vazio';
    } else if (!RegExp(r'').hasMatch(pass)) {
      return 'Digite uma senha valida';
    }
    return null;
  }

  String? onSavedContry(String? value) {
    return value;
  }
}
