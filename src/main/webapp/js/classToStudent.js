function classChange() {
	var classid = $("#classSelect").val();
	if (classid != null && classid != "") {
		$.ajax({
			type : 'post',
			url : 'ajaxSearchStudentByClass',
			data : {
				classid : classid
			},
			success : function(res) {
				$("#studentSelectId option").remove();
				$("#studentSelectId").append(
						"<option value=''>" + "--请选择学生--" + "</option>");
				for (var i = 0; i < res.length; i++) {
					$("#studentSelectId").append(
							"<option value='" + res[i].studentid + "'>"
									+ res[i].name + "</option>");
					alert(res[i].studentid);
				}
			}
		});
	} else {
		$("#studentSelectId option").remove();
		$("#studentSelectId").append(
				"<option value=''>" + "--请选择学生--" + "</option>");
	}
}