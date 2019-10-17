<%@ include file="./header.jsp" %>
<div class="alert alert-warning">
		<h2>${title}</h2>
	</div>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		<table class="table table-bordered table-striped table-hover">
			<thead>
				<tr>
					<th>Items</th>
					<th>Name</th>
					<th>Quantity per unit</th>
					<th>Unit price</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${products}" var="p">
					<tr>
						<td><img src="${p.picture}" style="height: 50px;" alt="${p.name}">
						</td>
						<td>
						<a href="./edit-product?id=${p.id}">
						<i class="fa fa-pencil "></i>
						</a> 
						<span style="width: 20px; display: inline-block"></span>
						<a href="./delete-product?id=${p.id}">
						<i class="fa fa-trash-o text-right"></i>
						</a>
						<span style="width: 20px; display: inline-block"></span>
						<a href="./view-product-details?id=${p.id}">
						${p.description}
						</a>
						
						
						</td>
						<td>${p.quantityPerUnit}</td>
						<td>${p.unitPrice}</td>
					</tr>
				</c:forEach>
			
			</tbody>
		</table>
<%@ include file="./footer.jsp" %>