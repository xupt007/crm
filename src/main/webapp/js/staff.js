
//自己写的员工模块的js功能  (还挺有成就感)
function dataEcho() {
	// 点击高级搜索之后的数据回显,以及一系列操作......
	var select1 = $("#depSelect").val();
	if (select1 != null && select1 != "") {
		$.ajax({
			type : 'post',
			url : 'ajaxSearchPostByDep',
			data : {
				depid : select1
			},
			success : function(res) {
				var postid = $("#postid").val();
				var postname = $("#postname").val();
				$("#postSelectId option").remove();
				if (postid != null && postid != "") {
					$("#postSelectId").append(
							"<option value='" + postid + "'>" + postname
									+ "</option>");
					$("#postSelectId").append(
							"<option value=''>" + "--请选择职务--" + "</option>");
				}else {
					postname = "--请选择职务--";
					$("#postSelectId").append(
							"<option value='" + postid + "'>" + postname
									+ "</option>");
				}
				for (var i = 0; i < res.length; i++) {
					if (res[i].postid != postid) {
						$("#postSelectId").append(
								"<option value='" + res[i].postid + "'>"
										+ res[i].postname + "</option>");
					}
				}
			}
		});
	}
}
// 选择部门元素的change事件的ajax

function depChange() {
	var depid = $("#depSelect").val();
	if (depid != null && depid != "") {
		$.ajax({
			type : 'post',
			url : 'ajaxSearchPostByDep',
			data : {
				depid : depid
			},
			success : function(res) {
				$("#postSelectId option").remove();
				$("#postSelectId").append(
						"<option value=''>" + "--请选择职务--" + "</option>");
				for (var i = 0; i < res.length; i++) {
					$("#postSelectId").append(
							"<option value='" + res[i].postid + "'>"
									+ res[i].postname + "</option>");
				}
			}
		});
	} else {
		$("#postSelectId option").remove();
		$("#postSelectId").append(
				"<option value=''>" + "--请选择职务--" + "</option>");
	}
}

function condition() {
	$("#conditionFormId").submit();
}
window.onload = dataEcho