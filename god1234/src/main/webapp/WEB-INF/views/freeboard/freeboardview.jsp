<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% String cp = request.getContextPath(); %>
<%
        pageContext.setAttribute("cr", "\r");  // Space
        pageContext.setAttribute("cn", "\n");  // Enter
        pageContext.setAttribute("crcn", "\r\n");  // Space, Enter
        pageContext.setAttribute("br", "<br/>");  // <br> tag
 %>
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
			
			function deleteComment(boardNo, commentNo) {
				if (confirm( boardNo + "번 댓글을 삭제할까요?")) {
					location.href = "deletecomment.action?freeboardNo=" + boardNo +
														"&commentNo=" + commentNo;
				}
			}
		</script>

</head>
	 
<body>
	<c:import url="/WEB-INF/views/include/header.jsp" />
	<div class="content-wrapper">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h4 class="page-head-line">알바 이야기 나눔터</h4>
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-12">
					<div class="alert alert-success">
		            	<h3 align="center"><b>${ freeboard.freeboardTitle}</b></h3>
		            </div>
				</div>
				
				<div class="col-md-12">
					<table style="width: 80%;text-align: left;border: 0px">
						<tr>
			                <th style="width:66px">작성자</th>
			                <td>${ freeboard.memberId}</td>
			                <th style="width:66px">작성일</th>
			                <td>${ freeboard.freeboardRegDate}</td>
			                <th style="width:66px">조회수</th>
			                <td>${ freeboard.freeboardReadCount}</td>
		            	</tr>
					</table>
				</div>
				
				<div class="col-md-12">
	               	<hr />
	                ${fn:replace(freeboard.freeboardContent, cn, br)}
                </div>
                
                <div class="buttons" style="margin: 40px 0 60px 0;" align="center">
                	<c:if test="${ loginuser.memberId == freeboard.memberId }">
		        		<input type="button" value="편집" class="btn btn-info" />
		        	</c:if>
                </div>
			</div>
			
			<br /><br />
			<div class="row">
				<div class="col-md-12">
					<hr />
					<div class="form-group has-error">
						<c:if test="${ loginuser.memberType eq 'individual' }">
							<form id="commentform" action="writecomment.action" method="post" style="padding-left: 200px;padding-right: 200px;">
								<input type="hidden" name="freeboardNo" value="${ freeboard.freeboardNo}" />
								<input type="hidden" name="memberId" value="${ loginuser.memberId}" />
								<table style="border:0px">
									<tr>
										<td>
											<textarea name="content" style="width:650px" rows="3"></textarea>
								        </td>
								        <td style="padding-left: 20px;">
								        	<a href="javascript:document.getElementById('commentform').submit();" class="btn btn-info">댓글등록</a>
		        						</td>
	        						</tr>
	        					</table>
	        				</form>   
	       				 </c:if>
       				 </div>
        			<hr/>
        		</div>
        		
        		<div class="col-md-12">
        		<!-------------------------------------------------------->
					<c:set var="commentlength" value="${fn:length(freeboard.comments) }"/>
					<c:choose>
						<c:when test="${commentlength == 0 }">
							<h4 id="nodata" style="text-align:center">
				            	작성된 댓글이 없습니다.
				        	</h4>
						</c:when>
						<c:otherwise>
							<c:forEach var="comment" items="${ freeboard.comments }">
								<div class="panel panel-success" id='commentview${comment.commentNo }'>
	                        		<div class="panel-heading">
	                            		${comment.memberId }&nbsp;&nbsp;[ ${comment.regdate} ]
	                        		</div>
	                        		<div class="panel-body">
	                        			<c:choose>
								            <c:when test="${ comment.content ne null }">
								            	${fn:replace(comment.content, cn, br)}
								            </c:when>
							            </c:choose>
	                        		</div>
	                        		<div class="panel-footer">
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
								            <a href="javascript:toggleCommentStatus(${comment.commentNo }, true);" class="btn btn-info">편집</a>
								            &nbsp;
								            <a href="javascript:deleteComment(${comment.freeboardNo }, ${comment.commentNo })" class="btn btn-info">삭제</a>
							            </div>
	                        		</div>
	                    		</div>
	                    		
	                    		<div class="panel panel-primary" id='commentedit${comment.commentNo }' style="display: none">
									<div class="panel-heading">
										${comment.memberId }&nbsp;&nbsp;[${comment.regdate}] 
									</div>
									<div class="panel-body">
										<div class="form-group has-error">
											<form id="commenteditform${comment.commentNo}" action="updatecomment.action" method="post">
												<input type="hidden" name="freeboardNo" value="${ freeboard.freeboardNo}" />
												<input type="hidden" name="commentNo" value="${comment.commentNo}" />
												<textarea name="content" style="width:650px" rows="3">
											        <c:choose>
										            	<c:when test="${ comment.content ne null }">${fn:replace(comment.content, cn, br)}</c:when>
												    </c:choose>
									            </textarea>
											</form>
										</div>
									</div>
									<div class="panel-footer">
										<a class="btn btn-default" href="javascript:document.getElementById('commenteditform${comment.commentNo }').submit();" class="btn btn-info">수정</a> 
												&nbsp; 
										<a class="btn btn-default" href="javascript:toggleCommentStatus(${comment.commentNo }, false);" class="btn btn-info">취소</a>
									</div>
								</div>
	                    	</c:forEach>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</div>

	<c:import url="/WEB-INF/views/include/footer.jsp" />

</body>
</html>