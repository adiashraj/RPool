<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<div class="row">
	<div class="col-md-10">
			<h3 class="heading3">Search Employee</h3>
		</div>
		
	</div>
	<form:form method="post" action="searchemployee" modelAttribute="searchaction">
		<div class="row">
		
		<div class="col-md-5">
		
		<div class="form-group">
    			<label class="control-label col-sm-2" for="email">REF:</label>
   				<div class="col-sm-10">
      				<input type="text" class="form-control" id="resourceNo" name="resourceNo" placeholder="Enter Resource Ref No">
    			</div>
    		</div>
    		<br><br>
		
		<!-- First -->
		<div class="form-group">
    			<label class="control-label col-sm-2" for="email">Name:</label>
   				<div class="col-sm-10">
      				<input type="text" class="form-control" id="name" name="empName" placeholder="Enter Name">
    			</div>
    		</div>
    		<br><br>
    	<!-- First -->	
    	
    	<!-- First -->
    	<div class="form-group">
    			<label class="control-label col-sm-2" for="email">Experience:</label>
   				<div class="col-sm-10">
      				<input type="text" class="form-control" id="experience" name="experince" placeholder="Enter Experience">
    			</div>
    		</div>
    		<br><br>
    	<!-- First -->
    	<!-- First -->
		
		<div class="form-group">
    			<label class="control-label col-sm-2" for="email">Main Skills:</label>
   				<div class="col-sm-10">
      				<!-- <input type="text" class="form-control" id="name" name="mainSkill" placeholder="Enter ID"> -->
      				<select id="mainSkills" name = "mainSkill" multiple="multiple" class="form-control" name="mainSkills">
							<option>Core Java</option>
							<option>Advance Java</option>
							<option>Hibernate</option>
							<option>Spring</option>
							<option>WebServices</option>
							<option>Struts</option>
					</select>
    			</div>
    		</div>
    		<br><br>
    	<!-- First -->	
		</div>
		<div class="col-md-5">
		<!-- First -->
		<div class="form-group">
    			<label class="control-label col-sm-2" for="email">ID:</label>
   				<div class="col-sm-10">
      				<input type="text" class="form-control" id="id" name="empId" placeholder="Enter ID">
    			</div>
    		</div>
    		<br><br>
    	<!-- First -->	
    	<!-- First -->
		<div class="form-group">
    			<label class="control-label col-sm-2" for="email">Primary Skill:</label>
   				<div class="col-sm-10">
      				<!-- <input type="text" class="form-control" id="name" name="name" placeholder="Enter ID"> -->
      				<select id="skill" name="primarySkill" class="form-control">
							<option></option>
							<option>Mainframe</option>
							<option>Java</option>
							<option>Microsoft Net</option>
					</select>
    			</div>
    		</div>
    		<br><br>
    	<!-- First -->	
    	<!-- First -->
		<div class="form-group">
    			<label class="control-label col-sm-2" for="email">Sec. Skills:</label>
   				<div class="col-sm-10">
      				<!-- <input type="text" class="form-control" id="name" name="name" placeholder="Enter ID"> -->
      				<select id="secSkills" name="secondarySkill" multiple="multiple" class="form-control">
							<option>Angular</option>
							<option>Javascript</option>
							<option>Jquery</option>
							<option>Ajax</option>
							<option>HTML & CSS</option>
							<option>Oracle</option>
					</select>
    			</div>
    		</div>
    		<br><br><br><br>
    	<!-- First -->	
    	<!-- First -->
		<div class="form-group">
    			<label class="control-label col-sm-2" for="email">Role:</label>
   				<div class="col-sm-10">
      				<input type="text" class="form-control" id="role" name="empRole" placeholder="Enter Role">
    			</div>
    		</div>
    	<!-- First -->	
		</div>
		<br><br>
		
		</div>
			<br><br>
			<div class="col-md-6 pull-left">
			<button type="submit" class="btn btn-primary">Search Employee</button>
		</div>
	</form:form>
