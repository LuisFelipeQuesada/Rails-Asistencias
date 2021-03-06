# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

administrative_user_username = administrative_user_usernamePattern: (uname) -> uname.match(/[a-zA-Z0-9]{6,}/)

administrative_user_password = administrative_user_passwordPattern: (pass) -> pass.match(/[a-zA-Z0-9]{6,}/)

jQuery ->
	$("#administrative_user_username").blur ->
		if (!administrative_user_username.administrative_user_usernamePattern(@value))
			$("#uname_errors").text("El nombre de usuario debe contener al menos 6 caracteres")
			$("input[type='submit']").prop("disabled", true);
		else
			$("#uname_errors").text("")
			$("input[type='submit']").attr("disabled", false)
	
	$("#administrative_user_password").blur ->
		if (!administrative_user_password.administrative_user_passwordPattern(@value))
			$("#pass_errors").text("La contraseña debe contener al menos 6 caracteres")
			$("input[type='submit']").prop("disabled", true);
		else
			$("#pass_errors").text("")
			$("input[type='submit']").attr("disabled", false)
			

