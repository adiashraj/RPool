<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>





	<div class="row">
	<div class="col-md-10">
			<h3 class="heading3">Add Employee Records</h3>
		</div>
		
	</div>
	<form:form method="post" action="addEmployee" modelAttribute="employee" class="form-horizontal">

	<div class="row">
		<div class="col-md-5">
		<!-- First -->
			<div class="form-group">
    			<label class="control-label col-sm-2" for="email">ID:</label>
   				<div class="col-sm-10">
      				<input type="text" class="form-control" id="empId" name="empId" placeholder="Enter employee id">
    			</div>
    		</div>
    	<!-- First -->
    	<!-- First -->
			<div class="form-group">
    			<label class="control-label col-sm-2" for="email">Name:</label>
   				<div class="col-sm-10">
      				<input type="text" class="form-control" id="empName" name="empName" placeholder="Enter employee name">
    			</div>
    		</div>
    	<!-- First -->
    	<!-- First -->
			<div class="form-group">
    			<label class="control-label col-sm-2" for="email">Role:</label>
   				<div class="col-sm-10">
      				<input type="text" class="form-control" id="empRole" name="empRole" placeholder="Enter employee Role">
    			</div>
    		</div>
    	<!-- First -->
    	<!-- First -->
			<div class="form-group">
    			<label class="control-label col-sm-2" for="email">Main Skills:</label>
   				<div class="col-sm-10">
      				<select name="mainSkill" id="mainSkills" 
                                         multiple="multiple" class="form-control">
                                                <option>&nbsp;Core Java&nbsp;</option>
                                                <option>&nbsp;Advance Java&nbsp;</option>
                                                <option>&nbsp;Hibernate&nbsp;</option>
                                                <option>&nbsp;Spring&nbsp;</option>
                                                <option>&nbsp;WebServices&nbsp;</option>
                                                <option>&nbsp;Struts&nbsp;</option>
                                  </select>
    			</div>
    		</div>
    	<!-- First -->
    	<!-- First -->
			<div class="form-group">
    			<label class="control-label col-sm-2" for="email">Experience:</label>
   				<div class="col-sm-10">
      				<input type="text" class="form-control" id="experince" name="experince" placeholder="Enter employee experince">
    			</div>
    		</div>
    	<!-- First -->
    	<!-- First -->
			<div class="form-group">
    			<label class="control-label col-sm-2" for="email">OverSeas:</label>
   				<div class="col-sm-10">
      				<input type="text" class="form-control" id="overseas" name="overseas" placeholder="Enter employee overseas status">
    			</div>
    		</div>
    	<!-- First -->
    	<!-- First -->
			<div class="form-group">
    			<label class="control-label col-sm-2" for="email">Contact No:</label>
   				<div class="col-sm-10">
      				<input type="text" class="form-control" id="contact" name="contact" placeholder="Enter employee contact number">
    			</div>
    		</div>
    	<!-- First -->
    	<!-- First -->
			<div class="form-group">
    			<label class="control-label col-sm-2" for="email">Internal Assignment:</label>
   				<div class="col-sm-10">
      				<input type="text" class="form-control" id="internalAssignment" name="internalAssignment" placeholder="Enter employee internal Assignment">
    			</div>
    		</div>
    	<!-- First -->
    	<!-- First -->
			<div class="form-group">
    			<label class="control-label col-sm-2" for="email">Personal Detail:</label>
   				<div class="col-sm-10">
      				<input type="text" class="form-control" id="personalDetail" name="personalDetail" placeholder="Enter employee personal Detail">
    			</div>
    		</div>
    	<!-- First -->
    	<!-- First -->
			<div class="form-group">
    			<label class="control-label col-sm-2" for="email">Remark:</label>
   				<div class="col-sm-10">
      				<input type="text" class="form-control" id="remarks" name="remarks" placeholder="Enter remarks">
    			</div>
    		</div>
    	<!-- First -->
    	<!-- First -->
			<div class="form-group">
    			<label class="control-label col-sm-2" for="email">Status:</label>
   				<div class="col-sm-10">
      				<input type="text" class="form-control" id="status" name="status" placeholder="Enter Status">
    			</div>
    		</div>
    	<!-- First -->
    	<!-- First -->
			<div class="form-group">
    			<label class="control-label col-sm-2" for="email">Passport Status:</label>
   				<div class="col-sm-10">
      				<input type="text" class="form-control" id="passportStatus" name="passportStatus" placeholder="Enter passport Status">
    			</div>
    		</div>
    	<!-- First -->
    	<!-- First -->
			<div class="form-group">
    			<label class="control-label col-sm-2" for="email">Date of Joining:</label>
   				<div class="col-sm-10">
      				<input type="date" class="form-control" id="dateOfJoining" name="dateOfJoining" placeholder="Enter date Of Joining">
    			</div>
    		</div>
    	<!-- First -->
    	<!-- First -->
			<div class="form-group">
    			<label class="control-label col-sm-2" for="email">Band:</label>
   				<div class="col-sm-10">
      				<input type="text" class="form-control" id="band" name="band" placeholder="Enter band">
    			</div>
    		</div>
    	<!-- First -->
    	<!-- First -->
			<div class="form-group">
    			<label class="control-label col-sm-2" for="email">Role:</label>
   				<div class="col-sm-10">
      				<input type="text" class="form-control" id="role" name="role" placeholder="Enter Role">
    			</div>
    		</div>
    	<!-- First -->
    	<!-- First -->
			<div class="form-group">
    			<label class="control-label col-sm-2" for="email">Email:</label>
   				<div class="col-sm-10">
      				<input type="email" class="form-control" id="email" name="email" placeholder="Enter Email">
    			</div>
    		</div>
    	<!-- First -->
    	<!-- First -->
			<div class="form-group">
    			<label class="control-label col-sm-2" for="email">No of Opportunity:</label>
   				<div class="col-sm-10">
      				<input type="text" class="form-control" id="noOfOpportunity" name="noOfOpportunity" placeholder="Enter No Of Opportunity">
    			</div>
    		</div>
    	<!-- First -->
    	
  		</div>
		<!-- Column2 -->
		<div class="col-md-5">
			<!-- First -->
			<div class="form-group">
    			<label class="control-label col-sm-2" for="email">Primary Skill:</label>
   				<div class="col-sm-10">
      				<!-- <input type="email" class="form-control" id="email" placeholder="Enter email"> -->
      				<select name="primarySkill" id="skill" class="form-control">
                                                <option>&nbsp;Mainframe&nbsp;</option>
                                                <option>&nbsp;Java&nbsp;</option>
                                                <option>&nbsp;Microsoft Net&nbsp;</option>
                    </select>
    			</div>
    		</div>
    	<!-- First -->
    	<!-- First -->
			<div class="form-group">
    			<label class="control-label col-sm-2" for="email">Location:</label>
   				<div class="col-sm-10">
      				<!-- <input type="email" class="form-control" id="email" placeholder="Enter email"> -->
      				<select name="location" id="location" class="form-control">
                                                <option>&nbsp;Delhi&nbsp;</option>
                                                <option>&nbsp;Greater Noida&nbsp;</option>
                                                <option>&nbsp;Gurgaon&nbsp;</option>
                                  </select>
    			</div>
    		</div>
    	<!-- First -->
    	<!-- First -->
			<div class="form-group">
    			<label class="control-label col-sm-2" for="email">Practice:</label>
   				<div class="col-sm-10">
      				<input type="text" name="practise" class="form-control" id="practise" placeholder="Enter Practice">
    			</div>
    		</div>
    	<!-- First -->
    	<!-- First -->
			<div class="form-group">
    			<label class="control-label col-sm-2" for="email">Sec. Skills:</label>
   				<div class="col-sm-10">
      				<!-- <input type="email" name="practise" class="form-control" id="practise" placeholder="Enter email"> -->
      				<select name="secondarySkill" id="secSkills" class="form-control"
                                         multiple="multiple" >
                                                <option>&nbsp;Angular&nbsp;</option>
                                                <option>&nbsp;Javascript&nbsp;</option>
                                                <option>&nbsp;Jquery&nbsp;</option>
                                                <option>&nbsp;Ajax&nbsp;</option>
                                                <option>&nbsp;HTML & CSS&nbsp;</option>
                                                <option>&nbsp;Oracle&nbsp;</option>
                                  </select>
    			</div>
    		</div>
    	<!-- First -->
    	<!-- First -->
			<div class="form-group">
    			<label class="control-label col-sm-2" for="email">PSA:</label>
   				<div class="col-sm-10">
      				<input type="text" name="psa" class="form-control" id="psa" placeholder="Enter PSA">
    			</div>
    		</div>
    	<!-- First -->
    	<!-- First -->
			<div class="form-group">
    			<label class="control-label col-sm-2" for="email">Release Date:</label>
   				<div class="col-sm-10">
      				<input type="date" name="releaseDate" class="form-control" id="releaseDate" placeholder="Enter Release Date:">
    			</div>
    		</div>
    		
    	<!-- First -->
    	<!-- First -->
			<div class="form-group">
    			<label class="control-label col-sm-2" for="email">Last Project:</label>
   				<div class="col-sm-10">
      				<input type="text" name="lastProject" class="form-control" id="lastProject" placeholder="Enter Last Project">
    			</div>
    		</div>
    	<!-- First -->
    	<!-- First -->
			<div class="form-group">
    			<label class="control-label col-sm-2" for="email">Vertical:</label>
   				<div class="col-sm-10">
      				<input type="text" name="vertical" class="form-control" id="vertical" placeholder="Enter Vertical">
    			</div>
    		</div>
    	<!-- First -->
    	<!-- First -->
			<div class="form-group">
    			<label class="control-label col-sm-2" for="email">Training:</label>
   				<div class="col-sm-10">
      				<input type="text" name="training" class="form-control" id="training" placeholder="Enter Training">
    			</div>
    		</div>
    	<!-- First -->
    	<!-- First -->
			<div class="form-group">
    			<label class="control-label col-sm-2" for="email">Leave Status:</label>
   				<div class="col-sm-10">
      				<input type="text" name="leaveStatus" class="form-control" id="leaveStatus" placeholder="Enter Leave Status">
    			</div>
    		</div>
    	<!-- First -->
    	<!-- First -->
			<div class="form-group">
    			<label class="control-label col-sm-2" for="email">Location of Residence:</label>
   				<div class="col-sm-10">
      				<input type="text" name="locationOfResidence" class="form-control" id="locationOfResidence" placeholder="Enter Location Of Residence">
    			</div>
    		</div>
    	<!-- First -->
    	<!-- First -->
			<div class="form-group">
    			<label class="control-label col-sm-2" for="email">Overall/Comm Rating:</label>
   				<div class="col-sm-10">
      				<input type="text" name="overallRating" class="form-control" id="overallRating" placeholder="Enter Overall Rating">
    			</div>
    		</div>
    	<!-- First -->
    	<!-- First -->
			<div class="form-group">
    			<label class="control-label col-sm-2" for="email">Visa:</label>
   				<div class="col-sm-10">
      				<input type="text" name="visa" class="form-control" id="visa" placeholder="Enter Visa Details">
    			</div>
    		</div>
    	<!-- First -->
    	<!-- First -->
			<div class="form-group">
    			<label class="control-label col-sm-2" for="email">Plan:</label>
   				<div class="col-sm-10">
      				<input type="text" name="plan" class="form-control" id="plan" placeholder="Enter Plan">
    			</div>
    		</div>
    	<!-- First -->
    	<!-- First -->
			<div class="form-group">
    			<label class="control-label col-sm-2" for="email">Designation:</label>
   				<div class="col-sm-10">
      				<input type="text" name="designation" class="form-control" id="designation" placeholder="Enter Designation">
    			</div>
    		</div>
    	<!-- First -->
    	<!-- First -->
			<div class="form-group">
    			<label class="control-label col-sm-2" for="email">SSA:</label>
   				<div class="col-sm-10">
      				<input type="text" name="ssa" class="form-control" id="ssa" placeholder="Enter SSA">
    			</div>
    		</div>
    	<!-- First -->
    	<!-- First -->
			<div class="form-group">
    			<label class="control-label col-sm-2" for="email">Gender:</label>
   				<div class="col-sm-10">
      				<input type="text" name="gender" class="form-control" id="gender" placeholder="Enter Gender">
    			</div>
    		</div>
    	<!-- First -->
    	<!-- First -->
			<div class="form-group">
    			<label class="control-label col-sm-2" for="email">Level:</label>
   				<div class="col-sm-10">
      				<input type="text" class="form-control" id="Level" name="Level" placeholder="Enter Level">
    			</div>
    		</div>
    	<!-- First -->
	</div>
	</div>
	<div class="col-md-6 pull-left">
			<button type="submit" class="btn btn-primary">Add Employee</button>
		</div>
	</form:form>
	

