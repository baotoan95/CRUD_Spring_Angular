<div class="col-md-8 col-md-offset-2">
	<form class="form-horizontal" name="studentForm" ng-submit="studentCtrl.submit()">
		<input type="hidden" ng-model="student.id" />
		<div class="form-group">
			<label for="name" class="col-sm-2 control-label">Name</label>
			<div class="col-sm-10">
				<input type="text" ng-model="student.name" class="form-control"
					id="name" placeholder="Name" required ng-minlength="2" ng-maxlength="20" name="name">
				<div ng-show="studentForm.$dirty">
					<div ng-show="studentForm.name.$error.required">This field is required</div>
					<div ng-show="studentForm.name.$error.minlength">Word(s) must be more than 2</div>
					<div ng-show="studentForm.name.$error.maxlength">Word(s) must be less than 20</div>
				</div>
			</div>
		</div>
		<div class="form-group">
			<label for="age" class="col-sm-2 control-label">Age</label>
			<div class="col-sm-10">
				<input type="number" ng-model="student.age" class="form-control"
					id="age" placeholder="Age" required name="age" ng-minlength="1" ng-maxlength="3">
				<div ng-show="studentForm.$dirty">
					<div ng-show="studentForm.age.$error.required">This field is required</div>
					<div ng-show="studentForm.age.$error.minlength">Number must be contain at least 1 characters</div>
					<div ng-show="studentForm.age.$error.maxlength">Number must be contain maximum 3 characters</div>
				</div>
			</div>
		</div>
		<div class="form-group">
			<label for="address" class="col-sm-2 control-label">Address</label>
			<div class="col-sm-10">
				<input type="text" ng-model="student.address" class="form-control"
					id="address" placeholder="Address" required name="address" ng-minlength="5" ng-maxlength="50">
				<div ng-show="studentForm.$dirty">
					<div ng-show="studentForm.address.$error.required">This field is required</div>
					<div ng-show="studentForm.address.$error.minlength">Word(s) must be more than 5</div>
					<div ng-show="studentForm.address.$error.maxlength">Word(s) must be less than 50</div>
				</div>
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