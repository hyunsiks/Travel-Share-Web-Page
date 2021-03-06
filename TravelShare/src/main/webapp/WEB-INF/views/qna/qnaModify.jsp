<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QNA 작성</title>
<link
	href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp"
	rel="stylesheet">
	<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/qna_write.css">
	<script
	src="<%=request.getContextPath()%>/resources/ckeditor/ckeditor.js"></script>
</head>
<body>
	<jsp:include page="../header/top2.jsp"></jsp:include>
	<div class="qna_write">
		<div class="qna_write_form">
		<h2>카페 글수정</h2>
		<hr>
			<form id="qna_form" action="./qnaModify?qna_id=${qna_view.qna_id }" method="POST" enctype="multipart/form-data">
                    	<div>
							<input id="qnaTitle" type="text" name="title" value="${qna_view.title }">
							<input type="radio" id="cs_open" name="cs_open" value="Y" checked>
							<label for="all">공개</label>
							<input type="radio" id="cs_open" name="cs_open" value="N">
							<label for="even">비공개</label>
						</div>
	                    <div class="board_travel_mainPicture board_img">
						</div>
						<textarea rows="30" cols="30" id="noticeContent" name="content">
						${qna_view.content }
						</textarea>
						<script>
							var ckeditor_config = {
								height: 400,
								width: 860,
								resize_enaleb : false,
								enterMode : CKEDITOR.ENTER_BR,
								shiftEnterMode : CKEDITOR.ENTER_P,
								filebrowserUploadUrl : "http://localhost:8080/travelShare/board/ckUpload"
							};
							CKEDITOR.replace("noticeContent", ckeditor_config);
		
							CKEDITOR.on('dialogDefinition', function(ev) {
								var dialogName = ev.data.name;
								var dialogDefinition = ev.data.definition;
		
								switch (dialogName) {
								case 'image': //Image Properties dialog
									dialogDefinition.removeContents('Link');
									dialogDefinition.removeContents('advanced');
									break;
								}
							});
						</script>
				<input type="submit" class="qna_btn-default" value="수정완료"/>
			</form>		
		</div>
	</div>
		<jsp:include page="../footer/footer.jsp"></jsp:include>
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>	
</body>
</html>