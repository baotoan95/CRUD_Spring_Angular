<div class="col-md-8 col-md-offset-2">
	<form class="form-horizontal" ng-submit="studentCtrl.submit()">
		<input type="hidden" ng-model="student.id" />
		<div class="form-group">
			<label for="name" class="col-sm-2 control-label">Name</label>
			<div class="col-sm-10">
				<input type="text" ng-model="student.name" class="form-control"
					id="name" placeholder="Name">
			</div>
		</div>
		<div class="form-group">
			<label for="age" class="col-sm-2 control-label">Age</label>
			<div class="col-sm-10">
				<input type="number" ng-model="student.age" class="form-control"
					id="age" placeholder="Age">
			</div>
		</div>
		<div class="form-group">
			<label for="address" class="col-sm-2 control-label">Address</label>
			<div class="col-sm-10">
				<input type="text" ng-model="student.address" class="form-control"
					id="address" placeholder="Address">
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<input type="submit" class="btn btn-default" value="{{student.id !== null ? 'Update' : 'Add'}}" />
				<button type="button" class="btn btn-default" ng-click="studentCtrl.reset()"
				ng-show="student.id === null">Reset</button>
			</div>
		</div>
	</form>
</div>