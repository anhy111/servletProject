<%@page import="kr.or.ddit.app.common.vo.AtchFileVO"%>
<%@page import="kr.or.ddit.app.review.vo.ReviewVO"%>
<%@page import="java.util.List"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../Header.jsp"%>
<%
	List<ReviewVO> reviewList = (List<ReviewVO>) request.getAttribute("reviewList");
	List<List<AtchFileVO>> atchFileList = 
	(List<List<AtchFileVO>>)request.getAttribute("atchFileList");
%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>리뷰관리</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<style type="text/css">
	.myform fieldset{
	    display: inline-block;
	    direction: rtl;
	    border:0;
	}
	.myform fieldset legend{
	    text-align: right;
	}
     .myform input[type=radio]{
	    display: none;
	}
	.myform label{
	    font-size: 1.5em;
	    color: transparent;
	    text-shadow: 0 0 0 #f0f0f0;
	}
	.myform input[type=radio]:checked ~ label{
	    text-shadow: 0 0 0 #58CCFF;
	}

</style>
</head>

<body>
	<div class="container">
		<div class="row mt-4">
			<div id="category" class="col-2">
				<script src="../admin/category.js"></script>
			</div>

			<div class="col-9 offset-1">

				<table class="table table-hover ">


					<%
					int reviewSize = reviewList.size();
					if (reviewSize > 0) {
						for (int i = 0; i < reviewSize; i++) {
					%>

					<tr>					
						<td><%=reviewList.get(i).getReviewId()%></td>
						<td>
						
						<small  style="display:inline-block">
							<div class="text-center myform" style="display:inline-block">
									<span><fieldset  style="display:inline-block">
									<%if(reviewList.get(i).getReviewRat().equals("5")){%>
										<input type="radio"	name="reviewRat<%= i %>" value="5" checked="checked" disabled="disabled"><label for="rate1">★</label>
										<input type="radio" name="reviewRat<%= i %>" value="4" disabled="disabled"><label for="rate2">★</label> 
										<input type="radio" name="reviewRat<%= i %>" value="3" disabled="disabled"><label for="rate3">★</label> 
										<input type="radio" name="reviewRat<%= i %>" value="2" disabled="disabled"><label for="rate4">★</label> 
										<input type="radio" name="reviewRat<%= i %>" value="1" disabled="disabled"><label for="rate5">★</label>
										<br>
									<%} else if(reviewList.get(i).getReviewRat().equals("4")){%>
										<input type="radio"	name="reviewRat<%= i %>" value="5"  disabled="disabled"><label for="rate1">★</label>
										<input type="radio" name="reviewRat<%= i %>" value="4"  checked="checked" disabled="disabled"><label for="rate2">★</label> 
										<input type="radio" name="reviewRat<%= i %>" value="3"  disabled="disabled"><label for="rate3">★</label> 
										<input type="radio" name="reviewRat<%= i %>" value="2"  disabled="disabled"><label for="rate4">★</label> 
										<input type="radio" name="reviewRat<%= i %>" value="1"  disabled="disabled"><label for="rate5">★</label>
										<br>
									<%} else if(reviewList.get(i).getReviewRat().equals("3")){%>
										<input type="radio"	name="reviewRat<%= i %>" value="5" ><label for="rate1">★</label>
										<input type="radio" name="reviewRat<%= i %>" value="4" ><label for="rate2">★</label> 
										<input type="radio" name="reviewRat<%= i %>" value="3"  checked="checked"><label for="rate3">★</label> 
										<input type="radio" name="reviewRat<%= i %>" value="2" ><label for="rate4">★</label> 
										<input type="radio" name="reviewRat<%= i %>" value="1" ><label for="rate5">★</label>
										<br>
									<%} else if(reviewList.get(i).getReviewRat().equals("2")){%>
										<input type="radio"	name="reviewRat<%= i %>" value="5"  disabled="disabled"><label for="rate1">★</label>
										<input type="radio" name="reviewRat<%= i %>" value="4"  disabled="disabled"><label for="rate2">★</label> 
										<input type="radio" name="reviewRat<%= i %>" value="3"  disabled="disabled"><label for="rate3">★</label> 
										<input type="radio" name="reviewRat<%= i %>" value="2"  checked="checked" disabled="disabled"><label for="rate4">★</label> 
										<input type="radio" name="reviewRat<%= i %>" value="1"  disabled="disabled"><label for="rate5">★</label>
										<br>
									<%} else if(reviewList.get(i).getReviewRat().equals("1")){%>
										<input type="radio"	name="reviewRat<%= i %>" value="5" ><label for="rate1">★</label>
										<input type="radio" name="reviewRat<%= i %>" value="4" ><label for="rate2">★</label> 
										<input type="radio" name="reviewRat<%= i %>" value="3" ><label for="rate3">★</label> 
										<input type="radio" name="reviewRat<%= i %>" value="2" ><label for="rate4">★</label> 
										<input type="radio" name="reviewRat<%= i %>" value="1"  checked="checked"><label for="rate5">★</label>
										<br>
									<% }%>
									</fieldset>
									</span>
								</div>
								<%=reviewList.get(i).getMemMail()%>  <%=reviewList.get(i).getReviewDate()%>
							</small>
							<p><%=reviewList.get(i).getReviewTitle()%> </p>
							<p class="fs-5"><%=reviewList.get(i).getReviewCont() %></p>
						
						</td>
						<td width="50">
							<%
							if(atchFileList.get(i) == null || atchFileList.get(i).isEmpty()){
							%>
								<img src="/TravelPackage/image/icon.png" style="width: 250px; height: 190px">
							<%	
							} else{ %>
								<img src="<%=request.getContextPath() + File.separator%>review/<%=atchFileList.get(i).get(0).getAtchFileDeSav()%>" >
							<%
							}
							%>
						</td>
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