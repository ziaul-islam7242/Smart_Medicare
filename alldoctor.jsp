<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="utf-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false"%>
<html>
<head>
<title><spring:message code="title.app"/></title>


<%@ include file="css_home.jsp"%>
 <%@ include file="javascript_home.jsp"%>

</head>
 <%@ include file="homeheader.jsp"%> 


        <div class="wrapper">
            <div class="container">
          <%--   background-image: src("${pageContext.request.contextPath}/resources/theme/img/websitebg.png"); --%>
   			
               
                <!-- Page-Title -->
                <%-- <h4 class="text-success counter">${title}</h4>
                 <a href="${pageContext.request.contextPath}/product/createproductcategory.do" class="btn btn-primary waves-effect waves-light m-t-10">
					${btntitle} --%>
				</a>  
					    
	
					    
                <div class="row">
               
                    <div class="col-sm-12">
                    
                    
                    <div class="box-body">
			<div class="form-group">
			
			<c:if test="${not empty msg}">
		<div class="alert alert-${css} alert-dismissible" role="alert">
			<button type="button" class="close" data-dismiss="alert" 
                                aria-label="Close">
				<span aria-hidden="true">×</span>
			</button>
			<strong>${msg}</strong>
		</div>
		</c:if>
		</div>
		</div>
		
                    
                    
  
                        <div class="card-box">
							              
                                   <form:form action="${pageContext.request.contextPath}${actionval}"  method="POST"	commandName="${productVOval}">
                                   
                                   
                           <!-- Breadcumb area start -->
    <section class="breadcumb_area" style="background-image: url(img/breadcumb.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcumb_section">
                        <!-- Breadcumb page title start -->
                        <div class="page_title">
                            <h3>Doctors</h3>
                        </div>
                        <!-- Breadcumb page pagination start -->
                        <div class="page_pagination">
                            <ul>
                                <li><a href="index.html">Home</a></li>
                                <li><i class="fa fa-angle-right" aria-hidden="true"></i></li>
                                <li>Doctors</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcumb area end -->

 	<!-- ===================== Our Doctors Area Start ===================== -->
	
	<section class="team_area area1 section_padding_20_70">
			<div class="container"> 	 			
				<div class="row">
					<c:forEach items="${activityReport}" var="report">
					<div class="col-xs-12 col-sm-4 col-md-4 wow fadeIn" style="visibility: visible; animation-name: fadeIn;"> <!-- Team Profile -->						
						<div class="single-team"> 						
							<div class="team-bg team-bg-shape">
								<img src="${pageContext.request.contextPath}/resources/hometheme/img/team/team_1.png" class="doctor-img" alt="Doctor Image">
							</div>							
							<h3><a href="${pageContext.request.contextPath}/doctor/doctor-details/${report.uuId}">${report.firstname} ${report.middlename} </a></h3>
							
						
									
							
							<p>${report.lastname}</p>
							<ul class="social-icon"> <!-- Social Icon -->
								<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
							</ul>		
						</div>
					</div>
					
					</c:forEach>
					<%-- <div class="col-xs-12 col-sm-4 col-md-4 wow fadeIn" style="visibility: visible; animation-name: fadeIn;"> <!-- Team Profile -->
						<div class="single-team">
							<div class="team-bg team-bg-shape">
								<img src="${pageContext.request.contextPath}/resources/hometheme/img/team/team_2.png" class="doctor-img" alt="Doctor Image">
							</div>
							<h3>Jennifer Frank</h3>
							<p>Cosmetic Surgeon</p>
							<ul class="social-icon"> <!-- Social Icon -->
								<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
							</ul>	
						</div>
					</div>
					<div class="col-xs-12 col-sm-4 col-md-4 wow fadeIn" style="visibility: visible; animation-name: fadeIn;"><!-- Team Profile -->
						<div class="single-team">
							<div class="team-bg team-bg-shape">
								<img src="${pageContext.request.contextPath}/resources/hometheme/img/team/team_3.png" class="doctor-img" alt="Doctor Image">
							</div>
							<h3>Thomas Marshal</h3>
							<p>Cardiology</p>
							<ul class="social-icon"> <!-- Social Icon -->
								<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
							</ul>
						</div>
					</div>					
				</div>	
				
				<div class="row">
					<div class="col-xs-12 col-sm-4 col-md-4 wow fadeIn" style="visibility: visible; animation-name: fadeIn;"> <!-- Team Profile -->						
						<div class="single-team"> 						
							<div class="team-bg team-bg-shape">
								<img src="${pageContext.request.contextPath}/resources/hometheme/img/team/team_4.png" class="doctor-img" alt="Doctor Image">
							</div>							
							<h3>Andrew Smith</h3>
							<p>Dental Surgeon</p>
							<ul class="social-icon"> <!-- Social Icon -->
								<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
							</ul>		
						</div>
					</div>
					<div class="col-xs-12 col-sm-4 col-md-4 wow fadeIn" style="visibility: visible; animation-name: fadeIn;"> <!-- Team Profile -->
						<div class="single-team">
							<div class="team-bg team-bg-shape">
								<img src="${pageContext.request.contextPath}/resources/hometheme/img/team/team_5.png" class="doctor-img" alt="Doctor Image">
							</div>
							<h3>Martin Harvey</h3>
							<p>Psychiatrist</p>
							<ul class="social-icon"> <!-- Social Icon -->
								<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
							</ul>	
						</div>
					</div>
					<div class="col-xs-12 col-sm-4 col-md-4 wow fadeIn" style="visibility: visible; animation-name: fadeIn;"><!-- Team Profile -->
						<div class="single-team">
							<div class="team-bg team-bg-shape">
								<img src="${pageContext.request.contextPath}/resources/hometheme/img/team/team_6.png" class="doctor-img" alt="Doctor Image">
							</div>
							<h3>Daniel Ruiz</h3>
							<p>Paediatrician</p>
							<ul class="social-icon"> <!-- Social Icon -->
								<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
							</ul>
						</div>
					</div>					
				</div>	

				
				<div class="row">
					<div class="col-xs-12 col-sm-4 col-md-4 wow fadeIn" style="visibility: visible; animation-name: fadeIn;"> <!-- Team Profile -->						
						<div class="single-team"> 						
							<div class="team-bg team-bg-shape">
								<img src="${pageContext.request.contextPath}/resources/hometheme/img/team/team_7.png" class="doctor-img" alt="Doctor Image">
							</div>							
							<h3>Kate Midle</h3>
							<p>Urologist</p>
							<ul class="social-icon"> <!-- Social Icon -->
								<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
							</ul>		
						</div>
					</div>
					<div class="col-xs-12 col-sm-4 col-md-4 wow fadeIn" style="visibility: visible; animation-name: fadeIn;"> <!-- Team Profile -->
						<div class="single-team">
							<div class="team-bg team-bg-shape">
								<img src="${pageContext.request.contextPath}/resources/hometheme/img/team/team_8.png" class="doctor-img" alt="Doctor Image">
							</div>
							<h3>Kriss Matyer</h3>
							<p>Orthopaedic</p>
							<ul class="social-icon"> <!-- Social Icon -->
								<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
							</ul>	
						</div>
					</div>
					<div class="col-xs-12 col-sm-4 col-md-4 wow fadeIn" style="visibility: visible; animation-name: fadeIn;"><!-- Team Profile -->
						<div class="single-team">
							<div class="team-bg team-bg-shape">
								<img src="${pageContext.request.contextPath}/resources/hometheme/img/team/team_9.png" class="doctor-img" alt="Doctor Image">
							</div>
							<h3>James Gandofin</h3>
							<p>Anethesiologist</p>
							<ul class="social-icon"> <!-- Social Icon -->
								<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
							</ul>
						</div>
					</div>					 --%>
				</div>				
			</div> 
		
	</section>
		</form:form>
    <!-- ===================== Our Doctors Area End ===================== -->
	
	<!-- ===================== Newsletter Area Start ===================== -->
	<section class="newsletter_area">
        <div class="container">
            <div class="row ">
                <div class="col-md-6 col-sm-12">
                    <div class="newsletter_text">
                        <h2>Subscribe for newsletter</h2>
                        <p>Don't worry, we hate spam too. We won't share your details with anyone.</p>
                    </div>
                </div>
                <!-- column End -->
                <div class="col-md-4 col-sm-8">
                    <form action="#" _lpchecked="1">
                        <input name="sub_email" placeholder="Email here..." type="email">
                    </form>
                </div>
                <!-- column End -->
                <div class="col-md-2 col-sm-4">
                    <a href="volunteer.html" class="hvr-box-shadow-outset common_btn">Subscribe Now</a>
                </div>
                <!-- column End -->
            </div>
        </div>
    </section>
	<!-- ===================== Newsletter Area End ===================== -->

    <!-- ===================== Footer Area Start ===================== -->
    <footer class="footer_area">
        <div class="container section_padding_100_70">
            <div class="row">
                <!-- Footer About Area Start -->
                <div class="col-12 col-md-6 col-lg-3">
                    <div class="footer_about_us footer-single-part item wow fadeInUp">
                        <div class="title">
                            <img src="${pageContext.request.contextPath}/resources/hometheme/img/logo-footer.png" alt="footer logo"/>
                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut delectus consectetur omnis, alias nulla repudiandae quasi non at ullam, vel officiis unde cum ea. </p>
                    </div>
                </div>
                <!-- Footer About Area End -->
				
				<!-- Contact info Area Start -->
                <div class="col-12 col-md-6 col-lg-3">
                    <div class="footer_contact_info footer-single-part item wow fadeInUp">
                        <div class="title">
                            <h4>Contact Info</h4>
                        </div>
                        <!-- single contact info start -->
                        <div class="footer_single_contact_info">
                            <i class="fa ftr-icon fa-map-marker fa-2x" aria-hidden="true"></i>
                            <p>PO Box 16122, Collins Street, Victoria 8007, USA</p>
                        </div>
                        <!-- single contact info start -->
                        <div class="footer_single_contact_info">
                            <i class="fa fa-phone" aria-hidden="true"></i>
                            <a href="tel:+12001234567">+1 200 123 4567</a>
                            <a href="tel:+12001234567">+1 200 123 4567</a>
                        </div>
                        <!-- single contact info start -->
                        <div class="footer_single_contact_info">
                            <i class="fa fa-envelope-o" aria-hidden="true"></i>
                            <a href="mailto:info@yoursite.com">info@yoursite.com</a>
                            <a href="mailto:contact@yoursite.com">contact@yoursite.com</a>
                        </div>
                    </div>
                </div>
                <!-- Contact info Area End -->

                <!-- Useful Links Area Start -->
                <div class="col-12 col-md-6 col-lg-3">
                    <div class="important_links footer-single-part item wow fadeInUp">
                        <div class="title">
                            <h4>useful links</h4>
                        </div>
                        <!-- Links Start -->
                        <div class="links">
                            <p><a href="about-us.html">About Us</a></p>
                            <p><a href="services.html">Our Services</a></p>
                            <p><a href="doctors.html">Our Doctors</a></p>
                            <p><a href="gallery-3-column.html">Gallery</a></p>
                            <p><a href="appointment.html">Appointment</a></p>
                            <p><a href="contact.html">Contact Us</a></p>
                        </div>
                        <!-- Links End -->
                    </div>
                </div>
                <!-- Useful Links Area End -->
				
				<!-- Photostream Area Start -->
                <div class="col-12 col-md-6 col-lg-3">
                    <div class="footer_contact_info footer-single-part item wow fadeInUp">
                        <div class="title">
                            <h4>Instagram Photos</h4>
                        </div>
                        <!-- Photostream start -->
						<div class="instagram-widget">
							<div class="thumbs-outer clearfix">
								<figure class="image-thumb"><img src="img/footer/thumbnail-1.jpg" alt=""><a class="lightbox-image" href="#" title="Image title here"><i class="icon fa fa-plus"></i></a></figure>
								<figure class="image-thumb"><img src="img/footer/thumbnail-2.jpg" alt=""><a class="lightbox-image" href="#" title="Image title here"><i class="icon fa fa-plus"></i></a></figure>
								<figure class="image-thumb"><img src="img/footer/thumbnail-3.jpg" alt=""><a class="lightbox-image" href="#" title="Image title here"><i class="icon fa fa-plus"></i></a></figure>
								<figure class="image-thumb"><img src="img/footer/thumbnail-4.jpg" alt=""><a class="lightbox-image" href="#" title="Image title here"><i class="icon fa fa-plus"></i></a></figure>
								<figure class="image-thumb"><img src="img/footer/thumbnail-5.jpg" alt=""><a class="lightbox-image" href="#" title="Image title here"><i class="icon fa fa-plus"></i></a></figure>
								<figure class="image-thumb"><img src="img/footer/thumbnail-6.jpg" alt=""><a class="lightbox-image" href="#" title="Image title here"><i class="icon fa fa-plus"></i></a></figure>
							</div>
						</div>			
                    </div>
                </div>
                <!-- Photostream Area End -->
            </div>
        </div>

        <!-- Bottom Footer Area Start -->
        <div class="footer_bottom_area">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="footer_bottom wow fadeInDown">
							<div class="copyright">
								<p><span>&copy; MedicLab | All rights reserved | Design By </span><a href="#" target="_blank">DotThemes</a>
							</p>
							</div>
                        </div>
                        <!-- Bottom Footer Copywrite Text Area End -->
                    </div>
                </div>
            </div>
        </div>
        <!-- Bottom Footer Area End -->
    </footer>
    <!-- ===================== Footer Area End ===================== -->

    <!-- ===================== All jQuery Plugins ===================== -->


        						
                <%-- 
                          <div class="send-button" >
							 
								<a href="${pageContext.request.contextPath}/login" target="_parent"><button>Login !</button></a>
								
							</div> --%>
                         
                         </div>
                    </div>
                    
                </div>
                
                    

            
                </div>
                </div>
  
  
 
<%@ include file="javascript_home.jsp"%>
<script>
    $(document).ready(function(){
      var date_input=$('input[name="date"]'); //our date input has the name "date"
      var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
      var options={
        format: 'mm/dd/yyyy',
        container: container,
        todayHighlight: true,
        autoclose: true,
      };
      date_input.datepicker(options);
    })
</script>
	 
</html>

   