/**
 * 
 */
function checkPasswordMatch() {
	var password = $("#password").val();
	var confirmPassword = $("#conferma").val();

	if (password != "" && confirmPassword != "") {
		if (password.length != confirmPassword.length
				&& password != confirmPassword) {
			$("#conferma").css("border", "2px solid red");
			$("#signup_btn").attr("disabled", "disabled");
		} else {
			if (password == confirmPassword) {
				$("#conferma").css("border", "2px solid green");
				if ($("#nome").val() != "" && $("#cognome").val() != ""
						&& $("#email").val() != "" && $("#nickname").val() != ""
						&& $("#indirizzo").val() != "") {
					$("#signup_btn").removeAttr("disabled");
				}
			}
		}
	} else {
		$("#conferma").removeAttr("style");
		$("#signup_btn").attr("disabled", "disabled");
	}
}