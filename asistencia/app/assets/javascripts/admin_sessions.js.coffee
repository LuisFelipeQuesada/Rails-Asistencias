# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

username = usernamePattern: (user) -> user.match(/[a-zA-Z0-9]{1,}/)

pass_hash = passwordPattern: (pass) -> pass.match(/[a-zA-Z0-9]{1,}/)

jQuery ->
	$("#username").blur ->
		if (!username.usernamePattern(@value))
			$("#mail_errors").text("Digíte su nombre de usuario")
			$("input[type='submit']").prop("disabled", true);
		else
			$("#mail_errors").text("")
			$("input[type='submit']").attr("disabled", false)
			
	$("#pass_hash").blur ->
		if (!pass_hash.passwordPattern(@value))
			$("#pass_errors").text("Digite su password")
			$("input[type='submit']").prop("disabled", true);
		else
			$("#pass_errors").text("")
			$("input[type='submit']").attr("disabled", false)



