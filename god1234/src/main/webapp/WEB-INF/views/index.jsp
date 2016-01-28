<%@ page language="java" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>
<head>
	<meta charset="utf-8" />
    <title></title>
    <link rel="Stylesheet" href="/dolbi/resources/styles/default.css" />
</head>
<body>

    <div id="pageContainer">
    
    	<c:import url="/WEB-INF/views/include/header.jsp" />
        <hr>
        <div id="content">
        	<br /><br /><br /><br /><br />
        	<h2 style='text-aling:center'>
				Hello Demo Web Site Main Page !!!
			</h2>
        </div>
        
        <div class="wrap" id="dev_wrap">
        		<h4 class ="skip"> 알바 LIST</h4>
        		<ul class="fs a7">
        		<dl>
        		<dt>
        			<a href ="#" onclick=""; return false;"></a>
        			
        		</dt>
        		<dd class="vBtn">
        				<button type="button" class="pView" id="simple">미리보기</button>
        				<a href="#" onclick="";return false;" class="dView">상세보기</a>
        			
        			</dd>
        		</dl>
        		</ul>
        
        
        </div>
    </div>
    
    	<c:import url="/WEB-INF/views/include/footer.jsp" />
    
</body>
</html>