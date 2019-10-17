<%@ include file="./header.jsp"%>

<h3>Advanced search options</h3>
</hr>

<p class="lead">Search by Price Range</p>

<form action="./get-products-by-price-range" method="GET" class="form">
	<div class="form-group row">
		<lable for="min" class="col-md-2">Minimum price</lable>
		<div class="col-md-4">
			<input type="number" autofocus="autofocus" id="min" name="min" class="form-control">

		</div>

	</div>
	<div class="form-group row">
		<lable for="max" class="col-md-2">Maximum price</lable>
		<div class="col-md-4">
			<input type="number" id="max"  name="max" class="form-control">

		</div>

	</div>
	<div class="form-group row">
		<lable for="max" class="col-md-2"></lable>
		<div>
			
	<button class="btn btn-primary">Search</button>
		</div>

	</div>



</form>

<%@ include file="./footer.jsp"%>