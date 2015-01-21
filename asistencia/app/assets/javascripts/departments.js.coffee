# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

department_name = department_namePattern: (name) -> name.match(/[a-zA-Z0-9]{6,}/)

department_email = department_emailPattern: (email) -> email.match(/[\w-\.]{3,}@([\w-]{2,}\.)*([\w-]{2,}\.)[\w-]{2,4}/)

jQuery ->
	$("#department_name").blur ->
		if (!department_name.department_namePattern(@value))
			$("#name_errors").text("El nombre del departamento debe contener al menos 6 caracteres")
			$("input[type='submit']").prop("disabled", true);
		else
			$("#name_errors").text("")
			$("input[type='submit']").attr("disabled", false)
	
	$("#department_email").blur ->
		if (!department_email.department_emailPattern(@value))
			$("#email_errors").text("Ingrese un correo electrónico")
			$("input[type='submit']").prop("disabled", true);
		else
			$("#email_errors").text("")
			$("input[type='submit']").attr("disabled", false)
			
