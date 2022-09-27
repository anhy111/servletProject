<%@page import="kr.or.ddit.app.review.vo.ReviewVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../Header.jsp"%>
<%
	List<ReviewVO> reviewList = (List<ReviewVO>) request.getAttribute("reviewList");

%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>리뷰관리</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</head>

<body>
	<div class="container">
		<div class="row mt-4">
			<div id="category" class="col-2">
				<script src="../admin/category.js"></script>
			</div>

			<div class="col-9 offset-1">

				<table class="table table-hover">
					<thead>
						<tr>
							<th scope="col">I    D</th>
							<th scope="col">제  목</th>
							<th scope="col">평  점</th>
							<th scope="col">날  짜</th>
							<th scope="col">이메일</th>
							<th scope="col">삭  제</th>
						</tr>
					</thead>

					<%
					int reviewSize = reviewList.size();
					if (reviewSize > 0) {
						for (int i = 0; i < reviewSize; i++) {
					%>

					<tr>
						<td><%=reviewList.get(i).getReviewId()%></td>
						<td><%=reviewList.get(i).getReviewTitle()%></td>
						<td><%=reviewList.get(i).getReviewRat()%></td>
						<td><%=reviewList.get(i).getReviewDate()%></td>
						<td><%=reviewList.get(i).getMemMail()%></td>
						<td><input id="check" type="checkbox" name="check" value="<%=reviewList.get(i).getReviewId()%>"/></td>
					</tr>

					<%
					}
					} else {
					%>
					<tr>
						<td colspan="6">정보가 없습니다.</td>
					</tr>
					<%
					}
					%>

				</table>
					<div style="float: right">
						<button id="delete" onclick="f_del()"
								class="btn btn-outline-primary" style="float: right">삭제</button>	
					</div>

			</div>
		</div>
	</div>
<script type="text/javascript">
var btn = document.querySelector("#check");
//var delBoxs = document.querySelectorAll("input[name=check]");
function f_del(){
	let checkedVals = []; // 빈 배열
	let queryString="";
	$("input[name=check]:checked").val((p_index,p_value)=>{
		queryString += "reviewId="+p_value+"&";
	});
	//alert(queryString);
	
	$.ajax({
		type:"get",
		url:"<%=request.getContextPath()%>/review/reviewDelete.do",
		data:queryString,
		dataType:"text",
		success:function(rslt){
			if(rslt == "OK"){
				location.href="<%=request.getContextPath()%>/review/reviewList.do";
			}
		},
		error:function(request,status,error){        
		   console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);       
		 }
	})
	
	
	// 체크된 체크박스의 value값 가져오기 
    /*
	var checkedVals = []; // 빈 배열
    for(var i=0; i< delBoxs.length; i++){
        if(delBoxs[i].checked){
            checkedVals.push(delBoxs[i].value);
        }
   }
	*/
}
</script>
</body>

</html>
<%@include file="../Footer.jsp"%>