function checkVal(form){
	const required = form.required;
	
	let check = required.length;
	let cnt = 0;
	for(let i=0; i<required.length; i++){
		if(required[i].checked === true){
			cnt ++;
		}
	}
	if(cnt === check){
		form.submit();
	}
	else{
		alert("필수항목에 동의가 필요합니다");
	}
}

function checkInfo(form){
	const id = form.id.value;
	const pw = form.pw.value;
	
	if(id === "" || pw === ""){
		alert("필수항목을 채워주세요");
	}
	else{
		form.submit();
	}
}
