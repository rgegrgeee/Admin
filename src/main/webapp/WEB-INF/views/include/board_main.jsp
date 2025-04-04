<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board_Admin</title>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<style>
    body { font-family: 'Arial', sans-serif; background: #fff; color: #111; margin: 0; padding: 0; }
    .wrapper { display: flex; height: 100vh; }
    .sidebar { width: 200px; background: #111; color: #fff; padding: 20px; box-sizing: border-box; }
    .sidebar h2 { font-size: 20px; margin-bottom: 20px; }
    .sidebar a { display: block; color: #ddd; text-decoration: none; margin-bottom: 10px; }
    .sidebar a:hover { color: #fff; }
    .content { flex: 1; padding: 30px; box-sizing: border-box; overflow-y: auto; }
    h3 { border-bottom: 1px solid #ccc; padding-bottom: 5px; }
    table { width: 100%; border-collapse: collapse; margin-top: 15px; }
    th, td { border: 1px solid #ccc; padding: 8px; text-align: left; }
    th { background: #f4f4f4; }
    input[type="text"], select { padding: 5px; width: 100%; box-sizing: border-box; margin-top: 5px; }
    .form-group { margin-bottom: 10px; }
    .btn { padding: 5px 10px; background: #111; color: white; border: none; cursor: pointer; }
    .btn:hover { background: #333; }
</style>
</head>
<body>
	<div class="wrapper">
		<div class="sidebar">
			<h2>게시판 관리</h2>
			<a href="#" class="menu-btn" data-target="addBoard">게시판 목록</a>
			<a href="#" class="menu-btn" data-target="boardList">게시판 등록</a>
		</div>
		<div class="content">
			<div class="section active" id="boardList">
				<h3>게시판 목록</h3>
				<table>
					<thead>
						<tr>
							<th>게시판ID</th>
							<th>게시판명</th>
							<th>관리</th>
						</tr>
					</thead>
					<tbody id="boardTable">
						
					</tbody>
				</table>
			</div>

			<div class="section active" id="addBoard">
				<h3>새로운 게시판 등록</h3>
				<form id="boardForm" action="/board/insert">
					<div class="form-group">
						<input type="text" name="boardName" placeholder="생성할 게시판의 이름 입력" />
						<button class="btn">등록</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>