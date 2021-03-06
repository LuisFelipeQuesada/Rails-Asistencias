# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

tipo_asistencium_tipo = tipo_asistencium_tipoPattern: (uname) -> uname.match(/[a-zA-Z0-9]{6,}/)

administrative_user_password = administrative_user_passwordPattern: (pass) -> pass.match(/[a-zA-Z0-9]{6,}/)

jQuery ->
	$("#tipo_asistencium_tipo").blur ->
		if (!tipo_asistencium_tipo.tipo_asistencium_tipoPattern(@value))
			$("#tipo_asistencia_errors").text("El nombre de la asistencia debe contener al menos 6 caracteres")
			$("input[type='submit']").prop("disabled", true);
		else
			$("#tipo_asistencia_errors").text("")
			$("input[type='submit']").attr("disabled", false)
			

