# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

assistance_name = assistance_namePattern: (name) -> name.match(/[a-zA-Z0-9]{6,}/)

assistance_horas =assistance_horasPattern: (horas) -> horas.match(/[0-9]/)

assistance_notas = assistance_notasPattern: (notas) -> notas.match(/[0-9]/)

jQuery ->
	$("#assistance_name").blur ->
		if (!assistance_name.assistance_namePattern(@value))
			$("#name_errors").text("Ingrese el nombre de una asistencia. Este debe contener al menos 6 caracteres")
			$("input[type='submit']").prop("disabled", true);
		else
			$("#name_errors").text("")
			$("input[type='submit']").attr("disabled", false)
	
	$("#assistance_horas").blur ->
		if (!assistance_horas.assistance_horasPattern(@value))
			$("#horas_errors").text("Ingrese solo horas en números.")
			$("input[type='submit']").prop("disabled", true);
		else
			$("#horas_errors").text("")
			$("input[type='submit']").attr("disabled", false)
	
	$("#assistance_notas").blur ->
		if !(assistance_notas.assistance_notasPattern(@value))
			$("#notas_errors").text("Ingrese solo notas en números.")
			$("input[type='submit']").prop("disabled", true);
		else
			$("#notas_errors").text("")
			$("input[type='submit']").attr("disabled", false)

