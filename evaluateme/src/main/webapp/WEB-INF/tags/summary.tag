<%@ tag display-name="summary" description="Summary"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<!-- custumer_summary-->

<div class="panel panel-warning pull-right">
<!-- 

	private String presentationID;
	private String presentationName;
	private String presenterName;
	private String company;
	private String RTimeInterest; //promedio de los rates de las personas
	private String startTime;
	private String endTime;
	private String evalTime; //to long, to short
	private String topic;


 -->

	<div class="panel-heading">
		Nombre de la presentación
	</div>
	<div class="bs-example">
		<div class="panel-group">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h6 class="panel-title">
						<a data-toggle="collapse" href="#collapseOne">Summary</a>
					</h6>
				</div>
				<div id="collapseOne" class="panel-collapse collapse in">

					<ul class="list-group">
						<li class="list-group-item list-group-item-success"><span
							class="label label-default">Presentation Info</span>
							<p>
							<ul class="list-group">

								<li class="list-group-item">${summary.presentationName}</li>
								<li class="list-group-item">${summary.presenterName}</li>
								<li class="list-group-item">${summary.company}</li>
								<li class="list-group-item">${summary.topic}</li>

							</ul>

							<p></li>
						<li class="list-group-item list-group-item-success"><span
							class="label label-default">Otra Parte</span>
							<p>
							<ul class="list-group">

								<li class="list-group-item">PArtes</li>
								<li class="list-group-item">Partes</li>


							</ul>

							<p></li>
						

						
					</ul>

				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" href="#collapseTwo">Feedback</a>
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
			
		</div>
	</div>

	<div class="panel-footer">Panel footer</div>
</div>

