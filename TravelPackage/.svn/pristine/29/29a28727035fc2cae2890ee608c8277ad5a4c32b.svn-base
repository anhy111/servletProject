<%@page import="kr.or.ddit.app.qna.vo.QnaVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../Header.jsp"%>
<%
	QnaVO qv = (QnaVO) request.getAttribute("qnaVO");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 상세</title>
</head>
<body>
	<div class="container">
		<div class="row mt-4">
			<div id="category" class="col-2 b">
				<script src="./category.js"></script>
			</div>
			<div id="content" class="col-9 offset-1 b">
				<table class="table table-hover">
					<tr>
						<td>답변상태</td>
						<td><%=qv.getQnaState()%></td>
					</tr>
					<tr>
						<td>제목</td>
						<td><%=qv.getQnaTitle()%></td>
					</tr>
					<tr>
						<td>내용</td>
						<td><%=qv.getQnaCont()%></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td><%=qv.getMemMail()%></td>
					</tr>

					<button onclick="location.href='../qna/qnaList.do'" class="col-1 btn btn-outline-primary" style="float:reft" cursorshover:"true">목록</button>
					<button onclick="location.href='../qna/qnaUpdate.do?qnaNo=<%=qv.getQnaNo()%>'"class="col-1 btn btn-outline-primary" style="float:reft" cursorshover:"true">수정</button>
					<button onclick="location.href='delete.do?qnaNo=<%=qv.getQnaNo()%>'" class="col-1 btn btn-outline-primary" style="float:reft" cursorshover:"true">삭제</button>
					<!-- 
					 <td colspan="2"><a href="qnaList.do">[목록]</a> 
					<a href="qnaUpdate.do?qnaNo=<%=qv.getQnaNo()%>">[수정]</a> 
					<a href="delete.do?qnaNo=<%=qv.getQnaNo()%>">[삭제]</a></td>
					-->
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
<%@include file="../Footer.jsp"%>