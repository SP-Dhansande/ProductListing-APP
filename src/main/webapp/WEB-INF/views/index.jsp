<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>

</head>
<body style="background-color: rgb(110,55,99);">

	<div class="container mt-3">

		<div class="card mx-auto mt-5 " style="width: 80%;">
			<div class="car-body py-5">
				<div class="row">
					<div class="col-md-12">
						<h1 class="text-center mb-3">Welcome To ProductListing App</h1>
						<p class="font-weight-bold text-center">Simplify your product listings.</p>

						<table class="table">
							<thead class="thead-dark">
								<tr>
									<th scope="col">ProductId</th>
									<th scope="col">Product Name</th>
									<th scope="col">Description</th>
									<th scope="col">Price</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
								<!-- var means variable -->
								<c:forEach items="${products}" var="p">
									<tr>
										<th scope="row">TECH${p.pId}</th>
										<td>${p.name}</td>
										<td>${p.description}</td>
										<td class="font-weight-bold">&#x20B9;${p.price}</td>
										<td><a href="delete/${p.pId}">
										<!-- delete -->
										<i class="fa-solid fa-trash text-danger" style="font-size: 25px;"></i></a> 
										<!-- update -->
										<a href="update/${p.pId}"> <i class="far fa-edit"
												style="font-size: 25px;"></i></a></td>
									</tr>
								</c:forEach>
							</tbody>


						</table>

						<div class="container text-center">

							<a href="add-product" class="btn btn-outline-success">Add
								Product</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>