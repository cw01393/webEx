/**
 * 
 */
//form에 대한 값의 검증처리 메소드
function checkVal(form){
	//alert(form.subjects); // [object RadioNodeList]
	let cnt = 0;
	for(let i=0; i<form.subjects.length; i++){
		// alert(form.subjects[i].checked); // RadioNodeList의 요소의 checked 속성은 boolean 반환
		if(form.subjects[i].checked) cnt ++;
	}
	if(cnt > 0){
		form.submit();
	}
	else{
		alert("최소 한 개 과목 이상 신청 필수");
	}
} 