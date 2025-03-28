<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 관리</title>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<style>
body {
	font-family: 'Segoe UI', sans-serif;
	background: #f4f4f4;
	margin: 0;
	color: #333;
}

.container {
	display: flex;
	height: 100vh;
}

.sidebar {
	width: 200px;
	background-color: #222;
	color: #fff;
	padding: 20px;
}

.sidebar a {
	color: #ccc;
	display: block;
	margin: 10px 0;
	text-decoration: none;
}

.sidebar a:hover {
	color: #fff;
}

.main-content {
	flex: 1;
	padding: 20px;
	background: #fff;
}

.section {
	display: none;
}

.section.active {
	display: block;
}

input, select, button {
	margin: 5px 0;
	padding: 8px;
	width: 100%;
	border: 1px solid #ccc;
	background: #f9f9f9;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
}

th, td {
	padding: 10px;
	border-bottom: 1px solid #ccc;
}
</style>
</head>
<body>
	<div class="container">
		<div class="sidebar">
			<h3>사원 관리</h3>
			<a href="#" data-target="create">사원 등록</a> <a href="#"
				data-target="read">사원 조회</a> <a href="#" data-target="update">사원
				수정</a> <a href="#" data-target="delete">사원 삭제</a>
		</div>
		<div class="main-content">

			<div id="create" class="section active">
				<h2>사원 등록</h2>
				<form action="/Member/add" method="post">
					<input type="text" name="emp_id" placeholder="사원 ID" required /> <input
						type="text" name="emp_pw" placeholder="비번" required /> <input
						type="text" name="emp_name" placeholder="이름" required /> <input
						type="text" name="emp_rrn" placeholder="주민번호" required /> <input
						type="text" name="emp_phone" placeholder="전호번호" required /> <input
						type="email" name="emp_email" placeholder="이메일" required />
					<hr>
					<input type="text" name="postcode" placeholder="우편번호" /> <input
						type="text" name="address1" placeholder="주소1" /> <input
						type="text" name="address2" placeholder="주소2" /> <input
						type="text" name="emp_deptId" placeholder="부서 ID" /> <input
						type="date" name="hire_date" placeholder="입사일" />
					<button type="submit">등록</button>
				</form>
			</div>

			<div id="read" class="section">
				<h2>사원 목록</h2>
				<table>
					<thead>
						<tr>
							<th>ID</th>
							<th>이름</th>
							<th>이메일</th>
							<th>부서</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="member" items="${memberList}">
							<tr>
								<td>${member.memberId}</td>
								<td>${member.name}</td>
								<td>${member.email}</td>
								<td>${member.deptId}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

			<div id="update" class="section">
				<h2>사원 정보 수정</h2>
				<form action="updateMember.do" method="post">
					<input type="text" name="memberId" placeholder="사원 ID (기존)"
						required /> <input type="text" name="name" placeholder="새 이름" />
					<input type="email" name="email" placeholder="새 이메일" /> <input
						type="text" name="deptId" placeholder="새 부서 ID" />
					<button type="submit">수정</button>
				</form>
			</div>

			<div id="delete" class="section">
				<h2>사원 삭제</h2>
				<form action="deleteMember.do" method="post">
					<input type="text" name="memberId" placeholder="삭제할 사원 ID" required />
					<button type="submit">삭제</button>
				</form>
			</div>

		</div>
	</div>

	<script>
		$(document).ready(function() {
			$('.sidebar a').click(function(e) {
				e.preventDefault();
				var target = $(this).data('target');
				$('.section').removeClass('active');
				$('#' + target).addClass('active');
			});
			
			function loadMembers() {
		        $.ajax({
		            url: "/Member/selectAll",
		            method: "GET",
		            dataType: "json",
		            success: function (data) {
		                var tbody = $("#read tbody");
		                tbody.empty(); 
		                data.forEach(function (member) {
		                    var row = `<tr>
		                       <td>${member.emp_id}</td>
		                       <td>${member.emp_pw}</td>
		                       <td>${member.emp_name}</td>
		                       <td>${member.emp_rrn}</td>
		                       <td>${member.emp_email}</td>
		                       <td>${member.postcode}</td>
		                       <td>${member.address1}</td>
		                       <td>${member.address2}</td>
		                       <td>${member.emp_deptId}</td>
		                       <td>${member.hire_date}</td>
		                    </tr>`;
		                    tbody.append(row);
		                });
		            }
		        });
		    }
		    $('.sidebar a[data-target="read"]').click(function() {
		        loadMembers();
		    });
		});
		
		
	</script>
</body>
</html>