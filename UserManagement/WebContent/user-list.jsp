<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>User Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<style type="text/css">
#left {
  float: left;
  text-align: left;
}

#center {
  text-align: center;
}

#add,
#edit,
#delete {
  top: 191px;
  left: 1136px;
  width: 99px;
  height: 45px;
  background-color: #273d49cc;
  color: white;
  border: 1px solid #14aff1;
  border-radius: 10px;
  opacity: 1;
  margin: 5px;
  padding: 5px;
}

#clear,
#add_btn {
  background-color: #14aff1;
  color: white;
  margin: 5px;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

.topnav input[type="text"] {
  float: right;
  padding: 4px;
  border: none;
  margin-top: 4px;
  margin-right: 20px;
  font-size: 17px;
}

body {
  background-color: #39495e;
}

#bg {
  top: 161px;
  left: 30px;
  width: 1340px;
  height: 560px;
  background: #273d49cc 0% 0% no-repeat padding-box;
  opacity: 1;
}

#searchbar {
  top: 191px;
  left: 1520px;
  width: 250px;
  height: 40px;
  color: white;
  background: #283a46 0% 0% no-repeat padding-box;
  border: 1px solid #14aff1;
  border-radius: 10px;
  opacity: 1;
  padding: 5px;
  border-radius: 10px;
}

table,
label {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
  color: #97a1a9;
}

td {
  border: none;
  text-align: center;
  padding: 8px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0, 0, 0); /* Fallback color */
  background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
  text-transform: capitalize;
  font: normal normal normal 28px/32px Ubuntu;
  opacity: 1;
}

/* Modal Content */
.modal-content {
  background-color: #2a3e4c;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 80%;
  height: 80%;
  background-color: #2a3e4c;
}

/* The Close Button */
.close {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}

input[type="clear"] {
  width: 40px;
  background-color: #14aff1;
  color: white;
  margin: 5px;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type="add_btn"] {
  width: 30px;
  background-color: #14aff1;
  color: white;
  margin: 5px;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

.container {
  padding: 20px;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input,
textarea {
  background: #283a46 0% 0% no-repeat padding-box;
  border: 1px solid #356680;
  border-radius: 10px;
  opacity: 1;
}

tr:nth-child(even) {
  background-color: #283a46;
}
form.searchbar input[type="text"] {
  font-size: 17px;
  width: 90%;
  background: none;
  cursor: text;
  border: none;
  color: #ffffff;
}

form.searchbar button {
  width: 10%;
  font-size: 17px;
  border: none;
  background: none;
}

.searchbar {
  display: flex;
  flex-direction: row;
}

.flex-end {
  background-color: none;
  padding: 10px 0;
  display: flex;
  justify-content: flex-end;
}

.button {
  top: 191px;
  left: 1136px;
  width: 80px;
  height: 40px;
  background-color: #273d49cc;
  color: white;
  border: 1px solid #14aff1;
  border-radius: 10px;
  opacity: 1;
  margin: 10px;
}

.popup .overlay {
  position: fixed;
  top: 0px;
  left: 0px;
  width: 100vw;
  height: 100vh;
  background: rgba(0, 0, 0, 0.7);
  z-index: 1;
  display: none;
}

.popup .content {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%) scale(0);
  background: #2a3e4c;
  width: 95%;
  max-width: 500px;
  height: 250px;
  z-index: 2;
  text-align: left;
  padding: 20px;
  box-sizing: border-box;
  font-family: "Open Sans", sans-serif;
}

.popup .close-btn {
  cursor: pointer;
  position: absolute;
  right: 20px;
  top: 20px;
  width: 30px;
  height: 30px;
  background: #222;
  color: #fff;
  font-size: 25px;
  font-weight: 600;
  line-height: 30px;
  text-align: center;
  border-radius: 50%;
}

.popup.active .overlay {
  display: block;
}

.popup.active .content {
  transition: all 300ms ease-in-out;
  transform: translate(-50%, -50%) scale(1);
}

</style>
</head>
<body>
<div id="left">
		
		<img src="abclogo.png" alt="Italian Trulli">
		
		</div>
		
		<div id="center">
				<img src="logo.svg" alt="Italian Trulli">
		</div>
		
		<h2><p style="color:white;">Invoice List</p></h2>
		
		<div id="bg">
		
		<div class="flex-end">
		
			<button id="add")">+ ADD</button>
			<button id="edit" onclick="togglePopup_edit()">/ EDIT</button>
			<button id="delete" onclick="togglePopup_dlt()">- DELETE</button>
			
			<input id="searchbar" type="text" name="search" placeholder="Search by Invoice number">
			<form class="searchbar">
                  <button type="form"><img src=""> </button>
            </form>
		</div>
		
		

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Users</h3>
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add
					New User</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
			  <tr>
  	<th><input onclick='selects()' type="checkbox"></th>
    <th>Customer Name</th>
    <th>Customer#</th>
    <th>Invoice#</th>
    <th>Invoice amount</th>
    <th>Due Date</th>
    <th>Predicted payment date</th>
    <th>Notes</th>
  </tr>
				</thead>
				<tbody>
				
					<c:forEach var="user" items="${listUser}">

						<tr>
							<td><c:out value="${user.id}" /></td>
							<td><c:out value="${user.name}" /></td>
							<td><c:out value="${user.email}" /></td>
							<td><c:out value="${user.country}" /></td>
							<td><a href="edit?id=<c:out value='${user.id}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete?id=<c:out value='${user.id}' />">Delete</a></td>
						</tr>
					</c:forEach>
		
				</tbody>

			</table>
		</div>
	</div>
	<!-- The Modal for add -->
		<div id="myAdd" class="modal">
			<!-- Modal content -->
  			<div class="modal-content">
    			<span class="close">&times;</span>
    			<h3><p style="color: white">Add Invoice</p></h3>
    			<div class="container">
  					<form>
    					<div class="row">
      						<div class="col-25">
        						<label for="cname">Customer Name</label>
        						<input type="text" id="cname" name="custname" placeholder=" ">
					      	</div>
      					</div>
    					<div class="row">
      						<div class="col-25">
        						<label for="cno">Customer No.</label>
	        					<input type="number" id="cno" name="custno" placeholder=" ">
      						</div>
    					</div>
    					<div class="row">
      						<div class="col-25">
        						<label for="ino">Invoice No.</label>
	        					<input type="number" id="ino" name="inno" placeholder=" ">
      						</div>
    					</div>
    					
    					<div class="row">
      						<div class="col-25">
        						<label for="iamt">Invoice Amount</label>
	        					<input type="number" id="iamt" name="inamt" placeholder=" ">
      						</div>
    					</div>
    					
    					<div class="col-25">
        					<label for="duedate">Due Date:</label>
  							<input type="date" id="duedate" name="DueDate">
  						</div>
    					
    					<div class="row">
      						<div class="col-25">
        						<label for="note">Notes</label>
      								<textarea id="note" name="notes" placeholder=" " style="height:200px;width:250px"></textarea>
      						</div>
    					</div>
	    				
    					<div class="row">
      						<button id='clear' type="Clear">Clear</button>
    					</div>
    					<div class="row">
      						<button id='add_btn' type="Add">Add</button>
    					</div>
    					
  					</form>
    			</div>
  			</div>
		</div>
		
		<div class="popup" id="popup-1">
  			<div class="overlay"></div>
  			<div class="content">
   				<div class="close-btn" onclick="togglePopup_edit()">X</div>
					<p style="color:white">EDIT INVOICE</p>
					<form>
					<div class="col-25">
      					<div class="row">
       						<label for="iamt">Invoice Amount</label>
	        				<input type="number" id="iamt" name="inamt" placeholder=" ">
      					</div>
    				</div>
	    			<div class="col-25">
     					
     					
    				</div>
    				</form>
    				<div class="row">
 		    			<button id='clear' type="Reset">Reset</button>
    				</div>
    				<div class="row">
      					<button id='add_btn' type="Save">Save</button>
    				</div>
	   		</div>
		</div>
 
		<div class="popup" id="popup-2">
  			<div class="overlay"></div>
  			<div class="content">
   				<div class="close-btn" onclick="togglePopup_dlt()">X</div>
   				<p style="color:white">Delete Record(s)</p>
				<p style="color:#C0C6CA">You'll lose your record(s) after this action. We can't recover them once you delete. Are you sure you want to permanently delete them?</p>
    				<div class="row">
 		    			<button id='clear' type="Reset">Reset</button>
    				</div>
    				<div class="row">
      					<button id='add_btn' type="Save">Save</button>
    				</div>
    			</div>
		</div>
		<script>
		 function togglePopup_edit(){
			  document.getElementById("popup-1").classList.toggle("active");
			}
		 </script>
		 
		 <script>
		 function togglePopup_dlt(){
			  document.getElementById("popup-2").classList.toggle("active");
			}
		 </script>
		</div>		
</body>

<script>
		
			// Get the modal
			var modal_add = document.getElementById("myAdd");
			
			// Get the button that opens the modal
			var btn = document.getElementById("add");
			
			// Get the <span> element that closes the modal
			var span = document.getElementsByClassName("close")[0];
			
			// When the user clicks the button, open the modal 
			btn.onclick = function() {
			  modal_add.style.display = "block";
			}
			
			// When the user clicks on <span> (x), close the modal
			span.onclick = function() {
			  modal_add.style.display = "none";
			}
			
			// When the user clicks anywhere outside of the modal, close it
			window.onclick = function(event) {
			  if (event.target == modal_add) {
			    modal_add.style.display = "none";
			  }
			}
			</script>

	<script type="text/javascript">  
            function selects(){  
                var ele=document.getElementsByName('chk');  
                for(var i=0; i<ele.length; i++){  
                    if(ele[i].type=='checkbox')  
                        ele[i].checked=true;  
                }  
            }
        </script>

</html>