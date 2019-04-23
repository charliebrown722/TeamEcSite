<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/purchaseHistory.css">
<link rel="stylesheet" type=text/css href="./css/header.css">
<link rel="stylesheet" type=text/css href="./css/jupiter.css">
<script type="text/javascript" src="./js/header.js"></script>
<title>商品購入履歴画面</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="contents">
		<h1>商品購入履歴画面</h1>
	</div>

	<div>
		<s:if test="!purchaseHistoryInfoDTOList.size > 0">
			<div class="message">商品購入履歴情報がありません。</div>
		</s:if>
		<s:elseif test="purchaseHistoryInfoDTOList != null">
			<table class="product-list">

				<tr>
					<th><s:label value="商品名" /></th>
					<th><s:label value="ふりがな" /></th>
					<th><s:label value="商品画像" /></th>
					<th class="nobr"><s:label value="発売会社名" /></th>
					<th><s:label value="発売年月日" /></th>
					<th><s:label value="値段" /></th>
					<th><s:label value="個数" /></th>
					<th><s:label value="合計金額" /></th>
				</tr>

				<s:iterator value="purchaseHistoryInfoDTOList">
					<tr>
						<td><s:property value="productName" /></td>
						<td><s:property value="productNameKana" /></td>
						<td><img
							src="<s:property value="imageFilePath" />/<s:property value="imageFileName" />"
							width="50px" height="50px"></td>
						<td class="nobr"><s:property value="releaseCompany" /></td>
						<td><s:property value="releaseDate" /></td>
						<td class="nobr"><s:property value="price" />円</td>
						<td class="nobr"><s:property value="productCount" />個</td>
						<td class="nobr"><s:property value="subtotal" />円</td>
					</tr>
				</s:iterator>
				<tr>
					<td colspan="8"><s:form action="DeletePurchaseHistoryAction">
							<input type="hidden" name="deleteFlg" value="1">
							<s:submit value="履歴削除" class="btn" theme="simple" />
						</s:form></td>
				</tr>
			</table>
		</s:elseif>
	</div>
</body>
</html>