<div class="col-md-12">
	<h3>Student List</h3>
	<a href="#!/create" class="btn btn-default pull-right">Create</a>
	<table class="table">
		<thead>
			<tr>
				<th width="1%">ID</th>
				<th width="20%">Name</th>
				<th width="10%">Age</th>
				<th width="20%">Address</th>
				<th width="15%"></th>
			</tr>
		</thead>
		<tbody>
			<tr ng-repeat="student in students">
				<td>{{student.id}}</td>
				<td>{{student.name}}</td>
				<td>{{student.age}}</td>
				<td>{{student.address}}</td>
				<td>
					<a class="glyphicon glyphicon-edit" title="Edit"
					href="#!/edit/{{student.id}}"></a> 
					<span class="glyphicon glyphicon-trash" title="Delete"
					ng-click="studentCtrl.deleteStudent(student.id)"></span></td>
			</tr>
		</tbody>
	</table>
</div>