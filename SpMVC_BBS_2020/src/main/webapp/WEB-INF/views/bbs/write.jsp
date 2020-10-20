<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />        
<style>


</style>

<script>
	$(function(){
		var toolbar = [
			['style',['bold','italic','underline'] ],
			['fontsize',['fontsize']],
			['font Style',['fontname']],
			['color',['color']],
			['para',['ul','ol','paragraph']],
			['height',['height']],
			['table',['table']],
			['insert',['link','hr','picture']],
			['view',['fullscreen','codeview']]
			
		]
		
		$("#b_content").summernote(
				{ 	lang:"ko-KR",
					width:"100%",
					height:"200px",
					toolbar : toolbar
				});
	})


</script>


<form>
	<fildset>
	
		<legend>글쓰기</legend>
		
		<div>
			<label>작성일자</label>
			<input name="b_date">
		</div>
		<div>
			<label>작성시각</label>
			<input name="b_time">
		</div>
		<div>
			<label>글쓴이</label>
			<input name="b_writer">
		</div>
		<div>
			<label>제목</label>
			<input name="b_subject">
		</div>
		<div>
			<label></label>
			<textarea id="b_content" rows="5" cols="20" name="b_content">
			</textarea>
		</div>
		<div>
			<label>이미지</label>
			<input type="file" name="file" accept="image/*">
		</div>
		<div class="button-box">
			<button type="button" id="list">리스트</button>
			<button type="button" id="save">저장</button>
		</div>
	</fildset>
</form>