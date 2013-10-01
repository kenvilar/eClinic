<style>
	#showHideTable{
		border:2px dashed #6497b1;
		width:65%;
	}
	#sub1{
		vertical-align:middle;
	}
	#sub2{
		vertical-align:middle;
	}
	#editForm{
		background-color:#b1dafb;
	}
	#inputForm{
		width:20px;
		height:16px;
	}
	
</style>
<jq:jquery>
	$(document).ready(function(){
		$("#editForm").hide()
		$("#showOrHide").click(function(){
			$("#editForm").toggle('slow');
		});
	});
</jq:jquery>

<div id="search">
				
				<g:formRemote name="myForm" update="page-body" url="[controller: 'home', action:'searchprofile']">
					<table>	
							<td><input name="parameter" type="text" placeholder="Search ID Number..." /></td>
							<td><button type="Search" class="btn btn-primary" data-loading-text="Loading...">Search</button></td>
					</table>
				</g:formRemote>
				
				
</div>
			
<div id="Student-Profile">
	<h1 align="left">Student Profile</h1>
	<hr/>
	<div  id="add-Student" style="height:400px; overflow-y:scroll;">
	
		
		<table>
			<g:if test="${result}">
			<tr>
				<td width="80%"></td>
				
				<td align="right"><button id="showOrHide">Edit</button></td>
			</tr>
			</g:if>
		</table>
		
		<g:formRemote name="myForm" update="page-body" url="[controller: 'home', action:'route_diagnosis']">
		
		<table>
			<g:each in="${result}" var="${results}">
			<tr>
				<td>First Name : ${results.first_name}</td>
				<td>Last Name : ${results.last_name}</td>
			</tr>
			<tr>
				<td>ID Number : ${results.id_number}</td>
				<td>College : ${results.college}</td>
			</tr>
			<tr>
				<td>Major : ${results.major}</td>
				<td>Gender : ${results.gender}</td>
			</tr>
			<tr>
				<td>Middle Name : ${results.middle_name}</td>
				<td>Birthday : <g:formatDate format="MMMM dd, yyyy" date="${results.birthday}"/></td>
			</tr>
			<tr>
				<td>Address : ${results.address}</td>
				<td>Blood Type : ${results.blood_type}</td>
			</tr>
			<tr>
				<td>Height :  ${results.height}</td>
				<td>Weight : ${results.weight}</td>
			</tr>
			<tr>
				<td>Enrolled : ${results.enrolled}</td>
			</tr>
			<tr>
				<td align="right"><button id="add-Description" type="submit"class="btn btn-primary" name="idNum" value="1">Add Prescription</button></td>
			</tr>
			</g:each>		
		</table>
		
		</g:formRemote> 
		
		<!--
		
		-->
		<center>
		<table id="showHideTable">
			<tr id="editForm">
				<g:formRemote name="editform" update="page-body" url="[controller: 'home', action:'editStudentInfo']">
					<td id="sub1">
						<center>
							New height:<small> <input id="inputForm" type="text" name="feet" value="${feet}">(ft) 
							<input id="inputForm" type="text" name="inch" value="${inch}">(in)</small>
						</center>
					</td>
					<td id="sub1">
						<center>
							New weight: <input id="inputForm" type="text" name="weight" value="${weight}"><small>(kgs)</small>
						</center>
					</td>
						<center>
							<input type="hidden" name="idNumber" value="${parameter}">
						</center>
					<td id="sub2">
						<center>
							<a data-toggle="modal" href="#example" class="btn">Submit</a>
						</center>
					</td>
					
					
					<div class="container">
						<div id="example" class="modal hide fade in" style="display: none; ">
							<div class="modal-header">
								<a class="close icon-remove" data-dismiss="modal">X</a>
								<br/><h3>Are you sure?</h3>
							</div>
							<div class="modal-body">
								<g:form controller="home" action="editStudentInfo">
									<center>
										<input type="submit" class="btn btn-primary btn-default" value="Yes"/>
									</center>
								</g:form>		        
							</div>
							<div class="modal-footer">
								<a href="#" class="btn" data-dismiss="modal">Cancel</a>
							</div>
						</div>
					</div>
					
					
				</g:formRemote>
			</tr>
				
		</table>
		</center>
	
		
	
	</div>
</div>			