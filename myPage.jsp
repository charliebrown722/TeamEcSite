<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/mypage.css">
<link rel="stylesheet" type=text/css href="./css/header.css">
<link rel="stylesheet" type=text/css href="./css/jupiter.css">
<script type="text/javascript" src="./js/header.js"></script>

<title>マイページ</title>

</head>
<body>
	<jsp:include page="header.jsp" />

	<div class="contents">
		<h1>マイページ画面</h1>
	</div>
	<s:if test="familyName!=null && !familyName.isEmpty()">
		<div>
			<table class="user-list">
				<tr>
					<th>姓</th>
					<td><s:property value="familyName" /></td>
				</tr>

				<tr>
					<th>名</th>
					<td><s:property value="firstName" /></td>
				</tr>

				<tr>
					<th>ふりがな</th>
					<td><s:property value="familyNameKana" escape="false" /><span>
							<s:property value="firstNameKana" />
					</span></td>
				</tr>

				<tr>
					<th>性別</th>
					<td><s:if test="sex==1">女性</s:if> <s:else>男性</s:else></td>
				</tr>

				<tr>
					<th>メールアドレス</th>
					<td><s:property value="email" /></td>
				</tr>

			</table>
			<s:form action="PurchaseHistoryAction">

				<input type="hidden" name="Purchase" value="1">

				<div class="submit-btn-box">
					<s:submit value="購入履歴"  class="btn"/>
				</div>
			</s:form>
		</div>
	</s:if>
	<s:else>
		<div class="message">ユーザー情報がありません。</div>
	</s:else>
</body>
</html>
