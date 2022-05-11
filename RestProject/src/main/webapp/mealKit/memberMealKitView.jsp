<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
String now = (String) request.getAttribute("now");
String nowTime1 = (String) request.getAttribute("nowTime1");
%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon"
	href="/docs/5.1/assets/img/favicons/apple-touch-icon.png"
	sizes="180x180">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png"
	sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png"
	sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
<link rel="mask-icon"
	href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg"
	color="#7952b3">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<meta name="theme-color" content="#7952b3">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
	
	   <script src="./assets/js/time.js"></script>
<style type="text/css">
p {
	font-family: 'Apple SD Gothic Neo Bold';
	src: url('Apple SD Gothic Neo Bold.ttf') format('truetype');
}


.menuimg{
  width: 150PX;
  height: 100PX;
  object-fit: cover;
}


body {
	font-family: 'Apple SD Gothic Neo Bold';
}

.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
	
.date{
    font-size: 12px; 
    color: rgb(0, 0, 0);  /* 흰색 */
}
.time{
    font-size: 12px;
    color: rgb(0, 0, 0);  /*보라색 */
}	
	
	
}
</style>
<title>예약장바구니</title>
</head>
<script type="text/javascript">

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/shortRent.css">
<link type="text/css" href="${pageContext.request.contextPath}/css/jquery.simple-dtpicker.css" rel="stylesheet" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.simple-dtpicker.js"></script>
<script type="text/javascript">

</script>

<div><jsp:include page="mealKitHeader.jsp" /></div>
<section></section>




<section class="py-5 text-center container-fluid bg-light shadow-lg">
	<div class="row py-lg-5 bg-light ">
		<div class="col-lg-6 col-md-8 mx-auto bg-light ">
			<br> <br> <br>
			<h1 class="fw-light">MealKit</h1>
			<p class="lead text-muted">밀키트 구매 내역입니다.</p>
			<p>
				<a href="${pageContext.request.contextPath}/mealKit.KIOSK"
					class="btn btn-primary my-2">다른메뉴 구매로 돌아가기</a> <a
					href="memberMain.jsp" class="btn btn-secondary my-2">홈으로가기</a>
			</p>
			<br> <br>
		</div>
	</div>
</section>

<br>
<br>

		<table class="table table-sm">

			<tr>
				<th><h2>밀키트 구매 정보</h2></th>
			</tr>
		</table>


		
		


		<div class="px-6 py-5 my-5 text-center">
			<table class="table" >
			
				<tr>
					<td> </td>
					
					<td>주문번호</td>
					<td>주문시간</td>
					<td>주문상태</td>
					<td>주문금액</td>
				


				</tr>
				<c:forEach var="myOrderList" items="${myOrderList }" varStatus="status">
					<tr>
							<td> </td>
						<td>
							<p class="btn btn-secondary my-2">	${myOrderList.meal_order_num }</p> <br>
							<small><small>상세정보보기</small></small></td>	
					
		
					 <td>${myOrderList.meal_order_date}</td>
					<td>
                        <c:choose>
									<c:when test="${myOrderList.meal_order_status eq 'order' }">배송승인대기</c:when>
									<c:when test="${myOrderList.meal_order_status eq 'get' }">배송승인완료</c:when>
									<c:otherwise>주문취소</c:otherwise>
								</c:choose>
                     </td>
                     <td>
				
                  ${myOrderList.meal_totalMoney }
                  
                     </td>
               
                     <tr>
             	<c:if test="${((status.index + 1) mod 1) eq 0 }">
                     
					</tr>
					<tr>
						</c:if>
				</c:forEach>
		</tr>
	
	
		
			</table>
					
			
			<c:if test="${myOrderList eq null  }">
			<div>예약한 내역이 없습니다.</div>
		</c:if>
		</div>
			
	

	   <span>

   </span>

	






<footer class="text-muted py-5">
	<div class="container">
		<p class="float-end mb-1">
			<a href="#">Back to top</a>
		</p>
		<p class="mb-1">SoulRest is &copy; gsb,pbg,bsc</p>

	</div>
</footer>


<script src="/docs/5.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>


</body>
</body>
</html>