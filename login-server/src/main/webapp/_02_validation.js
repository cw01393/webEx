function checkAgree(form){
	const need = form.nes.length;
	let cnt=0;
	for(let i=0; i<need; i++){
		if(form.nes[i].checked) cnt ++;
	}
	if(cnt === need){
		form.submit();
	}
	else{
		alert("필수항목에 모두 동의가 필요합니다");
	}
}

function checkInfo(form){
	const need = form.nes;
	let cnt = 0;
	for(let i=0; i<need.length; i++){
		if(need[i].value !== "") cnt ++;
		else{
			if(i < 4){
				document.getElementById(`n${i+1}`).style.display="block";
			}
			else if(i < 7){
				document.getElementById('n5').style.display="block";
			}
			else if(i < 8){
				document.getElementById('n6').style.display="block";
			}
			else{
				document.getElementById('n7').style.display="block";
			}
		}
	}
	if(cnt === need.length){
		form.submit();
	}
}

function checkLogin(form){
	const id = form.id.value;
	const pw = form.pw.value;

	if(id !== "" && pw !== ""){
		form.submit();
	}
}

function checkContent(form){
	const title = form.title.value;
	const content = form.content.value;
	const pw = form.pw.value;
	
	if(title !== "" && content !== "" && pw !== ""){
		form.submit();
	}
	else{
		alert("모든 필드를 채워주세요");
	}
}
