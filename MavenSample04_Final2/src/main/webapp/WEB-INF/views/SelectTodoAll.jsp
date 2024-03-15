<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!-- 1.request영역에 저장된 정보를 가져오시오. -->

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/Sortable/1.14.0/Sortable.min.js" 
         integrity="sha512-zYXldzJsDrNKV+odAwFYiDXV2Cy37cwizT+NkuiPGsa9X1dOz04eHvUWVuxaJ299GvcJT31ug2zO4itXBjFx4w==" 
         crossorigin="anonymous" 
         referrerpolicy="no-referrer">
   </script>
   <!-- CSS 파일 링크 -->      
   <link rel="stylesheet" href="assets/css/Todolist.css" />
		
	</head>
	<body>
		<caption><h2>Todolist관리</h2></caption>
		<a href="goaddTodo.do">일정추가</a>
		<h1>${todoTitle}</h1>
    <div class="container">
        <div class="column" id="insertmemo">
            <h1>Todo</h1>
               <c:forEach items="${TodoList}" var="todo">
               	<c:if test="${todo.do_Status=='해야 할 일'}">
               	<div class="list-group-item" draggable="true">
               		 <form action="todoDel.do" method="post">
                           ${todo.content} 
                           <br>
                           ${todo.do_startDate} ~ ${todo.do_endDate}
                           <br>
                           ${todo.do_startTime} ~ ${todo.do_endTime}
                           <input type="hidden" id="status" value="${todo.do_Status}">
                           <input type="hidden" name="txt" value="${todo.content}">
                           <input type="submit" value="삭제">
                     </form>     
                        </div>
               	</c:if>
                        
             </c:forEach>                                                                         
        </div>

        <div class="column">
            <h1>InProgress</h1>
               <c:forEach items="${TodoList}" var="todo">
                     <c:if test="${todo.do_Status=='진행 중'}">
               	<div class="list-group-item" draggable="true">
                        <form action="todoDel.do" method="post">
                           ${todo.content} 
                           <br>
                           ${todo.do_startDate} ~ ${todo.do_endDate}
                           <br>
                           ${todo.do_startTime} ~ ${todo.do_endTime}
                           <input type="hidden" id="status" value="${todo.do_Status}">
                           <input type="hidden" name="txt" value="${todo.content}">
                           <input type="submit" value="삭제">
                     	</form>  
                        </div>
               	</c:if>
                </c:forEach>                                 
        </div>
        
        <div class="column">
            <h1>Done</h1>
               <c:forEach items="${TodoList}" var="todo">
                     <c:if test="${todo.do_Status=='완료'}">
               	<div class="list-group-item" draggable="true">
                     <form action="todoDel.do" method="post">
                           ${todo.content} 
                           <br>
                           ${todo.do_startDate} ~ ${todo.do_endDate}
                           <br>
                           ${todo.do_startTime} ~ ${todo.do_endTime}
                           <input type="hidden" id="status" value="${todo.do_Status}">
                           <input type="hidden" name="txt" value="${todo.content}">
                           <input type="submit" value="삭제">
                     </form>  
                        </div>
               	</c:if>
                </c:forEach>               
        </div>
                 
            
            
    </div>
    
    <!-- 스크립트  -->
   <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
   <script src="assets/js/dragAble.js"></script>
   <script type="text/javascript">
   $(".list-group-item").on("dragstart",function(){
		// 2)input 데이터 불러오고 변수에 저장
		let sendData = {"sendData":$("#status").val()};
		// 3)console에 출력
		
			console.log(sendData);
	// 4) 비동기 통신을 사용하여 Servlet으로 데이터 전송
	$.ajax({
		// 보내줄 url 
		url : "Ajax",
		// 보내줄 data
		data : sendData,
		// 전송방식 지정
		type : 'get',
		// 데이터타입
		dataType:'json',
		// 성공했을 때 실행할 함수 지정
		success : (res) => {
			console.log("데이터 전송 성공!");
			console.log("받아온 데이터 >> ", res);
		},
		// 실패했을 때 실행할 함수 지정
		error : () => {
			console.log("데이터 전송 실패!");
		}
		
	})
   
   })
   
   
   </script>
   <!-- 스크립트 끝 -->
	</body>
</html>

