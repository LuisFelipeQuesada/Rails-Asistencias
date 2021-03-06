# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

message_title = message_titlePattern: (title) -> title.match(/[a-zA-Z0-9]{6,}/)

message_contact_to = message_contact_toPattern: (email) -> email.match(/[\w-\.]{3,}@([\w-]{2,}\.)*([\w-]{2,}\.)[\w-]{2,4}/)

message_body = message_bodyPattern: (body) -> body.match(/[a-zA-Z0-9]{1,}/)

jQuery ->
	$("#message_title").blur ->
		if (!message_title.message_titlePattern(@value))
			$("#message_title_errors").text("El nombre de la asistencia debe contener al menos 6 caracteres")
			$("input[type='submit']").prop("disabled", true);
		else
			$("#message_title_errors").text("")
			$("input[type='submit']").attr("disabled", false)
			
	$("#message_contact_to").blur ->
		if (!message_contact_to.message_contact_toPattern(@value))
			$("#message_contact_to_errors").text("Digite un correo electrónico válido")
			$("input[type='submit']").prop("disabled", true);
		else
			$("#message_contact_to_errors").text("")
			$("input[type='submit']").attr("disabled", false)

	$("#message_body").blur ->
		if (!message_body.message_bodyPattern(@value))
			$("#message_body_errors").text("Digite su consulta")
			$("input[type='submit']").prop("disabled", true);
		else
			$("#message_body_errors").text("")
			$("input[type='submit']").attr("disabled", false)

