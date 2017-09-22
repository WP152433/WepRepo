/**
 * 
 */
function menu_over(e){
 	e.setAttribute("class","nav-item active");
}

function menu_out(e){
	e.setAttribute("class","nav-item");
}

function sign_up(){
	var myModal = $('#signUpModal');
		myModal.modal();

}
// 서버에 로그인 정보 보내기
$(document).ready(function(){

	$('#LoginForm').submit(function(event){
		event.preventDefault();
	 
		var id = $("#id").val();
		var pwd = $("#pwd").val();
		console.log(id,pwd);
	 
		//서버로 post 방식 전송
		$.post("http://httpbin.org/post",
			{ id: id, pwd: pwd },
		function(data)
	 	{
	 		//서버로부터 응답을 받으면
	 		//alert(data.form.id+'님 로그인 되었습니다.');
	 		var myModal = $('#myModal');
	 		myModal.modal();
	 		myModal.find('.modal-body').text(data.form.id+'님 로그인 되었습니다.');
	 		$('#LoginForm').toggle();
	 	});
 	});
});
// 서버로 회원가입 정보 보내기
$(document).ready(function(){

	$('#SignUpForm').submit(function(event){
		event.preventDefault();
	 
		var name = $("#name").val();
		
		console.log(name);
	 
		//서버로 post 방식 전송
		$.post("http://httpbin.org/post",
			{ name: name},
		function(data)
	 	{
	 		//서버로부터 응답을 받으면
	 		//alert(data.form.id+'님 로그인 되었습니다.');
			var Modal = $('#signUpModal');
	 		var myModal = $('#successModal');
	 		myModal.modal();
	 		myModal.find('.modal-body').text(data.form.name+'님 회원가입되었습니다.');
	 		Modal.modal("hide");
	 	});
 	});
});