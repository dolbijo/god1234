<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% String cp = request.getContextPath(); %>
<!DOCTYPE html>

<html>
<head>
    	<meta charset="utf-8" />
    	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    	<meta name="description" content="" />
    	<meta name="author" content="" />
    	<link href="<%=cp%>/resources/bootstrap/css/bootstrap.css" rel="stylesheet" />
    	<link href="<%=cp%>/resources/bootstrap/css/font-awesome.css" rel="stylesheet" />
    	<link href="<%=cp%>/resources/bootstrap/css/style.css" rel="stylesheet" />
    	
    	<script type='text/javascript'>
			function toggleCommentStatus(commentNo, edit) {
				var v = document.getElementById("commentview" + commentNo);
				var e = document.getElementById("commentedit" + commentNo);
				if (edit) {//편집 요청
					e.style.display = "block";
					v.style.display = "none";
				} else {//편집 취소
					v.style.display = "block";
					e.style.display = "none";
				}
			}
			
			function deleteComment(boardNo, commentNo, pageNo) {
				if (confirm( boardNo + "번 댓글을 삭제할까요?")) {
					location.href = "deletecomment.action?boardno=" + boardNo + 
														"&pageno=" + pageNo + 
														"&commentno=" + commentNo;
				}
			}
   
			function deleteBoard(boardNo, pageNo) {

				if (confirm(boardNo + '번 글을 삭제할까요?')) {
					location.href=
						'delete.action?boardno=' + boardNo + '&pageno=' + pageNo;
				}
			}
		</script>

</head>
	 
<body>
	<c:import url="/WEB-INF/views/include/header.jsp" />
		
		<div style="padding-top:25px;text-align:center">
		<div id="inputcontent">
		    <div id="inputmain">
		        <div class="inputsubtitle">업로드 자료 정보</div>
		        <table>
		            <tr>
		                <th>제목</th>
		                <td>${ freeboard.freeboardTitle}</td>
		            </tr>
		            <tr>
		                <th>작성자</th>
		                <td>${ freeboard.memberId}</td>
		            </tr>
		            
		            <tr>
		                <th>질문</th>
		                <td>${ freeboard.freeboardContent }</td>
		            </tr>
		        </table>
		        <div class="buttons">
		        <c:if test="${ loginuser.memberId == freeboard.memberId }">
		        	<input type="button" value="편집" style="height:25px" />
		        </c:if>
		        	<input type="button" value="취소" style="height:25px" onclick="location.href='list.action';" />
		        </div>
		    </div>
		</div>   	
	
	</div>
	

	<br /><br />
		
		<form id="commentform" 
			action="writecomment.action" method="post">
			<input type="hidden" name="freeboardNo" value="${ freeboard.freeboardNo}" />
			<input type="hidden" name="memberId" value="${ loginuser.memberId}" />
			<table style="width:600px;border:solid 1px;margin:0 auto">
	            <tr>
	                <td style="width:550px">	                	
	                    <textarea name="content" style="width:550px" rows="3"></textarea>
	                </td>
	                <td style="width:50px;vertical-align:middle;padding-right:5px;padding-left:5px">
	                	<a href="javascript:document.getElementById('commentform').submit();" style="text-decoration:none">
	                		댓글등록
	                	</a>
	                </td>
	            </tr>                    
	        </table>
        </form>        
        
        <hr align="center" style="width:600px;" />
        
        <!-------------------------------------------------------->
		
		<c:choose>
			<c:when test="${empty freeboard.comments }">
				<h4 id="nodata" style="text-align:center">
	            	작성된 댓글이 없습니다.
	        	</h4>
			</c:when>
			<c:otherwise>
				<table style="width:600px;border:solid 1px;margin:0 auto">
					<c:forEach var="comment" items="${ freeboard.comments }">
					
						<tr>
			        		<td style="padding: 10px 10px 10px 10px;text-align:left;margin:5px;border-bottom: solid 1px">
			        			
			                    ${comment.memberId }&nbsp;&nbsp;
			                    [ ${comment.regdate} ]
			                    <br /><br />
			                    <span>
			                    	<c:choose>
			                    		<c:when test="${ comment.content eq null }">
			                    			내용이 없습니다.
			                    		</c:when>
			                    		<c:otherwise>
			                    			${comment.content }
			                    		</c:otherwise>
			                    	</c:choose>
			                    </span>
			                    <br /><br />
			                    <c:set var="display" value=""/>
			                    <c:choose>
			                    <c:when test="${ loginuser.memberId eq comment.memberId  }">
			                    	<c:set var="display" value="block"/>
			                    </c:when>
			                    <c:otherwise>
			                    	<c:set var="display" value="none"/>
			                    </c:otherwise>
			                    </c:choose>
			                    
			                    <div style="display: ${display}">
			                    	<a href="javascript:toggleCommentStatus(${comment.commentNo }, true);">편집</a>
			                    	&nbsp;
			                    	<a href="javascript:deleteComment(${comment.commentNo }, ${comment.freeboardNo })">삭제</a>
			                     
			                    </div>
			                
			                	<div style="display: none">
									${comment.memberId }&nbsp;&nbsp; 
									[${comment.regdate}] 
									<br /><br />
									<form id="commenteditform${comment.commentNo}" action="updatecomment.action" method="post">
										<input type="hidden" name="freeboardno" value="${ freeboard.freeboardNo}" />
										<input type="hidden" name="commentno" value="${comment.commentNo}" />
										<textarea name="content" style="width: 600px" rows="3" maxlength="200">
											<c:if test="${ empty comment.content }">
					                    		<c:choose>
				                    				<c:when test="${ comment.content eq null }">
						                    			내용을 입력해 주세요.
						                    		</c:when>
						                    		<c:otherwise>
						                    			${comment.content }
						                    		</c:otherwise>
				                    			</c:choose>
				                    		</c:if> 
										</textarea>
									</form>
									<br />
								<div>
									<a class="btn btn-default" href="javascript:document.getElementById('commenteditform${comment.commentNo }').submit();">수정</a> 
									&nbsp; 
									<a class="btn btn-default" href="javascript:toggleCommentStatus(${comment.commentNo }, false);">취소</a>
								 
								</div>
							</div>
				
							</td>
			        	</tr>
					</c:forEach>
				</table>
			</c:otherwise>
		</c:choose>
	
		
		<br /><br /><br /><br /><br />


	<c:import url="/WEB-INF/views/include/footer.jsp" />

</body>
</html>