<style>
	#diagnosis td{
		width:10%;
	}
	#pres{
		width:95%;
	}
	
</style>

<div id="search">
				
				<g:formRemote name="myForm" update="page-body" url="[controller: 'home', action:'searchprofile']">
					<table>	
							<td><input name="parameter" type="text" placeholder="Search ID Number..." required="true"/></td>
							<td><button type="Search" class="btn btn-primary" data-loading-text="Loading...">Search</button></td>
					</table>
				</g:formRemote>
				
				
</div>
			
<div id="diagnosis">
	<h1 align="left">Diagnosis</h1>
	<hr/>
	<div  id="add-diagnosis" style="height:360px; overflow-y:scroll;">
				
				<g:formRemote name="Back" update="page-body" url="[controller: 'home', action:'searchprofile']">
					<input type="hidden" name="parameter" value="${idNum}">
					<input type="submit" value="<<< BACK"> 
				</g:formRemote>	
				
				<g:formRemote name="DiagnosisForm" update="page-body" url="[controller: 'home', action:'addDiagnosis']">		
				<br/>
				Diagnosis:</br> <input type="hidden" value="${idNum}" name="studentId"/> <input type="text" name="diagnosis"/>
				<br/>
				Prescription: </br><textarea style="height: 130px;" id="pres" name="prescription"></textarea>
				<br/>
				<button type="text" class="btn btn-primary" data-loading-text="Loading...">Add</button>
			
					
	</g:formRemote>	
		
	</div>
</div>