<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />        


<style>
section#bbs-detail-header {
	width: 50%;
	border: 1px solid blue;
	margin: 20px auto;
	display: flex;
	box-shadow: 2px 2px 2px rgba(0,0,0,0.5);
}

section#bbs-detail-header article:first-child {
	flex: 1;
}

section#bbs-detail-header article:last-child {
	flex:2;
}

</style>
<script>


</script>
<section id="bbs-detail-header">
	<article>
		<a href="${rootPath}/update/${BBSVo.b_file}" target="_new">
			<img src="${rootPath}/upload/${BBSVO.b_file}" width="200px">
		</a>
	</article>
	<article>
		<div class="title">제목</div><div class="content">${BBSVO.b_subject}</div>
		<div class="title">작성일시</div ><div class="content">${BBSVO.b_date}</div>
		<div class="title">작성자</div><div class="content">${BBSVO.b_write}</div>
	</article>
</section>
<section id="bbs-detail-body">
	${BBSVO.b_content}
</section>
<section id="bbs-button-box">
	<button class="list">리스트</button>
	<button class="update">수정</button>
	<button class="delete">삭제</button>
</section>
<style>
section#images-box{
	width: 50%;
	margin:10px auto;
	padding: 5px;
}

section#images-box img{
	margin: 3px;
	border-radius: 20px;

}


</style>
<section id="images-box">
	<c:if test="${not empty BBSVO.images}">
		<c:forEach items="${BBSVO.images}" var="image">
			<img src="${rootPath}/update/${image.i_file_name}" height="100px">
		</c:forEach>
	</c:if>


</section>