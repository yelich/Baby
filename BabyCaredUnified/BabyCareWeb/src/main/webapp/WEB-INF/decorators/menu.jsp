<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <div class="sidebar" data-color="blue" data-image="resources/assets/img/sidebar-5.jpg">    
    
    <!--   
        
        Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple" 
        Tip 2: you can also add an image using data-image tag
        
    -->
    
    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="#" class="simple-text">
                    BabyCare
                </a>
            </div>
		<!-- <div class="user">
			<div class="photo">
				<img src="${url}/resources/assets/img/default-avatar.png">
			</div>
			<div class="info">
				<a class="collapsed" href="#collapseExample" data-toggle="collapse">
					Tania Andrew <b class="caret"></b>
				</a>
				<div id="collapseExample" class="collapse">
					<ul class="nav">
						<li><a href="#">My Profile</a></li>
						<li><a href="#">Edit Profile</a></li>
						<li><a href="#">Settings</a></li>
					</ul>
				</div>
			</div>
		</div>-->

		<ul class="nav">
                <li class="active">
                    <a href="/main/dashboard">
                        <i class="pe-7s-graph"></i> 
                        <p>Dashboard</p>
                    </a>            
                </li>
			    <li>
			    <a href="#registerItems" data-toggle="collapse" class=""
				aria-expanded="false"> 
				  <i class="pe-7s-id"></i>
					<p>
						Register <b class="caret"></b>
					</p>
			    </a>
				<div id="registerItems" class="collapse in" aria-expanded="true"
					style="">
					<ul class="nav">
						<li><a href="${url}/main/personalInformation">Personal Information</a></li>
						<li><a href="${url}/main/childrenInformation">Children</a></li>
						<li><a href="${url}/main/medicationsInformation">Pre-Registration</a></li>
						<li><a href="${url}/main/registration">Registration</a></li>
						<li><a href="${url}/main/feesInformation">Fees</a></li>
						<li><a href="${url}/main/schoolInformation">School</a></li>
						<li><a href="${url}/main/servicesInformation">Services</a></li>
						<li><a href="${url}/main/notificationInformation">Notifications</a></li>
						<li><a href="${url}/main/holidaysInformation">Holidays/Vacations</a></li>
					</ul>
				</div>
			</li>
						    <li>
			    <a href="#Consult" data-toggle="collapse" class=""
				aria-expanded="false"> 
				  <i class="pe-7s-server"></i>
					<p>
						Consult <b class="caret"></b>
					</p>
			    </a>
				<div id="Consult" class="collapse in" aria-expanded="true"
					style="">
					<ul class="nav">
						<li><a href="/main/record">Record</a></li>
						<li><a href="/main/billinds">Billinds</a></li>
						<li><a href="/main/activities">Activities</a></li>
					</ul>
				</div>
			</li>

            </ul> 
    	</div>
    </div>