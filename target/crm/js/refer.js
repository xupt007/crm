
//自己写的员工模块的js功能  (还挺有成就感)
function dataEcho() {
	// 点击高级搜索之后的数据回显,以及一系列操作......
	var select1 = $("#courseSelect").val();
	if (select1 != null && select1 != "") {
		
		$.ajax({
			type : 'post',
			url : 'ajaxSearchClassByCourse',
			data : {
				courseid : select1
			},
			success : function(res) {
				var classid = $("#classid").val();
				var name = $("#name").val();
				$("#ClassSelectId option").remove();
				if (classid != null && classid != "") {
					$("#ClassSelectId").append(
							"<option value='" + classid + "'>" + name
									+ "</option>");
					$("#ClassSelectId").append(
							"<option value=''>" + "--请选择班级--" + "</option>");
				}else {
					name = "--请选择班级--";
					$("#ClassSelectId").append(
							"<option value='" + classid + "'>" + name
									+ "</option>");
				}
				for (var i = 0; i < res.length; i++) {
					if (res[i].classid != classid) {
						$("#ClassSelectId").append(
								"<option value='" + res[i].classid + "'>"
										+ res[i].name + "</option>");
					}
				}
			}
		});
	}
}
// 选择部门元素的change事件的ajax

function courseChange() {
	var courseid = $("#courseSelect").val();
	if (courseid != null && courseid != "") {

		$.ajax({
			type : 'post',
			url : 'ajaxSearchClassByCourse',
			data : {
				courseid : courseid
			},
			success : function(res) {
				$("#ClassSelectId option").remove();
				$("#ClassSelectId").append(
						"<option value=''>" + "--请选择班级--" + "</option>");
				for (var i = 0; i < res.length; i++) {
					$("#ClassSelectId").append(
							"<option value='" + res[i].classid + "'>"
									+ res[i].name + "</option>");
				}
			}
		});
	} else {
		$("#ClassSelectId option").remove();
		$("#ClassSelectId").append(
				"<option value=''>" + "--请选择班级--" + "</option>");
	}
}

function condition() {
	$("#conditionFormId").submit();
}
window.onload = dataEcho