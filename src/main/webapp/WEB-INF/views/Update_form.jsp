<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp" %>

</head>
<body style="background-color: rgb(110,55,99);">
	<div class="container mt-3">
		<!-- <div class="p-3 mb-2 bg-dark text-dark"> -->

			<div class="card mx-auto mt-5 bg-light" style="width: 80%;">
				<div class="car-body py-5">
					<div class="row" >
						<div class="col-md-5 offset-md-3">
							<h2 class="text-center mb-5">Change your Product Details</h2>

							<form action="${pageContext.request.contextPath}/handle-product"
								method="post" >
								<input type="hidden" value="${product.pId}" name="pId" />

								<div class="form-group">
									<label for="name">Product Name</label> <input type="text"
										class="form-control" id="name" name="name"
										value="${product.name}"
										placeholder="Enter the Product Name Here">
								</div>

								<div class="form-group">

									<label for="description">Product Description</label>
									<textarea class="form-control" name="description"
										id="description" rows="5"
										placeholder="Enter The Product description">${product.description}</textarea>
								</div>

								<div class="form-group">
									<label for="product Price">Product Price</label> <input
										type="text" class="form-control" id="price" name="price"
										placeholder="Enter The Product Price" value="${product.price}">
								</div>

								<div class="container text-center">
									<a href="${pageContext.request.contextPath }/"
										class="btn btn-outline-secondary">Back</a>

									<button type="submit" class="btn btn-primary">Update</button>
								</div>


							</form>


						</div>

					</div>
				</div>

			</div>
		<!-- </div> -->
	</div>


</body>
</html>