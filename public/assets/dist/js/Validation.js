const validation = {
  checkEmail: (email) => {
    const regexEmail = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\ [[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return regexEmail.test(String(email).toLowerCase());
  },
  checkEmpty: (input) => {
    return input.trim() !== '';
  },
  checkPasswordMatch: (password, confirmPassword) => {
    return password === confirmPassword;
  }
};
