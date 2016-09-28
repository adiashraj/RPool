<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css"> -->
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css"> 
<link rel="stylesheet" href="https://cdn.datatables.net/fixedcolumns/3.2.2/css/fixedColumns.dataTables.min.css"> 
<script src="https://code.jquery.com/jquery-1.12.3.js"></script>
<script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>
<script src="https://cdn.datatables.net/fixedcolumns/3.2.2/js/dataTables.fixedColumns.min.js"></script>

<script>
/* $(document).ready(function() {
    $('#example').DataTable();
} ); */
/* $(document).ready(function() {
    $('#example').DataTable( {
        "scrollX": true
    } );
} ); */
/* $(document).ready(function() {
    $('#example').DataTable( {
        "scrollY": 200,
        "scrollX": true
    } );
} ); */
$(document).ready(function() {
    var table = $('#example').DataTable( {
        scrollY:        "300px",
        scrollX:        true,
        scrollCollapse: true,
      //  paging:         false,
        fixedColumns:   {
            leftColumns: 6,
      //      rightColumns: 1
        }
    } );
} );
</script>
<style type="text/css">
/*  div.dataTables_wrapper {
        width: 800px;
        margin: 0 auto;
    } */
     th, td { white-space: nowrap; }
</style>

	<div class="row">
	<div class="col-md-10">
			<h3 class="heading3">Add Employee Records</h3>
		</div>
		
	</div>
<!-- <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%"> -->
<!-- <table id="example" class="display nowrap" cellspacing="0" width="100%"> -->
<table id="example" class="stripe row-border order-column" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>S No.</th>
				<th>REF NO</th>
				<th>EMP Id</th>
				<th>NAME</th>
				<th>PRIMARY SKILL</th>
				<th>EXP</th>
				<th>MAIN SKILL</th>
				<th>SEC SKILL</th>
				<th>ROLE</th>
				<th>LOCATION</th>
				<th>PRACTISE</th>
				<th>PSA</th>
				<th>OVERSEAS</th>
				<th>RELEASE DATE</th>
				<th>CONTACT</th>
				<th>LAST PROJECT</th>
				<th>INTERNAL ASSIGNMENT</th>
				<th>VERTICAL</th>
				<th>PERSONAL DETAIL</th>
				<th>TRAINING</th>
				<th>REMAKS</th>
				<th>LEAVE STATUS</th>
				<th>STATUS</th>
				<th>LOCATION OF RESIDENCE</th>
				<th>PASSPORT STATUS</th>
				<th>OVER ALL RATING</th>
				<th>DATE OF JOINIG</th>
				<th>VISA</th>
				<th>BAND</th>
				<th>PLAN</th>
				<th>ROLE</th>
				<th>DESIGNATION</th>
				<th>EMAIL</th>
				<th>SSA</th>
				<th>GENDER</th>
				<th>LEVEL</th>
				<th>NO OF OPPORTUNITY</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="employee" items="${emplList}" varStatus="status">
				<tr>
					<td>${status.index + 1}</td>
					<td>${employee.resourceNo}</td>
					<td>${employee.empId}</td>
					<td>${employee.empName}</td>
					<td>${employee.primarySkill}</td>
					<td>${employee.experince}</td>
					<td>${employee.mainSkill}</td>
					<td>${employee.secondarySkill}</td>
					<td>${employee.empRole}</td>
					<td>${employee.location}</td>
					<td>${employee.practise}</td>
					<td>${employee.psa}</td>
					<td>${employee.overseas}</td>
					<td>${employee.releaseDate}</td>
					<td>${employee.contact}</td>
					<td>${employee.lastProject}</td>
					<td>${employee.internalAssignment}</td>
					<td>${employee.vertical}</td>
					<td>${employee.personalDetail}</td>
					<td>${employee.training}</td>
					<td>${employee.remarks}</td>
					<td>${employee.leaveStatus}</td>
					<td>${employee.status}</td>
					<td>${employee.locationOfResidence}</td>
					<td>${employee.passportStatus}</td>
					<td>${employee.overallRating}</td>
					<td>${employee.dateOfJoining}</td>
					<td>${employee.visa}</td>
					<td>${employee.band}</td>
					<td>${employee.plan}</td>
					<td>${employee.role}</td>
					<td>${employee.designation}</td>
					<td>${employee.email}</td>
					<td>${employee.ssa}</td>
					<td>${employee.gender}</td>
					<td>${employee.level}</td>
					<td>${employee.noOfOpportunity}</td>
				</tr>
			</c:forEach>
        </tbody>
    </table>
	

