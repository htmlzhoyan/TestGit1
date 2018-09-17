function delConfirm(){
	return window.confirm("您确定要删除一条记录码？");	
}
function loginOut(){
	$.ajax({
		type:'get',
		url:"loginOut",
		dataType:"json",
		success:function(data){
			if(data.code==1){
				window.location.href =  "login.html"
			}
			
		}
	})
}