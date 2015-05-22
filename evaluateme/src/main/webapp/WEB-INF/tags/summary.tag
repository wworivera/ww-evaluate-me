<%@ tag display-name="summary" description="Summary"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>


<div class="panel panel-warning pull-right">


	<div class="panel-heading">
		<s:message code="custumer_summary_title" />
	</div>
	<div class="bs-example">
		<div class="panel-group">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h6 class="panel-title">
						<a data-toggle="collapse" href="#collapseOne">Información de
							Cliente</a>
					</h6>
				</div>
				<div id="collapseOne" class="panel-collapse collapse in">

					<ul class="list-group">
						<li class="list-group-item list-group-item-success"><span
							class="label label-default">General</span>
							<p>
							<ul class="list-group">

								<li class="list-group-item">Dish Conv. Id:21345</li>
								<li class="list-group-item">Cops Id: 30579</li>
								<li class="list-group-item">Nombre: INTRAWAY IPTV</li>

							</ul>

							<p></li>
						<li class="list-group-item list-group-item-success"><span
							class="label label-default">Dirección Física</span>
							<p>
							<ul class="list-group">

								<li class="list-group-item">1110 MARBELLA CAL</li>
								<li class="list-group-item">PR CAROLINA 00987 0000</li>


							</ul>

							<p></li>
						<li class="list-group-item list-group-item-success"><span
							class="label label-default">Dirección de Facturación</span>
							<p>
							<ul class="list-group">

								<li class="list-group-item">PO Box 56 PO BOX 56</li>
								<li class="list-group-item">Puerto Rico SAN JUAN 00902 0998</li>

							</ul>

							<p></li>

						<li class="list-group-item list-group-item-success"><span
							class="label label-default">Teléfonos</span>
							<p>
							<ul class="list-group">
								<li class="list-group-item">Casa:7879388999</li>
								<li class="list-group-item">Cel:7878987654</li>
								<li class="list-group-item">Oficina:7879383499</li>

							</ul>

							<p></li>
					</ul>

				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" href="#collapseTwo">Otra Información</a>
					</h4>
				</div>

				<div id="collapseTwo" class="panel-collapse collapse">
					<ul class="list-group">
						<li class="list-group-item list-group-item-success"><span
							class="label label-default">Info</span>
							<p>
							<ul class="list-group">
								<li class="list-group-item">Tarjeta de Calificación:</li>
								<li class="list-group-item">Nombre:</li>
								<li class="list-group-item">Cita de Llegada</li>

							</ul>

							<p></li>
					</ul>

				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" href="#collapseThree">Precios</a>
					</h4>
				</div>
				<div id="collapseThree" class="panel-collapse collapse">

					<ul class="list-group">
						<li class="list-group-item list-group-item-success"><span
							class="label label-default">$</span>
							<p>
							<ul class="list-group">
								<li class="list-group-item">Cargos Mensuales:10000</li>
								<li class="list-group-item">Ahorros Mensuales:2344</li>
								<li class="list-group-item">Otros Cargos: 13443</li>

							</ul>
							<p></li>
					</ul>

				</div>
			</div>
		</div>
	</div>

	<div class="panel-footer">Panel footer</div>
</div>
