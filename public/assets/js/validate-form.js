$(document).ready(function () {
  $("#register-form").validate({
    rules: {
      "registration[firstName]": {
        required: true,
        minlength: 2,
      },

      "registration[lastName]": {
        required: true,
        minlength: 2,
      },

      "registration[hash]": {
        required: true,
        minlength: 5,
      },

      "registration[confirmPassword]": {
        required: true,
        minlength: 5,
        equalTo: "#registration_hash",
      },

      "registration[email]": {
        required: true,
        email: true,
      },
    },
    messages: {
      "registration[firstName]": {
        required: "Please enter a First Name",
        minlength: "Your username must consist of at least 2 characters",
      },

      "registration[lastName]": {
        required: "Please enter a Last Name",
        minlength: "Your username must consist of at least 2 characters",
      },

      "registration[hash]": {
        required: "Please provide a password",
        minlength: "Your password must be at least 5 characters long",
      },

      "registration[confirmPassword]": {
        required: "Please provide a password",
        minlength: "Your password must be at least 5 characters long",
        equalTo: "Please enter the same password as above",
      },

      "registration[email]": "Please enter a valid email address",
    },
  });

  $("#loginform").validate({
    rules: {
      _username: {
        required: true,
        email: true,
      },

      _password: {
        required: true,
        minlength: 5,
      },
    },

    messages: {
      _username: "Please enter a valid email address",

      _password: {
        required: "Please provide a password",
        minlength: "Your password must be at least 5 characters long",
      },
    },
  });

  $("#reset-pass-form").validate({
    rules: {
      "reset_password[NewPassword]": {
        required: true,
        minlength: 5,
      },

      "reset_password[confirmPassword]": {
        required: true,
        minlength: 5,
        equalTo: "#reset_password_NewPassword",
      },
    },
    messages: {
      "reset_password[NewPassword]": {
        required: "Please provide a password",
        minlength: "Your password must be at least 5 characters long",
      },

      "reset_password[confirmPassword]": {
        required: "Please provide a password",
        minlength: "Your password must be at least 5 characters long",
        equalTo: "Please enter the same password as above",
      },
    },
  });

  $("#forget-pass-form").validate({
    rules: {
      "forget_password[email]": {
        required: true,
        email: true,
      },
    },
    messages: {
      "forget_password[email]": "Please enter a valid email address",
    },
  });

  $("#edit-profil-form").validate({
    rules: {
      "profile[firstName]": {
        required: true,
        minlength: 2,
      },

      "profile[lastName]": {
        required: true,
        minlength: 2,
      },

      "profile[email]": {
        required: true,
        email: true,
      },

      "profile[avatarFile]": {
        fileType: {
          types: ["png", "jpeg", "jpj"],
        },
        maxFileSize: {
          unit: "MB",
          size: 2,
        },
      },

      "profile[descreption]": {
        required: true,
        minlength: 2,
        maxlength: 200,
      },
    },

    messages: {
      "profile[firstName]": {
        required: "Please enter a First Name",
        minlength: "Your first Name must consist of at least 2 characters",
      },

      "profile[lastName]": {
        required: "Please enter a Last Name",
        minlength: "Your last Name must consist of at least 2 characters",
      },

      "profile[email]": "Please enter a valid email address",

      "profile[avatarFile]": {
        fileType: "Please enter Only png , jpeg or jpeg Image type",
        maxFileSize: "The document may not be greater than 10 megabytes",
      },

      "profile[descreption]": {
        required: "Please enter a little description",
        maxlength: "Your description must consist of at least 2 characters",
        maxlength: "Your description must consist of at max 200 characters",
      },
    },
  });

  $("#update-pass-form").validate({
    rules: {
      "update_password[currentPassword]": {
        required: true,
        minlength: 5,
      },

      "update_password[newPassword]": {
        required: true,
        minlength: 5,
      },

      "update_password[confirmNewPass]": {
        required: true,
        minlength: 5,
        equalTo: "#update_password_newPassword",
      },
    },
    messages: {
      "update_password[currentPassword]": {
        required: "Please provide your current password",
        minlength: "Your password must be at least 5 characters long",
      },

      "update_password[newPassword]": {
        required: "Please provide a password",
        minlength: "Your password must be at least 5 characters long",
      },

      "update_password[confirmNewPass]": {
        required: "Please provide a password",
        minlength: "Your password must be at least 5 characters long",
        equalTo: "Please enter the same password as above",
      },
    },
  });
});
