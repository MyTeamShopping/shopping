$(function() {
	$(".del").click(function() {
		if(confirm("确定删除吗?") == true) {
			var href = $(this).attr("href");
			$("form").attr("action", href).submit();
			return false;
		}
		else {
			return false;
		}
	});
});